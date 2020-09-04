<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AppointmentBooking.aspx.cs" Inherits="AppointmentBooking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
    <nav class="navbar navbar-expand-sm bg-primary navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item ">
      <a class="nav-link " href="Home.aspx">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Admin.aspx">Admin</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="UserRegistration.aspx">Client Registration</a>
    </li>
        <li class="nav-item">
      <a class="nav-link active"  href="AppointmentBooking.aspx">Appointment Booking</a>
    </li>
    
  </ul>
</nav>
    <form id="form1" runat="server"  class="center">
    <div >
        <asp:Calendar ID="MyCalendar"  
                      runat="server" 
                      BackColor="Black" 
                      BorderColor="White" 
                      BorderWidth="3px" 
                      Font-Names="sans-serif" 
                      Font-Size="11pt" 
                      ForeColor="yellow" 
                      Height="500px" 
                      NextPrevFormat="FullMonth" 
                      OnDayRender="MyCalendar_DayRender" 
                      OnSelectionChanged="MyCalendar_SelectionChanged" 
                      SelectionMode="DayWeek" 
                      Width="100%">
            <SelectedDayStyle BackColor="#ff1744" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <TodayDayStyle BackColor="#00b0ff" />
            <NextPrevStyle Font-Bold="True" 
                           Font-Size="12pt" 
                           ForeColor="#333333" 
                           VerticalAlign="Bottom" />
            <DayHeaderStyle Font-Bold="True" Font-Size="12pt" />
            <TitleStyle BackColor="White" 
                        BorderColor="Black" 
                        BorderWidth="4px" 
                        Font-Bold="True"
                        Font-Size="12pt" 
                        ForeColor="#333399" />
        </asp:Calendar>
        <br />
        <asp:Label ID="lblDates" runat="server" Font-Size="16pt" ForeColor="#0000ff" Font-Bold="true" ></asp:Label>
    </div>
    </form>
</body>
</html>

