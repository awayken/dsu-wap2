<%@ Page Language="vb" AutoEventWireup="false" Codebehind="EditCat.aspx.vb" Inherits="Chapter8.EditCat" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>EditCat</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 100; LEFT: 14px; POSITION: absolute; TOP: 85px" src="images/menu.gif">
			<asp:label id="MyLabel" style="Z-INDEX: 105; LEFT: 166px; POSITION: absolute; TOP: 100px" runat="server"
				ForeColor="#004040" Font-Names="Trebuchet MS" Font-Italic="True" Font-Bold="True" Height="22px"
				Width="421px">Edit a category</asp:label>
			<asp:label id="Label1" style="Z-INDEX: 104; LEFT: 167px; POSITION: absolute; TOP: 52px" runat="server"
				ForeColor="#004040" Font-Names="Bookman Old Style" Font-Italic="True" Font-Size="X-Large">Tara Store Edit a Category</asp:label>
			<asp:datagrid id="MyDG" style="Z-INDEX: 103; LEFT: 161px; POSITION: absolute; TOP: 139px" runat="server" Font-Names="Verdana" Height="134px" Width="599px" Font-Size="8pt" HeaderStyle-BackColor="#aaaadd" Font-Name="Verdana" CellPadding="3" BorderWidth="1px" BorderColor="Black" DataSource="<%# DS_EditCat1 %>" DataKeyField="CategoryID" DataMember="Categories">
				<HeaderStyle BackColor="#AAAADD"></HeaderStyle>
				<Columns>
					<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
				</Columns>
			</asp:datagrid>
			<IMG style="Z-INDEX: 101; LEFT: 4px; POSITION: absolute; TOP: 2px" src="images/header.jpg">
		</form>
	</body>
</HTML>
