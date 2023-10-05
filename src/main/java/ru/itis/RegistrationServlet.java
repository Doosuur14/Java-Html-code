package ru.itis;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet({"/register"})
public class RegistrationServlet extends HttpServlet {

    private static final String DB_USERNAME = "postgres";
    private static final String DB_PASSWORD = "postgres";
    private static final String DB_URL = "jdbc:postgresql://localhost:5432/Users";
    private static final long serialVersionUID = 1L;

    public RegistrationServlet() {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String pass = req.getParameter("password");
        RequestDispatcher dispatcher = null;
        Connection connection = null;

        try {
            connection = DriverManager.getConnection(DB_URL, DB_USERNAME,DB_PASSWORD);
            PreparedStatement preparedStatement = connection.prepareStatement("insert into users (name,email,password)values (?,?,?) ");
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, pass);
            int rowCount = preparedStatement.executeUpdate();
            if (rowCount > 0) {
                req.setAttribute("status", "Success");
            } else {
                req.setAttribute("status", "Failed");
            }

            dispatcher = req.getRequestDispatcher("Registration.jsp");
            dispatcher.forward(req, resp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
            }
        }
    }
    public void init() throws ServletException {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException var2) {
            throw new RuntimeException(var2);
        }
    }
}
