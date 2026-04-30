//data access object: objeto de acesso a dados
//jdbc: java database connectivity
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;
public class PessoaDAO {
    //clausula catch or declare
    public void cadastrar(Pessoa p) throws Exception{
        //1 - definir o comando SQL
        var sql = "INSERT INTO tb_pessoa (nome, fone, email) VALUES (?, ?, ?)";
        //2 - estabelecer uma conexão com o sgbd
        var conexao = ConnectionFactory.obterConexao();
        //3 - preparar o comando
        PreparedStatement ps = conexao.prepareStatement(sql);
        //4 - substituir eventuais placeholders
        ps.setString(1, p.getNome());
        ps.setString(2, p.getFone());
        ps.setString(3, p.getEmail());
        //5 - executar o comando
        ps.execute();
        ps.close();
        conexao.close();
    }
    
    public List <Pessoa> listar() throws Exception{
        //1 - construir uma ista de pessoas
        List<Pessoa> pessoas = new ArrayList<>();
        //2 - definir o comando SQL
        var sql = "SELECT * FROM tb_pessoa";
        //3 - estabelecer uma conexão com o banco
        //4 - preparar o comando
        //try-with-resources
        //5 - substituir eventuais placeholders
        //6 - executar o comando
        try(
            var conexao = ConnectionFactory.obterConexao();
            var ps = conexao.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

        ){
            //7 - tratar o resultado
            rs.next();
            var codigo = rs.getInt("cod_pessoa");
            var nome = rs.getString("nome");
            var fone = rs.getString("fone");
            var email = rs.getString("email");
            var pessoa = new Pessoa (codigo, nome, fone, email);
            pessoas.add(pessoa);

        }
    }
}