package model;

public class Customer {
    private int customerID;
    private String customerName;
    private int customerPhone;
    private String customerEmail;
    private String userName;
    private String password;

    public Customer(int customerID, String customerName, int customerPhone, String customerEmail, String userName, String password) {
        this.customerID = customerID;
        this.customerName = customerName;
        this.customerPhone = customerPhone;
        this.customerEmail = customerEmail;
        this.userName = userName;
        this.password = password;
    }

    public Customer() {
    }

    public Customer(String customerName, int customerPhone, String customerEmail, String userName, String password) {
        this.customerName = customerName;
        this.customerPhone = customerPhone;
        this.customerEmail = customerEmail;
        this.userName = userName;
        this.password = password;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public int getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(int customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}