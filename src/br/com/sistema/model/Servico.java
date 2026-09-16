package br.com.sistema.model;

import java.math.BigDecimal;
import java.sql.Date;

public class Servico {

    private int id;
    private String descricao;
    private BigDecimal valor;
    private Date dataServico;
    private int veiculoId;

    public Servico() {
    }

    public Servico(int id, String descricao, BigDecimal valor,
            Date dataServico, int veiculoId) {

        this.id = id;
        this.descricao = descricao;
        this.valor = valor;
        this.dataServico = dataServico;
        this.veiculoId = veiculoId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public BigDecimal getValor() {
        return valor;
    }

    public void setValor(BigDecimal valor) {
        this.valor = valor;
    }

    public Date getDataServico() {
        return dataServico;
    }

    public void setDataServico(Date dataServico) {
        this.dataServico = dataServico;
    }

    public int getVeiculoId() {
        return veiculoId;
    }

    public void setVeiculoId(int veiculoId) {
        this.veiculoId = veiculoId;
    }
}
