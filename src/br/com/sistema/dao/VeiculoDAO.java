package br.com.sistema.dao;

import br.com.sistema.jdbc.ConnectionFactory;
import br.com.sistema.model.Veiculo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class VeiculoDAO {

    public void salvar(Veiculo veiculo) {

        String sql = "INSERT INTO veiculo (placa, modelo, marca, cliente_id) "
                + "VALUES (?, ?, ?, ?)";

        try {
            Connection conexao = ConnectionFactory.getConnection();
            PreparedStatement stmt = conexao.prepareStatement(sql);

            stmt.setString(1, veiculo.getPlaca());
            stmt.setString(2, veiculo.getModelo());
            stmt.setString(3, veiculo.getMarca());
            stmt.setInt(4, veiculo.getClienteId());

            stmt.executeUpdate();

            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void editar(Veiculo veiculo) {

        String sql = "UPDATE veiculo "
                + "SET placa = ?, modelo = ?, marca = ?, cliente_id = ? "
                + "WHERE id = ?";

        try {
            Connection conexao = ConnectionFactory.getConnection();
            PreparedStatement stmt = conexao.prepareStatement(sql);

            stmt.setString(1, veiculo.getPlaca());
            stmt.setString(2, veiculo.getModelo());
            stmt.setString(3, veiculo.getMarca());
            stmt.setInt(4, veiculo.getClienteId());
            stmt.setInt(5, veiculo.getId());

            stmt.executeUpdate();

            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean excluir(int id) {

        String sql = "DELETE FROM veiculo WHERE id = ?";

        try {
            Connection conexao = ConnectionFactory.getConnection();
            PreparedStatement stmt = conexao.prepareStatement(sql);

            stmt.setInt(1, id);

            stmt.executeUpdate();

            stmt.close();
            conexao.close();

            return true;

        } catch (SQLException e) {
            return false;
        }
    }

    public List<Veiculo> listar() {

        String sql = "SELECT id, placa, modelo, marca, cliente_id "
                + "FROM veiculo ORDER BY id";

        List<Veiculo> veiculos = new ArrayList<Veiculo>();

        try {
            Connection conexao = ConnectionFactory.getConnection();
            PreparedStatement stmt = conexao.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {

                Veiculo veiculo = new Veiculo();

                veiculo.setId(rs.getInt("id"));
                veiculo.setPlaca(rs.getString("placa"));
                veiculo.setModelo(rs.getString("modelo"));
                veiculo.setMarca(rs.getString("marca"));
                veiculo.setClienteId(rs.getInt("cliente_id"));

                veiculos.add(veiculo);
            }

            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return veiculos;
    }
}
