
package com.mycompany.tbad.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import sun.jvm.hotspot.gc.shared.Generation;

@Entity
public class User {
//    This IS chnage Made By ad
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 10 , name = "user_id")
    private int userId;
    @Column(length = 100 , name = "user_name")
    private String userName;
    @Column(length = 100 , name = "user_email")
    private String userEmail;
    @Column(length = 100 , name = "user_password")
    private String userPassoword;
    @Column(length = 10 , name = "user_phone")
    private String userPhone;
    @Column(length = 12 , name = "user_pic")
    private String userPic;
    @Column(length = 100 , name = "user_address")
    private String userAddress;
    @Column(name="user_type")
    private String userType;

    public User(int userId, String userName, String userEmail, String userPassoword, String userPhone, String userPic, String userAddress) {
        this.userId = userId;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassoword = userPassoword;
        this.userPhone = userPhone;
        this.userPic = userPic;
        this.userAddress = userAddress;
    }

    public User(String userName, String userEmail, String userPassoword, String userPhone, String userPic, String userAddress , String userType) {
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassoword = userPassoword;
        this.userPhone = userPhone;
        this.userPic = userPic;
        this.userAddress = userAddress;
        this.userType = userType;
    }

    public User() {
        
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPassoword() {
        return userPassoword;
    }

    public void setUserPassoword(String userPassoword) {
        this.userPassoword = userPassoword;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserPic() {
        return userPic;
    }

    public void setUserPic(String userPic) {
        this.userPic = userPic;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }
    

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", userName=" + userName + ", userEmail=" + userEmail + ", userPassoword=" + userPassoword + ", userPhone=" + userPhone + ", userPic=" + userPic + ", userAddress=" + userAddress + '}';
    }
    
    
    
}
