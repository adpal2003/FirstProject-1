/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.tbad.Servlet;

import com.mycompany.tbad.dao.UserDao;
import com.mycompany.tbad.entity.User;
import com.mycompany.tbad.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tinke
 */
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           String userEmail = request.getParameter("email");
            String userPass = request.getParameter("pass");
            
//            if(userEmail.equals("Tinkesh@gmail.com")&& userPass.equals("123")){
//            
//            System.out.println("Hello Thier YOu Work Is Paid Off");
//            }

       UserDao userDao = new UserDao(FactoryProvider.getFactory());
            User user = userDao.getUserByEmailansPass(userEmail, userPass);
//            System.out.print(user);
            HttpSession httpsession = request.getSession();
            
if(user == null){
//out.print("<h1>not Valid</h1>");
        httpsession.setAttribute("errorMessage" , "Invalid Email or Password");
     response.sendRedirect("Login.jsp");
     return;
       }
else{
// Login
httpsession.setAttribute("current-user" , user);
if(user.getUserType().equals("admin")){
    response.sendRedirect("admin.jsp");
}
else if(user.getUserType().equals("normal")){ 
response.sendRedirect("index.jsp");
}
else{
out.println("we have not identified user type");
}
}
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
