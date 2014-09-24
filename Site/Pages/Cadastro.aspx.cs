using DAL.Model;
using DAL.Persistence;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site.Pages
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrarCliente(object sender, EventArgs e)
        {
            try
            {
                Cliente cli = new Cliente();

                cli.Nome        = txtNome.Text;
                cli.Email       = txtEmail.Text;
                cli.DataCadastro = DateTime.Now;

                //Gravando os dados no BD:
                ClienteDAL d = new ClienteDAL();

                if (d.Insert(cli))
                {
                    lblMensagem.Text = "Cliente " + cli.Nome + " gravado com sucesso!";
                }
                else 
                {
                    lblMensagem.Text = "Falha ao Gravar o Cliente!";
                }
            }
            catch (Exception ex)
            {
                lblMensagem.Text = ex.Message;
            } 
        }

        protected void btnLimpar(object sender, EventArgs e)
        {
            txtNome.Text    = string.Empty;
            txtEmail.Text   = string.Empty;
            lblMensagem.Text = string.Empty;
        }
    }
}