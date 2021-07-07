package controller;

import dao.Customer.CustomerDAO;
import dao.Customer.ICustomer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    private ICustomer customer = new CustomerDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
//        dispatcher.forward(request, response);
////        RequestDispatcher dispatcher;
//
//        String userName = request.getParameter("userName");
//        String passWord = request.getParameter("passWord");
//        if (userName.equals("admin") && passWord.equals("admin1")) {
//            dispatcher = request.getRequestDispatcher("admin/admin.jsp");
//            dispatcher.forward(request, response);
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "goto":
                goTo(request,response);
                break;
            default:
                showLogin(request,response);
        }
    }

    public   void showLogin(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
        dispatcher.forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String userName = request.getParameter("userName");
//        String passWord = request.getParameter("passWord");
//        boolean check = customer.checkLogin(userName, passWord);
//        HttpSession session = request.getSession();
//        RequestDispatcher dispatcher;
//        if (userName.equals("admin") && passWord.equals("admin1")) {
//            dispatcher = request.getRequestDispatcher("admin/admin.jsp");
//            dispatcher.forward(request, response);
//        } else if (check) {
//            dispatcher = request.getRequestDispatcher("");
//        }
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "goto":
                goTo(request, response);
                break;
        }
    }
    public void goTo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        RequestDispatcher requestDispatcher = request.getRequestDispatcher("admin/admin.jsp");
//        requestDispatcher.forward(request,response);
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");
        boolean check = customer.checkLogin(userName, passWord);
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher;
        if (userName.equals("admin") && passWord.equals("admin1")) {
            dispatcher = request.getRequestDispatcher("admin/admin.jsp");
            dispatcher.forward(request, response);
        } else if (check) {
            dispatcher = request.getRequestDispatcher("");
        }
    }
}
