using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Home : System.Web.UI.Page
{
           String co = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void dropbtn_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection cn = new SqlConnection(co);
            cn.Open();
            SqlCommand cmd = new SqlCommand("pr_userdetail", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@p_mode", 2);
            cmd.Parameters.AddWithValue("@p_password", txtPassword.Text);
            cmd.Parameters.AddWithValue("@p_username", txtusername.Text);
            //cmd.Parameters.AddWithValue("@p_category", ddlcategory.SelectedValue);
            cmd.Parameters.AddWithValue("@p_sessionid", DBNull.Value);
            cmd.Parameters.AddWithValue("@p_savedate", DBNull.Value);
            cmd.ExecuteNonQuery();
            Response.Redirect("AppointmentBooking.aspx");
            cn.Close();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }


    protected void Button1_Click(object sender, EventArgs e)  
{  
try{  
    SqlConnection cn = new SqlConnection(co);
    string uid = txtPassword.Text;
        string pass = txtusername.Text;  
        cn.Open();  
        string qry = "select * from Ulogin where UserId='" + uid + "' and Password='" + pass + "'";  
        SqlCommand cmd = new SqlCommand(qry,cn);  
        SqlDataReader sdr = cmd.ExecuteReader();  
        if(sdr.Read())  
        {  
            Label4.Text = "Login Sucess......!!";
            Session["UserId"] = txtusername.Text;
            Session["Password"] = txtPassword.Text;
            txtusername.Text = "";
         //   ddlcategory.SelectedIndex = 0;
            Response.Redirect("AppointmentBooking.aspx");
        }  
        else  
        {  
            Label4.Text = "UserId & Password Is not correct Try again..!!";  
  
        }
    
            cn.Close();  
        }  
        catch(Exception ex)  
        {  
            Response.Write(ex.Message);  
        }  
}      
  
}  

 