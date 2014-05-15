<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Ch7Case3.aspx.vb" Inherits="Chapter7.Ch7Case3"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Ch7Case3</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" src="images/header2.jpg"><IMG style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 96px" src="images/menu.gif">
			<asp:datagrid id=dgProducts style="Z-INDEX: 103; LEFT: 152px; POSITION: absolute; TOP: 72px" runat="server" BorderWidth="2px" BorderColor="Black" Font-Names="trebuchet ms" DataSource='<%# DsProducts1 %>' DataMember="Products" DataKeyField="ProductID">
				<AlternatingItemStyle BackColor="Silver"></AlternatingItemStyle>
				<ItemStyle BackColor="White"></ItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="Black"></HeaderStyle>
				<Columns>
					<asp:BoundColumn DataField="Description" HeaderText="Description"></asp:BoundColumn>
					<asp:BoundColumn DataField="ImageName" HeaderText="ImageName"></asp:BoundColumn>
					<asp:BoundColumn DataField="ProductID" HeaderText="ProductID"></asp:BoundColumn>
					<asp:BoundColumn DataField="ProductName" HeaderText="ProductName"></asp:BoundColumn>
					<asp:BoundColumn DataField="UnitCost" ReadOnly="True" HeaderText="UnitCost"></asp:BoundColumn>
				</Columns>
			</asp:datagrid></form>
	</body>
</HTML>
