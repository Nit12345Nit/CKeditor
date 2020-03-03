using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ckeditor_Project
{
    public partial class Editor : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Bind_Editor_Text();
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("Insert into Demo_Text(Text) values(@Text)", con);
                if (con.State != ConnectionState.Open)
                    con.Open();
                cmd.Parameters.AddWithValue("@Text", CKEditor1.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                CKEditor1.Text = "";

            }
            catch (Exception ex) { Response.Write("<script>alert('" + ex.Message + "')</script>"); }
            finally { }
        }

        public void Bind_Editor_Text()
        {
            try
            {
                string strcmd = "select Demo_Text .* from Demo_Text";
                SqlDataAdapter da = new SqlDataAdapter(strcmd, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                gridcategory.DataSource = ds.Tables[0];
                gridcategory.DataBind();
            }
            catch { }

        }
    }
}