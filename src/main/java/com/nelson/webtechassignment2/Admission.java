package com.nelson.webtechassignment2;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/admission")
public class Admission extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response){
        try {
            String Firstname= request.getParameter("fname");
            String Lastname= request.getParameter("lname");
            String email= request.getParameter("Email");
            String Phonenumber= request.getParameter("pnumber");
            String Gend=request.getParameter("gender");
            request.setAttribute("fname","First name"+Firstname);
            request.setAttribute("lname","Last name"+Lastname);
            request.setAttribute("Email","Email"+email);
            request.setAttribute("pnumber","Phone Number"+Phonenumber);
            request.setAttribute("gender","Gender"+Gend);

            RequestDispatcher dispatcher = request.getRequestDispatcher("/preview.jsp");
            dispatcher.forward(request,response);

        }catch (Exception e){
            e.printStackTrace();
            request.setAttribute("error","Error Occured");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/admissionPage.jsp");
            try {
                dispatcher.forward(request,response);
            } catch (ServletException ex) {
                throw new RuntimeException(ex);
            } catch (IOException ex) {
                throw new RuntimeException(ex);
            }
        }
    }
}
