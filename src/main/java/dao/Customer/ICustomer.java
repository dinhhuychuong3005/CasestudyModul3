package dao.Customer;

import model.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomer {
    List<Customer> findAll()throws SQLException ;
    void  add(Customer customer) throws SQLException;
    List<Customer> findByName(String customerName) throws SQLException;
    Customer findByID(int customerId) throws SQLException;
    Customer findByPhone(int phone) throws SQLException;
    void update(Customer customer) throws SQLException;
    void deleteById(int customerID);
    boolean checkLogin(String username, String password);

}
