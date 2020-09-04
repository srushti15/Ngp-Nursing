<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="Registration" %>

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
			background-image:url('/Images/nus.jpg')

		 
		}
	</style>
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
	  <a class="nav-link active" href="#">Client Registration</a>
	</li>
	<li class="nav-item">
	  <a class="nav-link" href="AppointmentBooking.aspx">Appointment Booking</a>
	</li>

  </ul>
</nav>
	<br />
	<br />
	<form id="form1" runat="server" class="form-group rounded-lg"> 
		
	<div class="container">
		<table style="width: 100%; padding-top:10px;color:white;opacity:0.8" class="table table-dark table-bordered  light table-hover " >
			<tr>
				<td><asp:Label ID="Label11" runat="server"  Text="UserName"></asp:Label></td>
				<td>
					<asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
				 <asp:RequiredFieldValidator ID="rfvusername" runat="server" ControlToValidate="txtusername" ErrorMessage="please set user name" ForeColor="Red"></asp:RequiredFieldValidator>
			</tr>
			 <tr>
				<td><asp:Label ID="Label12" runat="server"  Text="Password"></asp:Label></td>
				<td>
					<asp:TextBox ID="txtpassword" runat="server"></asp:TextBox></td>
				 <br />
	 <asp:RequiredFieldValidator ID="rfvpass" runat="server" ControlToValidate="txtpassword" ErrorMessage="please set password" ForeColor="Red"></asp:RequiredFieldValidator>
			</tr>
			<tr>
				<td><asp:Label ID="Label1" runat="server"  Text="FirstName"></asp:Label></td>
				<td>
					<asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
				 </tr>
			  <tr>
			  <td><asp:Label ID="Label2" runat="server" Text="LastName"></asp:Label></td>
				<td>
					<asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
			</tr>
			<tr>
								<td><asp:Label ID="Label3" runat="server" Text="Age"></asp:Label></td>
				<td>
					<asp:TextBox ID="txtAge" runat="server"></asp:TextBox></td>
				</tr>
			<tr>
			  <td><asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label></td>
				<td>
					<asp:TextBox ID="txtGender" runat="server"></asp:TextBox></td>
			</tr>
			<tr>
				<td><asp:Label ID="Label5" runat="server" Text="HealthIssues"></asp:Label></td>
				<td>
				   <%-- <asp:TextBox ID="txtHealthIssues" runat="server"></asp:TextBox></td>--%>
					 <%-- <asp:Label ID="lblCategory" runat="server" Text="Choose Category:"></asp:Label>--%>
		   <asp:DropDownList ID="ddlcategory" runat="server">
		<asp:ListItem Value="2" Text="--Select--"></asp:ListItem>
				<asp:ListItem Value="1" Text="Yes"></asp:ListItem>
				<asp:ListItem Value="0" Text="No"></asp:ListItem>
		   </asp:DropDownList>
				 </tr>
				 <tr>
			  <td><asp:Label ID="Label6" runat="server" Text="DiseaseInformation"></asp:Label></td>
				<td>
					<asp:TextBox ID="txtDiseaseInformation" runat="server"></asp:TextBox></td>
			</tr>
			 <tr>
				<td><asp:Label ID="Label7" runat="server" Text="PreferedGenderForNursing(If any)" ></asp:Label></td>
				<td>
					<%--<asp:TextBox ID="txtprefferedGenderForNursing" runat="server"></asp:TextBox></td>--%>
					<asp:DropDownList ID="txtprefferedGenderForNursing" runat="server">
		<asp:ListItem Value="2" Text="--Select--"></asp:ListItem>
				<asp:ListItem  Text="Male"></asp:ListItem>
				<asp:ListItem  Text="Female"></asp:ListItem>
		   </asp:DropDownList>
				  </tr>
					   <tr>
			   <td><asp:Label ID="Label10" runat="server" Text="ContactNumber"></asp:Label></td>
				<td>
					<asp:TextBox ID="txtContactNumber" runat="server"></asp:TextBox></td>
			</tr>
			 <tr>
				<td><asp:Label ID="Label9" runat="server" Text="Address"></asp:Label></td>
				<td>
					<asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
				 </tr>
			 <tr>
				 <td><asp:Label ID="Label8" runat="server" Text="Remarks" ></asp:Label></td>
			 
				<td>
					<asp:TextBox ID="txtremarks" TextMode="MultiLine" Height="60px" Width="260px" runat="server"></asp:TextBox></td>
			</tr>
		</table>
		<div class="text-center">
					<%--<asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label>--%>
			 <asp:Button ID="btnSubmit" class=" btn btn-primary" runat="server" Text="Submit" OnClick="btnlogin_Click" />
			 <asp:Button ID="btnCancel" class="btn btn-danger"  runat="server" Text="Cancel" />
			</div>

		<%--<div style="width: 78%; height: 250px; overflow: scroll" visible="false">
		<asp:GridView ID="gvshowdata" runat="server" CssClass="auto-style1" Width="1016px" Height="158px" visible="false"  AutoGenerateColumns="False" DataKeyNames="pid" OnSelectedIndexChanged="gvshowdata_SelectedIndexChanged" OnRowDataBound="gvshowdata_RowDataBound"  OnPageIndexChanging="gvshowdata_PageIndexChanging" >
		   
			 <Columns>                
				<asp:CommandField HeaderText="SELECT" ShowSelectButton="True" />
				<asp:BoundField DataField="FirstName" HeaderText="FirstName" />
				<asp:BoundField DataField="LastName" HeaderText="LastName" />
				<%--<asp:TemplateField HeaderText="CATEGORY" SortExpression="Category">
					<ItemTemplate>
						<asp:Label ID ="lblcat" Text= '<%# DataBinder.Eval(Container.DataItem,"Category") %>' runat="server" />
					</ItemTemplate>
				</asp:TemplateField>
				 <asp:BoundField DataField="Age" HeaderText="Age" />
				  <asp:BoundField DataField="Gender" HeaderText="Gender" />
				  <asp:BoundField DataField="HealthIssues" HeaderText="HealthIssues" />
				  <asp:BoundField DataField="DiseaseInformation" HeaderText="DiseaseInformation" />
				  <asp:BoundField DataField="Address" HeaderText="Address" />
				  <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" />
				  <asp:BoundField DataField="prefferedGenderForNursing" HeaderText="prefferedGenderForNursing" />
				 <asp:BoundField DataField="remarks" HeaderText="Remarks"/>
							  
				<asp:BoundField DataField="CreatedON" HeaderText="CREATED ON" DataFormatString="{0:dd, MMM yyyy}" />
			</Columns>
		</asp:GridView>
		</div>     --%>
		</div>
	</form>
</body>
</html>
