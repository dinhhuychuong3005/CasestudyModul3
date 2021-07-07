package dao.OrderDetail;

import model.OrderDetail;

import java.sql.SQLException;
import java.util.List;

public interface IOrderDetail {
    public void addOrderDetail(OrderDetail orderDetail) throws SQLException;
    public List<OrderDetail> findAllOrderDetail();
    public List<OrderDetail> searchById(int id);
    public boolean deleteOrderDetail(int id ,int id2) throws SQLException;
}
