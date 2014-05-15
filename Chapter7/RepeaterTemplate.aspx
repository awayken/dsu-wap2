<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RepeaterTemplate.aspx.vb" Inherits="Chapter7.RepeaterTemplate" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title></title>
		<META http-equiv="Content-Type" content="text/html; charset=windows-1252">
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 17px; POSITION: absolute; TOP: 88px" src="images/menu.gif"><IMG style="Z-INDEX: 102; LEFT: 4px; POSITION: absolute; TOP: 3px" src="images/header.jpg">
			<DIV id="MyDiv" style="Z-INDEX: 103; LEFT: 139px; WIDTH: 500px; POSITION: absolute; TOP: 50px; HEIGHT: 45px" runat="server">
				<asp:Repeater id="MyRP1" runat="server">
					 
				</asp:Repeater>
			</DIV>
		</form>
	</body>
</HTML>
