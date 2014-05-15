<%@ Page Language="vb" AutoEventWireup="false" Codebehind="exam2_2.aspx.vb" Inherits="Chapter4.exam2_2"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>exam2_2</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" src="images/header.jpg"><IMG style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 88px" src="images/menu.gif">
			<DIV style="DISPLAY: inline; Z-INDEX: 103; LEFT: 280px; WIDTH: 344px; POSITION: absolute; TOP: 80px; HEIGHT: 16px"
				ms_positioning="FlowLayout">
				<H1>Tara Store Product List</H1>
			</DIV>
			<asp:Panel id="Panel1" style="Z-INDEX: 104; LEFT: 136px; POSITION: absolute; TOP: 144px" runat="server">Pan
<asp:Xml id="Xml1" runat="server" DocumentSource="products.xml" TransformSource="exam2_2.xsl"></asp:Xml>el</asp:Panel>
			<asp:HyperLink id="linkHome" style="Z-INDEX: 105; LEFT: 640px; POSITION: absolute; TOP: 112px"
				runat="server" NavigateUrl="http://www.tarastore.com">Visit our store!</asp:HyperLink>
		</form>
	</body>
</HTML>
