<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DataSetProducts.aspx.vb" Inherits="Chapter8.DataSetProducts" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>DataSetProducts</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 100; LEFT: 6px; POSITION: absolute; TOP: 5px" src="images/header.jpg">
			<asp:label id="Label1" style="Z-INDEX: 102; LEFT: 161px; POSITION: absolute; TOP: 55px" runat="server" Font-Size="X-Large" ForeColor="#004040" Font-Names="Bookman Old Style" Font-Italic="True">Tara Store Product List</asp:label>
			<IMG style="Z-INDEX: 101; LEFT: 21px; POSITION: absolute; TOP: 83px" src="images/menu.gif">
			<asp:datagrid id="MyDG" style="Z-INDEX: 103; LEFT: 156px; POSITION: absolute; TOP: 209px" runat="server" DataSource="<%# DataView1 %>" Height="359px" Width="655px">
 
 
</asp:datagrid>
			<asp:Label id="lblSearch" style="Z-INDEX: 104; LEFT: 314px; POSITION: absolute; TOP: 150px" runat="server" Font-Italic="True" Font-Names="Trebuchet MS" ForeColor="#004040" Font-Bold="True">Search:</asp:Label>
			<asp:TextBox id="txtSearch" style="Z-INDEX: 106; LEFT: 392px; POSITION: absolute; TOP: 151px" runat="server"></asp:TextBox>
			<asp:Button id="btnGo" style="Z-INDEX: 107; LEFT: 574px; POSITION: absolute; TOP: 150px" runat="server" Text="Go" CommandName="MyDG_SortCommand"></asp:Button>
			<asp:Label id="Label2" style="Z-INDEX: 108; LEFT: 315px; POSITION: absolute; TOP: 111px" runat="server" Font-Italic="True" Font-Names="Trebuchet MS" ForeColor="#004040" Width="303px" Height="22px" Font-Bold="True">Search for a product name or category</asp:Label>
		</form>
	</body>
</HTML>
