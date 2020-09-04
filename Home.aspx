<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" UnobtrusiveValidationMode="None" %>


   
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<style>
		body{
			font-family:Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif;
			background-image:url('/Images/hos.jpg');
		}
		.container{
	padding: 10px;
	width:400px;
	height: 250px;
}
	</style>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
  <ul class="navbar-nav">
	<li class="nav-item ">
	  <a class="nav-link active" href="#">Home</a>
	</li>
	<li class="nav-item">
	  <a class="nav-link" href="Admin.aspx">Admin</a>
	</li>
	<li class="nav-item">
	  <a class="nav-link" href="UserRegistration.aspx">Client Registration</a>
	</li>
	<li class="nav-item">
	  <a class="nav-link" href="AppointmentBooking.aspx">Appointment Booking</a>
	</li>
	
  </ul>
</nav>
	<br />
	<br />
	<div class="container bg-dark rounded-lg" style="margin-top: 200px;opacity:.8 ;text-align:center;color:white">
	<form id="form1" runat="server">
	
	<div>  
	  
		<table class="auto-style1">  
			<tr>  
				<td colspan="6" style="text-align: center; vertical-align: top; padding-left:70px">  
					<asp:Label ID="Label1" runat="server" Font-Bold="True"  Font-Underline="True" Text="Log In "></asp:Label>  
				</td>  
			</tr>  
			<tr>  
				<td> </td>  
				<td style="text-align: center;padding:10px" class="form-group">  
					<asp:Label ID="Label2" runat="server"  Text="UserId :"></asp:Label>  
				</td>  
				<td style="text-align: center">  
					<asp:TextBox ID="txtPassword" runat="server" ></asp:TextBox> 
                     <asp:RequiredFieldValidator ID="rfvusername" runat="server" ControlToValidate="txtPassword" ErrorMessage="please enter user name" ForeColor="Red"></asp:RequiredFieldValidator> 
				</td>  
				<td> </td>  
				<td> </td>  
				<td> </td>  
			</tr>  
			<tr>  
				<td> </td>  
				<td style='text-align: center;padding:10px' class="form-group" >  
					<asp:Label ID="Label3" runat="server" Text="Password :" ></asp:Label>  
				</td>  
				<td style="text-align: center;padding:10px">  
					<asp:TextBox ID="txtusername" runat="server"  onclick="this.value=''; this.type='password';" TextMode="Password"></asp:TextBox>  
                    <asp:RequiredFieldValidator ID="rfvpass" runat="server" ControlToValidate="txtPassword" ErrorMessage="please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
				</td>  
				<td> </td>  
				<td> </td>  
				<td> </td>  
			</tr>  
		<%--  <tr>
			   <td> </td>  
			   <td style='text-align: center;padding:10px' class="form-group" >
			   <asp:Label ID="lblCategory" runat="server" Text="Choose Category:"></asp:Label>
				   </td>
			  <td>
		   <asp:DropDownList ID="ddlcategory" width="196px" Height="30px" runat="server">
		<asp:ListItem Value="0" Text="--Select--"></asp:ListItem>
				<asp:ListItem Value="1" Text="CareTaker"></asp:ListItem>
				<asp:ListItem Value="2" Text="Patient"></asp:ListItem>
		   </asp:DropDownList>
				   </td>
			  <td> </td>  
				<td> </td>  
				<td> </td>  

		  </tr>--%>
			<tr>  
				<td> </td>  
				<td> </td>  
				<td> </td>  
				<td> </td>  
				<td> </td>  
				<td> </td>  
			</tr>  
			<tr>  
				<td> </td>  
				<td> </td>  
				<td style="text-align: center">  
					<asp:Button ID="Button1" runat="server" BorderStyle="None" class=" btn btn-primary" OnClick="Button1_Click" Text="Log In" />  
				</td>  
				<td> </td>  
				<td> </td>  
				<td> </td>  
			</tr>  
			<tr>  
				<td> </td>  
				<td> </td>  
				<td>  
					<asp:Label ID="Label4" runat="server" Font-Size="X-Large"></asp:Label>  
				</td>  
				<td> </td>  
				<td> </td>  
				<td> </td>  
			</tr>  
		</table>  
	  
	</div>  
	</form>  
</body>  
</html>  
	  
