using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
     String co = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
       // getstoredata();

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection cn = new SqlConnection(co);
            cn.Open();
            string uid = txtpassword.Text;
            string pass = txtusername.Text;
            DataSet ds = new DataSet();
            string qu1 = "select * from Ulogin where UserId='" + uid + "' and Password='" + pass + "'";
            SqlCommand ss = new SqlCommand(qu1, cn);
            SqlDataAdapter da = new SqlDataAdapter(ss);
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
                SqlCommand cmd = new SqlCommand("pr_getpersonaldetails", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@p_mode", 1);
                cmd.Parameters.AddWithValue("@p_remarks", txtremarks.Text);
                cmd.Parameters.AddWithValue("@p_UserName", txtremarks.Text);
                cmd.Parameters.AddWithValue("@p_Password", txtremarks.Text);
                cmd.Parameters.AddWithValue("@p_FirstName", txtFirstName.Text);
                cmd.Parameters.AddWithValue("@p_LastName", txtLastName.Text);
                cmd.Parameters.AddWithValue("@p_Age", txtAge.Text);
                cmd.Parameters.AddWithValue("@p_Gender", txtGender.Text);
                cmd.Parameters.AddWithValue("@p_HealthIssues", ddlcategory.SelectedValue);
                cmd.Parameters.AddWithValue("@p_DiseaseInformation ", txtDiseaseInformation.Text);
                cmd.Parameters.AddWithValue("@p_Address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@p_ContactNumber", txtContactNumber.Text);
                cmd.Parameters.AddWithValue("@p_prefferedGenderForNursing", txtprefferedGenderForNursing.SelectedIndex);
                cmd.Parameters.AddWithValue("@p_CreatedON", DateTime.Now.ToString("yyyy/MM/dd"));

                cmd.ExecuteNonQuery();
                Response.Write("Saved Successsfully!");
                //  getstoredata();
                cn.Close();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
      }
  

  

 

