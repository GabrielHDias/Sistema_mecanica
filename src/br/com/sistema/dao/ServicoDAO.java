package br.com.sistema.dao;

import br.com.sistema.jdbc.ConnectionFactory;
import br.com.sistema.model.Servico;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ServicoDAO {

    public void salvar(Servico servico) {

        String sql = "INSERT INTO servico "
                + "(descricao, valor, data_servico, veiculo_id) "
                + "VALUES (?, ?, ?, ?)";

        try {
            Connection conexao = ConnectionFactory.getConnection();
            PreparedStatement stmt = conexao.prepareStatement(sql);

            stmt.setString(1, servico.getDescricao());
            stmt.setBigDecimal(2, servico.getValor());
            stmt.setDate(3, servico.getDataServico());
            stmt.setInt(4, servico.getVeiculoId());

            stmt.executeUpdate();

            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void editar(Servico servico) {

        String sql = "UPDATE servico "
                + "SET descricao = ?, valor = ?, "
                + "data_servico = ?, veiculo_id = ? "
                + "WHERE id = ?";

        try {
            Connection conexao = ConnectionFactory.getConnection();
            PreparedStatement stmt = conexao.prepareStatement(sql);

            stmt.setString(1, servico.getDescricao());
            stmt.setBigDecimal(2, servico.getValor());
            stmt.setDate(3, servico.getDataServico());
            stmt.setInt(4, servico.getVeiculoId());
            stmt.setInt(5, servico.getId());

            stmt.executeUpdate();

            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void excluir(int id) {

        String sql = "DELETE FROM servico WHERE id = ?";

        try {
            Connection conexao = ConnectionFactory.getConnection();
            PreparedStatement stmt = conexao.prepareStatement(sql);

            stmt.setInt(1, id);

            stmt.executeUpdate();

            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Servico> listar() {

        String sql = "SELECT id, descricao, valor, "
                + "data_servico, veiculo_id "
                + "FROM servico ORDER BY id";

        List<Servico> servicos = new ArrayList<Servico>();

        try {
            Connection conexao = ConnectionFactory.getConnection();
            PreparedStatement stmt = conexao.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {

                Servico servico = new Servico();

                servico.setId(rs.getInt("id"));
                servico.setDescricao(rs.getString("descricao"));
                servico.setValor(rs.getBigDecimal("valor"));
                servico.setDataServico(rs.getDate("data_servico"));
                servico.setVeiculoId(rs.getInt("veiculo_id"));

                servicos.add(servico);
            }

            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return servicos;
    }
}
