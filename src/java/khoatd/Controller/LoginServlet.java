/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khoatd.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import khoatd.dao.LoginDao;
import khoatd.dto.AccountUserDto;

/**
 *
 * @author DANG KHOA
 */
public class LoginServlet extends HttpServlet {

     private static final String USER = "HomeProductServlet";
    private static final String LOGIN = "Login_1.jsp";
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
     
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher(LOGIN).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
         try {
            HttpSession session = request.getSession();
            
            String u = request.getParameter("txtUser");
            String p = request.getParameter("txtPass");
            
            LoginDao dao = new LoginDao();
             AccountUserDto user = dao.checkLogin(u, p);
            out.println(user);
            if(user != null){
                session.setAttribute("userdata", user);
                response.sendRedirect(USER);
               
            } else {
                request.setAttribute("errormessage", "Incorrect User or Password");
                
                request.getRequestDispatcher(LOGIN).forward(request, response);
            }
        } catch (Exception e) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, e);
            
        }
         
         
        
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
