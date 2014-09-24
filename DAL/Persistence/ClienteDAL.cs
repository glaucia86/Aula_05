using DAL.Model;
using DAL.Persistence;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Persistence
{
    public class ClienteDAL : Conexao
    {
        //Método Insert:
        public bool Insert(Cliente c)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("insert into Cliente(Nome, Email, DataCadastro) values(@nome, @email, @data_cadastro)", Con);

                Cmd.Parameters.AddWithValue("@nome", c.Nome);
                Cmd.Parameters.AddWithValue("@email", c.Email);
                Cmd.Parameters.AddWithValue("@data_cadastro", c.DataCadastro);

                return Cmd.ExecuteNonQuery() > 0;
            }
            catch (Exception e)
            {
                throw new Exception("\tErro ao inserir dados no BD" + e.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        //Método Select:
        public List<Cliente> Select()
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select * from Cliente order by DataCadastro desc", Con);
                Dr = Cmd.ExecuteReader();

                List<Cliente> lista = new List<Cliente>();

                while (Dr.Read())
                {
                    Cliente c = new Cliente();

                    c.IdCliente = Convert.ToInt32(Dr["IdCliente"]);
                    c.Nome = Convert.ToString(Dr["Nome"]);
                    c.Email = Convert.ToString(Dr["Email"]);
                    c.DataCadastro = Convert.ToDateTime(Dr["DataCadastro"]);

                    lista.Add(c);
                }
                return lista;
            }
            catch (Exception e)
            {
                throw new Exception("\tErro ao selecionar os clientes do BD " + e.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
