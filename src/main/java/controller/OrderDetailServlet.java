package controller;

import dao.OrderDetail.OrderDetailDAO;
import model.OrderDetail;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Servlet3", value = "/orderdetail")
public class OrderDetailServlet extends HttpServlet {
    OrderDetailDAO orderDetailDAO = new OrderDetailDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int orderID = Integer.parseInt(request.getParameter("OrderId"));
        System.out.println(orderID);
        List<OrderDetail> orderDetailList = orderDetailDAO.searchOrderDetail(orderID);

        request.setAttribute("orderDetailList",orderDetailList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Orderdetail/Orderdetail.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
