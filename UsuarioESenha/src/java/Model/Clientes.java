package Model;

public class Clientes {

    private int id;
    private String nome;
    private String user;
    private String senha;
    
    public Clientes()
    { }

    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getUser() {
        return user;
    }

    public String getSenha() {
        return senha;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
}
