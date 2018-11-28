/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author hp
 */
public class bookevent extends HttpServlet {

    protected void processRequest(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html;charset=UTF-8");
        PrintWriter out = res.getWriter();
        try{
        String firstname = req.getParameter("fname");
        String lastname = req.getParameter("lname");
        String email = req.getParameter("email");
        String acd = req.getParameter("ac");
        String phone = req.getParameter("phone");
        String eventname = req.getParameter("name");
        String eventvenue = req.getParameter("venue");
        String dt = req.getParameter("dt"); 
        String edetail = req.getParameter("det"); 
   
        
        Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mehak","root","")) {
                Statement st=con.createStatement();
                String query="insert into event2(fname,lname,email,code,phone,ename,evenue,date,detail)"+"values(?,?,?,?,?,?,?,?,?)";
                
                PreparedStatement ps=con.prepareStatement(query);
                ps.setString(1,firstname);
                ps.setString(2,lastname);
                ps.setString(3,email);
                ps.setString(4,acd);
                ps.setString(5,phone);
                ps.setString(6,eventname);
                ps.setString(7,eventvenue);
                ps.setString(8,dt);
                ps.setString(9,edetail);
                
                ps.execute();
            }
       res.sendRedirect("home.jsp");
//        ResultSet rs = ps.executeQuery();
       
}
        catch(Exception e)
        {
        out.println("error!");
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
