<%--<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" UnobtrusiveValidationMode="None" %>
<%-- Add content controls here --%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title></title>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<style>
		body{
			font-family:Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif;
			background-image:url('/images/nus.jpg')
		}
		   .auto-style1 {
			margin-left: 6px;
			background-color: #CCFF99;
		}
		.auto-style2 {
			margin-left: 0px;
		}
		.auto-style3 {
			margin-left: 0px;
		}
		.auto-style4 {
			margin-left: 0px;
		}
		.auto-style5 {
			height: 22px;
		}
		.auto-style6 {
			font-weight: 700;
			font-style: italic;
			background-color: #FFFF99;
			text-align: left;
		}
		.auto-style7 {
			text-align: left;
			margin-left: 0px;
		}
		.auto-style8 {}
	</style>
</head>
<body>
	 <nav class="navbar navbar-expand-sm bg-primary navbar-dark">
  <ul class="navbar-nav">
	<li class="nav-item ">
	  <a class="nav-link " href="Home.aspx">Home</a>
	</li>
	<li class="nav-item">
	  <a class="nav-link active" href="Admin.aspx">Admin</a>
	</li>
	<li class="nav-item">
	  <a class="nav-link" href="UserRegistration.aspx">Client Registration</a>
	</li>
	  <li class="nav-item">
	  <a class="nav-link" href="AppointmentBooking.aspx">Appointment Booking</a>
	</li>
	
	
  </ul>
