using System;
using System.Data;
using System.Data.SqlClient;

namespace VoyageurMarocain_ASP
{
    public partial class contact : System.Web.UI.Page
    {
        string str = @"Data Source=DESKTOP-3HOM7H2\SQLEXPRESS;Initial Catalog=VoyageurDB;Integrated Security=True;TrustServerCertificate=True";
        protected void btnEnvoyer_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cnx = new SqlConnection(str);
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Contacts", cnx);
                SqlCommandBuilder cb = new SqlCommandBuilder(da);
                DataSet ds = new DataSet();

                da.Fill(ds, "Contacts");
                DataRow row = ds.Tables["Contacts"].NewRow();

                row["Nom"] = txtNom.Value;
                row["Email"] = txtEmail.Value;
                row["Telephone"] = txtTel.Value;
                row["Message"] = txtMsg.Value;

                ds.Tables["Contacts"].Rows.Add(row);
                da.Update(ds, "Contacts");

                Response.Write("<script>alert('Votre message a bien été enregistré dans la base de données !');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Erreur : " + ex.Message + "');</script>");
            }
        }
    }
}