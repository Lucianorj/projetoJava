package persistence;

import java.util.ArrayList;

import model.Produto;

public class ProdutoDao extends Dao {

	public void cadastrar(Produto prod)throws Exception{
		open();
		
		stmt = con.prepareStatement("insert into produto values(null, ?,?)");
		stmt.setString(1, prod.getNome());
		stmt.setDouble(2, prod.getPreco());
		
		stmt.execute();
		
		close();
	}
	
	public ArrayList<Produto> ObterTodos() throws Exception{
		
		open();
		
		stmt = con.prepareStatement("select * from produto");
		rs = stmt.executeQuery();
	
		ArrayList<Produto> LIstaProdutos = new ArrayList<Produto>();
		
		
		
		while (rs.next()) 
		{
			Produto p = new Produto();
			p.setIdProduto(rs.getInt("id"));
			p.setNome(rs.getString("nome"));
			p.setPreco(rs.getDouble("preco"));
		
			LIstaProdutos.add(p);
		   
		}
		
		close();
		
		return LIstaProdutos;
	}
	
}
