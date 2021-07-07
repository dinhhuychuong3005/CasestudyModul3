package controller;

import dao.Customer.CustomerDAO;
import model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customers")
public class CustomerServlet extends HttpServlet {
    CustomerDAO customerDAO=new CustomerDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreatePage(request, response);
                break;
            case "view":
                showViewPage(request, response);
                break;
            case "search":
                showSearchPage(request, response);
                break;
            default:
                showListPage(request, response);
        }
    }

    private void showCreatePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/create.jsp");
        requestDispatcher.forward(request, response);
    }

    private void showViewPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/view.jsp");
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            Customer customer = customerDAO.findByID(id);
            request.setAttribute("customer", customer);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        requestDispatcher.forward(request, response);
    }

    private void showSearchPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/list.jsp");
        String key = request.getParameter("customerName");
        try {
            List<Customer> customers = customerDAO.findByName(key);
            request.setAttribute("customers", customers);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        requestDispatcher.forward(request, response);

    }

    private void showListPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/list.jsp");
        try {
            List<Customer> customers = customerDAO.findAll();
            request.setAttribute("customers", customers);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                addCustomer(request, response);
                break;
            default:
                showListPage(request,response);
        }

    }

    private void addCustomer(HttpServletRequest request, HttpServletResponse response) {
        String customerName = request.getParameter("customerName");
        int customerPhone= Integer.parseInt(request.getParameter("customerPhone"));
        String customerEmail=request.getParameter("customerEmail");
        String userName=request.getParameter("userName");
        String password= request.getParameter("password");
        try {
            customerDAO.add(new Customer(customerName,customerPhone,customerEmail,userName,password));
            try {
                showListPage(request,response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

}
