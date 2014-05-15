<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Ch4Case2.aspx.vb" Inherits="Chapter4.Ch4Case2" %>
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
			<asp:Panel id="Panel1" style="Z-INDEX: 103; LEFT: 176px; POSITION: absolute; TOP: 160px" runat="server"
				Width="557px" Height="287px">
				<asp:Xml id="Xml1" runat="server" TransformSource="Ch4Case2.xsl" DocumentSource="Ch4Case2.xml"></asp:Xml>
			</asp:Panel>
			<IMG style="Z-INDEX: 104; LEFT: 664px; POSITION: absolute; TOP: 64px" src="images/logo.gif">
			<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: large; Z-INDEX: 105; LEFT: 176px; WIDTH: 464px; COLOR: #044404; FONT-FAMILY: Arial; POSITION: absolute; TOP: 72px; HEIGHT: 80px"
				ms_positioning="FlowLayout">
				<P>Tara Store<BR>
					Product Catalogue with Images</P>
			</DIV>
		</form>
	</body>
</HTML>
