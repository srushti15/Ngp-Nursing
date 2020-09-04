//using System;
//using System.Data;
//using System.Configuration;
//using System.Collections;
//using System.Web;
//using System.Web.Security;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Web.UI.WebControls.WebParts;
//using System.Web.UI.HtmlControls;

//public partial class AppointmentBooking : System.Web.UI.Page
//{
//    String co = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;


//    protected void Page_Load(object sender, EventArgs e)
//    {
        
//    }


//}

using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AppointmentBooking : System.Web.UI.Page
{
    DateTime dtvalue;
    String co = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    protected void MyCalendar_SelectionChanged(object sender, EventArgs e)
  {
    
    lblDates.Text = "You selected these dates:<br />";

    foreach (DateTime dt in MyCalendar.SelectedDates)
    {
      lblDates.Text += dt.ToLongDateString() + "<br />";
       
    }
    dtvalue = MyCalendar.SelectedDate;
  }
  protected void MyCalendar_DayRender(object sender, DayRenderEventArgs e)
  {
   // if (e.Day.Date.Day == 28 && e.Day.Date.Month == 2)
    {
      ;
        SqlConnection cn = new SqlConnection(co);
        cn.Open();
        DataSet ds = new DataSet();
        string qu1 = "insert into userdetail (username,	password,category,	savedate)  values ( ' " + Session["UserId"] + " ', ' " + Session["Password"] + "',null, ' " + dtvalue + "')";
        SqlCommand ss = new SqlCommand(qu1, cn);
        SqlDataAdapter da = new SqlDataAdapter(ss);
        //da.Fill(ds);
      e.Cell.BackColor = System.Drawing.Color.Yellow;
      Label lbl = new Label();
      //lbl.Text = "<br />My Birthday!";
      e.Cell.Controls.Add(lbl);
  
      
    }


  }
}













