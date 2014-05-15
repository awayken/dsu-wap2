<%@ Page Language="vb" AutoEventWireup="false" Codebehind="listproducts.aspx.vb" Inherits="Chapter4.listproducts" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>listproducts</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 5px; POSITION: absolute; TOP: 6px" src="images/header.jpg"><IMG style="Z-INDEX: 102; LEFT: 11px; POSITION: absolute; TOP: 95px" src="images/menu.gif">
			<asp:Panel id="Panel1" style="Z-INDEX: 103; LEFT: 135px; POSITION: absolute; TOP: 261px" runat="server"
				Width="557px" Height="287px">
				<asp:Xml id="Xml1" runat="server" DocumentSource="products.xml" TransformSource="listproducts.xsl"></asp:Xml>
			</asp:Panel><IMG style="Z-INDEX: 104; LEFT: 140px; POSITION: absolute; TOP: 54px" src="images/giftfinder.jpg">
		</form>
	</body>
</HTML>
