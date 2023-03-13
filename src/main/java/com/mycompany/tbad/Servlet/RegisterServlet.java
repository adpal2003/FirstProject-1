
package com.mycompany.tbad.Servlet;

import com.mycompany.tbad.entity.User;
import com.mycompany.tbad.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;


public class RegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

          
            try{
            String userName =  request.getParameter("name");
            String userEmail =  request.getParameter("email");
            String userPasswordEnter  = request.getParameter("password");
            String userConfPasswordEnter =  request.getParameter("confirm_password");
            String userPhone =  request.getParameter("phone");
            String userAddress =  request.getParameter("address");
            
            if(userPasswordEnter == null ? userConfPasswordEnter != null : !userPasswordEnter.equals(userConfPasswordEnter)){
            out.println("PassWord Is Not Matching");
            return;
            }
            
            User user =  new User( userName,  userEmail,  userPasswordEnter,  userPhone,  "defult.pic",  userAddress , "normal");
            
                Session hibernateSession = FactoryProvider.getFactory().openSession();
            
              Transaction txxxx = hibernateSession.beginTransaction();
//            txxxx.c

           int userId = (int)hibernateSession.save(user); 
            txxxx.commit();
            hibernateSession.close();
            
            out.println("<h1>succecs saved</h1>");
            out.println("<br>" + userId);
            
            
            }
            catch(Exception e){
            e.printStackTrace();
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
