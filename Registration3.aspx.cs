using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Registria3
{
    public partial class Registration3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=RADHAKRISHNA;Initial Catalog=Register4;Trusted_Connection=true");
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
           // SqlConnection con = new SqlConnection("Data Source=RADHAKRISHNA;Initial Catalog=Register4;Trusted_Connection=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Registerdetails values('" + txtFirstname.Text + "','" + txtLastname.Text + "','" + txtEmail.Text + "','" + txtpassword.Text + "','" + txtconfirmpassword.Text + "','" + txtmobilenumber.Text + "')", con);
            cmd.ExecuteNonQuery();
            BindGrid(con);
            Clear();
            con.Close();
           
        }
        private void Clear()
        {
            txtFirstname.Text = "";
            txtLastname.Text = "";
            txtEmail.Text = "";
            txtpassword.Text = "";
            txtconfirmpassword.Text = "";
            txtmobilenumber.Text = "";
        }
        private void BindGrid(SqlConnection con)
        {
            SqlDataAdapter da = new SqlDataAdapter("select *from Registerdetails", con);
            DataSet  ds=new DataSet();
            da.Fill(ds);
            grdData.DataSource = ds;
            grdData.DataBind();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
          //  SqlConnection con = new SqlConnection("Data Source=RADHAKRISHNA;Initial Catalog=Register4;Trusted_Connection=true");
            con .Open();
            SqlCommand cmd = new SqlCommand("update Registerdetails set mobile='" + txtmobilenumber.Text + "' where Firstname='" + txtFirstname.Text + "'", con);
            cmd.ExecuteNonQuery();
            Clear();
            BindGrid(con);
            con.Close();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
          //  SqlConnection con = new SqlConnection("Data Source=RADHAKRISHNA;Initial Catalog=Register4;Trusted_Connection=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete Registerdetails where Firstname='" + txtFirstname.Text + "'", con);
            cmd.ExecuteNonQuery();
            Clear();
            BindGrid(con);
            con.Close();
        }
    }
}