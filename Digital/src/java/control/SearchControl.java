/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dal.DigitalDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Digital;

/**
 *
 * @author quannhe130577
 */
public class SearchControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    /*
    purpose : searchNewsByKeyWord news 
    author: quanndhe130577
    time : 03/2020
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String keyWord = request.getParameter("txtSearch");
            String currentPage_str = request.getParameter("currentPage");
            // if currentPage_str is null
            if(currentPage_str==null){
                currentPage_str = "1";
            }
            int currentPage = Integer.parseInt(currentPage_str);
            DigitalDAO digitalDAO = new DigitalDAO();
            // countNewsByKeyword number of news searched in database
            int total = digitalDAO.countNewsByKeyword(keyWord);
            int pageSize = 2;
            // find number_of_page
            int number_of_page = total/pageSize;
            if(total % pageSize !=0){
                number_of_page++;
            }
            //find news in database
            List<Digital> listSearch = digitalDAO.searchNewsByKeyWord(keyWord, currentPage, pageSize);
            request.setAttribute("list_search", listSearch);
            request.setAttribute("number_of_page", number_of_page);
            request.setAttribute("keyWord", keyWord);
            request.setAttribute("currentPage", currentPage);
            request.getRequestDispatcher("SearchResultPage.jsp").forward(request, response);
        } catch (Exception e) {
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
