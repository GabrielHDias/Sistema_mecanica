package br.com.sistema.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

    private static final String URL
            = "jdbc:postgresql://localhost:5432/sistema_mecanica";

    private static final String USER = "sistema_mecanica";

    private static final String PASSWORD = "123456";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
