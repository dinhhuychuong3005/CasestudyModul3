package dao.Customer;
import dao.SQL.SQLConnection;
import model.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO implements ICustomer {
    SQLConnection sqlConnection=new SQLConnection();
    private String FIND_ALL="SELECT * FROM customer";
    private String ADD = "INSERT INTO customer VALUES (?, ?, ? ,? ,? ,?);";
    private String FIND_BY_NAME = "SELECT * FROM customer WHERE name LIKE ?";
    private String UPDATE = "DELETE From customer WHERE customerID = ?";
    String DELETE = "DELETE From customer WHERE customerID = ?";
    String FIND_BY_ID = "SELECT * FROM customer WHERE customerID = ?";

    @Override
    public List<Customer> findAll() throws SQLException {
        List<Customer>customers=new ArrayList<>();
        Connection connection= sqlConnection.getConnection();
        PreparedStatement preparedStatement=connection.prepareStatement(FIND_ALL);
        ResultSet resultSet= preparedStatement.executeQuery();
        while (resultSet.next()){
            int customerID=resultSet.getInt("customerID");
            String customerName =resultSet.getString("customerName");
            int customerPhone=resultSet.getInt("customerPhone");
            String customerEmail=resultSet.getString("customerEmail");
            String userName=resultSet.getString("userName");
            String password=resultSet.getString("password");
            customers.add(new Customer(customerID,customerName,customerPhone,customerEmail,userName,password));
        }
        return customers;
    }

    @Override
    public void add(Customer customer) throws SQLException {
        Connection connection=sqlConnection.getConnection();
        PreparedStatement preparedStatement=connection.prepareStatement(ADD);
        extracted(customer, preparedStatement);
        preparedStatement.executeUpdate();
    }

    private void extracted(Customer customer, PreparedStatement preparedStatement) throws SQLException {
        preparedStatement.setInt(1, customer.getCustomerID());
        preparedStatement.setString(2, customer.getCustomerName());
        preparedStatement.setInt(3, customer.getCustomerPhone());
        preparedStatement.setString(4, customer.getCustomerEmail());
        preparedStatement.setString(5, customer.getUserName());
        preparedStatement.setString(6, customer.getPassword());

    }

    @Override
    public List<Customer> findByName(String customerName) throws SQLException {
        List<Customer>customers=new ArrayList<>();
        Connection connection=sqlConnection.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement(FIND_BY_NAME);
            preparedStatement.setString(1,"%"+ customerName+"%");
            ResultSet resultSet= preparedStatement.executeQuery();
            while (resultSet.next()){
                int customerID=resultSet.getInt("customerID");
                 customerName = resultSet.getString("customerName");
                int customerPhone=resultSet.getInt("customerPhone");
                String customerEmail=resultSet.getString("customerEmail");
                String userName=resultSet.getString("userName");
                String password=resultSet.getString("password");
                customers.add(new Customer(customerID,customerName,customerPhone,customerEmail,userName,password));
            }
            return  customers;
    }

    @Override
    public Customer findByID(int customerId) throws SQLException {
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
        preparedStatement.setInt(1,customerId);
        ResultSet resultSet=preparedStatement.executeQuery();
        while (resultSet.next()){
            int customerID=resultSet.getInt("customerID");
            String customerName = resultSet.getString("customerName");
            int customerPhone=resultSet.getInt("customerPhone");
            String customerEmail=resultSet.getString("customerEmail");
            String userName=resultSet.getString("userName");
            String password=resultSet.getString("password");
            return new  Customer(customerID,customerName,customerPhone,customerEmail,userName,password);
        }
        return null;
    }

    @Override
    public Customer findByPhone(int phone) throws SQLException {
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
        preparedStatement.setInt(1,phone);
        ResultSet resultSet=preparedStatement.executeQuery();
        while (resultSet.next()){
            int customerID=resultSet.getInt("customerID");
            String customerName = resultSet.getString("customerName");
            int customerPhone=resultSet.getInt("customerPhone");
            String customerEmail=resultSet.getString("customerEmail");
            String userName=resultSet.getString("userName");
            String password=resultSet.getString("password");
            return new  Customer(customerID,customerName,customerPhone,customerEmail,userName,password);
        }
        return null;
    }

    @Override
    public void update(Customer customer) throws SQLException {
        Connection connection= sqlConnection.getConnection();
        PreparedStatement preparedStatement=connection.prepareStatement(UPDATE);
        extracted(customer, preparedStatement);
        preparedStatement.executeUpdate();
    }

    @Override
    public void deleteById(int customerID) {
        Connection connection= sqlConnection.getConnection();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(DELETE);
            preparedStatement.setInt(1,customerID);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public boolean checkLogin(String username, String password) {
        boolean isValid = false;
        try {
            Connection connection = sqlConnection.getConnection();
            String sql = "select * from customers where userName = ? and password = ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                isValid = true;
            }else {
                isValid = false;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return isValid;
    }
}
