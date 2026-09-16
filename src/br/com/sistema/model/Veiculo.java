package br.com.sistema.model;

public class Veiculo {

    private int id;
    private String placa;
    private String modelo;
    private String marca;
    private int clienteId;

    public Veiculo() {
    }

    public Veiculo(int id, String placa, String modelo,
            String marca, int clienteId) {

        this.id = id;
        this.placa = placa;
        this.modelo = modelo;
        this.marca = marca;
        this.clienteId = clienteId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public int getClienteId() {
        return clienteId;
    }

    public void setClienteId(int clienteId) {
        this.clienteId = clienteId;
    }
}