</nav>

	<div class=" bg-dark rounded-lg" style="margin-top: 100px; opacity:.8;margin-left:500px;padding:50px;color:white;width:400px">
	<form id="form1" runat="server">
	<div class="form-group" style="padding-top:20px">
		<asp:Label ID="lblusername" runat="server" Text="User Name:"></asp:Label>
		<asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvusername" runat="server" ControlToValidate="txtusername" ErrorMessage="please enter user name" ForeColor="Red"></asp:RequiredFieldValidator>
	</div>
		<div class="form-group">
			<asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
			<asp:TextBox ID="txtPassword" runat="server" onclick="this.value=''; this.type='password';"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvpass" runat="server" ControlToValidate="txtPassword" ErrorMessage="please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
		</div>
	   
		 <div class="form-group">
			<%--<asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label>--%>
			 <asp:Button ID="btnlogin" class=" btn btn-primary" runat="server" Text="Login" OnClick="btnlogin_Click" />
			 <asp:Button ID="btncancel" class=" btn btn-danger" runat="server" Text="Cancel" OnClick="btncancel_Click" />
		</div>
		   </div> 
		  <table style="width: 100%; padding-top:10px;color:white"Visible="false">
			<tr>
				<td><asp:Label ID="Label1" runat="server" Text="FirstName" Visible="false"></asp:Label></td>
				<td>
					<asp:TextBox ID="txtFirstName" runat="server" Visible="false"></asp:TextBox></td>
				 </tr> 
			  <tr>
			  <td><asp:Label ID="Label2" runat="server" Text="LastName" Visible="false"></asp:Label></td>
				<td>
					<asp:TextBox ID="txtLastName" runat="server" Visible="false"></asp:TextBox></td>
			</tr>
			<tr>
								<td><asp:Label ID="Label3" runat="server" Text="Age" Visible="false"></asp:Label></td>
				<td>
					<asp:TextBox ID="txtAge" runat="server" Visible="false"></asp:TextBox></td>
				</tr>
			<tr>
			  <td><asp:Label ID="Label4" runat="server" Text="Gender" Visible="false"></asp:Label></td>
				<td>
					<asp:TextBox ID="txtGender" runat="server" Visible="false"></asp:TextBox></td>
			</tr>
			<tr>
				<td><asp:Label ID="Label5" runat="server" Text="HealthIssues" Visible="false"></asp:Label></td>
				<td>
				   <%-- <asp:TextBox ID="txtHealthIssues" runat="server"></asp:TextBox></td>--%>
					 <%-- <asp:Label ID="lblCategory" runat="server" Text="Choose Category:"></asp:Label>--%>
		   <asp:DropDownList ID="DropDownList1" runat="server" Visible="false">
		<asp:ListItem Value="2" Text="--Select--"></asp:ListItem>
				<asp:ListItem Value="1" Text="Yes"></asp:ListItem>
				<asp:ListItem Value="0" Text="No"></asp:ListItem>
		   </asp:DropDownList>
				 </tr>
				 <tr>
			  <td><asp:Label ID="Label6" runat="server" Text="DiseaseInformation" Visible="false"></asp:Label></td>
				<td>
					<asp:TextBox ID="txtDiseaseInformation" runat="server" Visible="false"></asp:TextBox></td>
			</tr>
			 <tr>
				<td><asp:Label ID="Label7" runat="server" Text="PreferedGenderForNursing(If any)" Visible="false"></asp:Label></td>
				<td>
					<%--<asp:TextBox ID="txtprefferedGenderForNursing" runat="server"></asp:TextBox></td>--%>
					<asp:DropDownList ID="txtprefferedGenderForNursing" runat="server" Visible="false">
		<asp:ListItem Value="2" Text="--Select--"></asp:ListItem>
				<asp:ListItem  Value="0" Text="Male"></asp:ListItem>
				<asp:ListItem  Value="1" Text="Female"></asp:ListItem>
		   </asp:DropDownList>
				  </tr>
					   <tr>
			   <td><asp:Label ID="Label10" runat="server" Text="ContactNumber" Visible="false"></asp:Label></td>
				<td>
					<asp:TextBox ID="txtContactNumber" runat="server" Visible="false"></asp:TextBox></td>
			</tr>
			 <tr>
				<td><asp:Label ID="Label9" runat="server" Text="Address" Visible="false"></asp:Label></td>
				<td>
					<asp:TextBox ID="txtAddress" runat="server" Visible="false"></asp:TextBox></td>
				 </tr>
			 <tr>
				 <td><asp:Label ID="Label8" runat="server" Text="Remarks" Visible="false" ></asp:Label></td>
			 
				<td>
					<asp:TextBox ID="txtremarks" TextMode="MultiLine" Height="60px" Width="260px" runat="server" Visible="false"></asp:TextBox></td>
			</tr>
		</table>
		 <div  id="uxgrid" "width: 78%; height: 250px; overflow: scroll" >
			 <asp:Panel ID="gridpanel" Width="1430px" Height="250px" ScrollBars="Both" runat="server" HorizontalAlign="Center">
		<asp:GridView ID="gvshowdata" HorizontalAlign="Center" runat="server" CssClass="auto-style1" Width="1430px" Height="158px" Font-Italic="true" BackColor="#ffff99" scrollbar="both" Font-Size="Medium"   AutoGenerateColumns="False" DataKeyNames="pid" OnSelectedIndexChanged="gvshowdata_SelectedIndexChanged" OnRowDataBound="gvshowdata_RowDataBound"  OnPageIndexChanging="gvshowdata_PageIndexChanging" >
		   
			 <Columns>                
				<%--<asp:CommandField HeaderText="SrNo." ShowSelectButton="false" />--%>
				<asp:BoundField DataField="FirstName" HeaderText="FirstName" />
				<asp:BoundField DataField="LastName" HeaderText="LastName" />
				<%--<asp:TemplateField HeaderText="CATEGORY" SortExpression="Category">
					<ItemTemplate>
						<asp:Label ID ="lblcat" Text= '<%# DataBinder.Eval(Container.DataItem,"Category") %>' runat="server" />
					</ItemTemplate>
				</asp:TemplateField>--%>
				 <asp:BoundField DataField="Age" HeaderText="Age" />
				  <asp:BoundField DataField="Gender" HeaderText="Gender" />
				 <%-- <asp:BoundField DataField="HealthIssues" HeaderText="HealthIssues" />--%>
				  <asp:TemplateField HeaderText="HealthIssues" SortExpression="Category">
					<ItemTemplate>
						<asp:Label ID ="lblcat" Text= '<%# DataBinder.Eval(Container.DataItem,"HealthIssues") %>' runat="server" />
					</ItemTemplate>
				</asp:TemplateField>
				  <asp:BoundField DataField="DiseaseInformation" HeaderText="DiseaseInformation" />
				  <asp:BoundField DataField="Address" HeaderText="Address" />
				  <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" />
				  <asp:BoundField DataField="prefferedGenderForNursing" HeaderText="prefferedGenderForNursing" />
				 <asp:BoundField DataField="remarks" HeaderText="Remarks"/>
							  
				<asp:BoundField DataField="CreatedON" HeaderText="CREATED ON" DataFormatString="{0:dd, MMM yyyy}" />
			</Columns>
		</asp:GridView>
				 </asp:Panel>
		</div>     
	</form>

</div>
</body>
	   
		

</html>
