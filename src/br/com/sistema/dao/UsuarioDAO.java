package br.com.sistema.dao;

import br.com.sistema.jdbc.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {

    public boolean autenticar(String username, String senha) {

        String sql = "SELECT id FROM usuario "
                + "WHERE username = ? AND senha = ?";

        try {
            Connection conexao = ConnectionFactory.getConnection();
            PreparedStatement stmt = conexao.prepareStatement(sql);

            stmt.setString(1, username);
            stmt.setString(2, senha);

            ResultSet rs = stmt.executeQuery();

            boolean encontrado = rs.next();

            rs.close();
            stmt.close();
            conexao.close();

            return encontrado;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
