<%@ Page Language="vb" AutoEventWireup="false" Codebehind="SampleUsingVB.aspx.vb" Inherits="Chapter5.SampleUsingVB" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 8px" src="images/menu.gif">
			<asp:RadioButtonList id="RBL" style="Z-INDEX: 104; LEFT: 253px; POSITION: absolute; TOP: 342px" runat="server" Font-Names="Trebuchet MS" Font-Size="X-Small" ForeColor="#004040" AutoPostBack="True"></asp:RadioButtonList>
			<asp:Label id="lblTopics" style="Z-INDEX: 103; LEFT: 139px; POSITION: absolute; TOP: 300px" runat="server" Width="342px" Height="42px" Font-Names="Trebuchet MS" Font-Size="X-Small" ForeColor="#004040"></asp:Label>
			<IMG style="Z-INDEX: 101; LEFT: 6px; POSITION: absolute; TOP: 2px" src="images/header.jpg">&nbsp;
			<asp:Label id="lblTitle" style="Z-INDEX: 106; LEFT: 137px; POSITION: absolute; TOP: 262px" runat="server" Width="342px" Height="42px" Font-Names="Trebuchet MS" Font-Size="Large" ForeColor="#004040"></asp:Label>
			<IMG id="location" style="Z-INDEX: 107; LEFT: 137px; POSITION: absolute; TOP: 50px" src="images/StoreLocation.jpg" runat="server">
		</form>
	</body>
</HTML>
