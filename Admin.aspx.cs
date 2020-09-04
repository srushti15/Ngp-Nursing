using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin : System.Web.UI.Page
{
    String co = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        gvshowdata.Visible = false;
        
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection cn = new SqlConnection(co);
            cn.Open();
           
            SqlCommand cmd = new SqlCommand("pr_userdetail", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@p_mode", 0);
            cmd.Parameters.AddWithValue("@p_password", txtPassword.Text);
            cmd.Parameters.AddWithValue("@p_username", txtusername.Text);
            cmd.Parameters.AddWithValue("@p_category", txtprefferedGenderForNursing.SelectedValue);
            cmd.Parameters.AddWithValue("@p_sessionid", DBNull.Value);

            cmd.ExecuteNonQuery();
            gvshowdata.Visible = true;
            Response.Write("Login Successsfully!");
            getstoredata();
            cn.Close();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }

    protected void gvshowdata_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {



            int index = gvshowdata.SelectedIndex;

            //lblid.Text = gvshowdata.DataKeys[index].Value.ToString();

               }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
    protected void gvshowdata_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            System.Data.DataRow dr = ((System.Data.DataRowView)e.Row.DataItem).Row;

            if (dr["HealthIssues"].ToString() == "0")
            {
                ((Label)e.Row.FindControl("lblcat")).Text = "Male";
            }
            else if (dr["HealthIssues"].ToString() == "2")
            {
                ((Label)e.Row.FindControl("lblcat")).Text = "Female";
            }
            
           
        }
    }
    protected void getstoredata()
    {
        try
        {
            SqlConnection cn = new SqlConnection(co);
            cn.Open();

            SqlCommand cmd = new SqlCommand("pr_getpersonaldetails", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@p_mode", 4);
            cmd.Parameters.AddWithValue("@p_remarks", txtremarks.Text);
            cmd.Parameters.AddWithValue("@p_FirstName", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@p_LastName", txtLastName.Text);
            cmd.Parameters.AddWithValue("@p_Age", txtAge.Text);
            cmd.Parameters.AddWithValue("@p_Gender", txtGender.Text);
            cmd.Parameters.AddWithValue("@p_HealthIssues", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@p_DiseaseInformation ", txtDiseaseInformation.Text);
            cmd.Parameters.AddWithValue("@p_Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@p_ContactNumber", txtContactNumber.Text);
            cmd.Parameters.AddWithValue("@p_prefferedGenderForNursing", txtprefferedGenderForNursing.SelectedIndex);
            cmd.Parameters.AddWithValue("@p_CreatedON", DateTime.Now.ToString("yyyy/MM/dd"));


            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            cmd.ExecuteNonQuery();
            DataSet ds = new DataSet();
            sda.Fill(ds);
            gvshowdata.DataSource = ds;
            gvshowdata.DataBind();
            cn.Close();

        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void gvshowdata_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvshowdata.PageIndex = e.NewPageIndex;
        gvshowdata.DataBind();
        getstoredata();
    }






    protected void btncancel_Click(object sender, EventArgs e)
    {
        try
        {
            txtusername.Text = "";
            txtPassword.Text = "";
            Response.Redirect("Admin.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
}



