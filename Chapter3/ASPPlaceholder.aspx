<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ASPPlaceholder.aspx.vb" Inherits="Chapter3.ASPPlaceholder" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title></title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<FORM id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 0px" src="images/header.jpg">
			<IMG style="Z-INDEX: 102; LEFT: 17px; POSITION: absolute; TOP: 85px" src="images/menu.gif">
			<asp:panel id="PanelPH" style="Z-INDEX: 103; LEFT: 128px; POSITION: absolute; TOP: 40px" runat="server"
				Width="424px" Height="396px" HorizontalAlign="Center">
				<asp:PlaceHolder id="placeholder" runat="server"></asp:PlaceHolder>
			</asp:panel>
		</FORM>
	</body>
</HTML>
