<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Ch5Proj4.aspx.vb" Inherits="Chapter5.Ch5Proj4" %>
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
			<IMG style="Z-INDEX: 105; LEFT: 8px; POSITION: absolute; TOP: 8px" src="images/menu.gif"><IMG id="location" style="Z-INDEX: 104; LEFT: 137px; POSITION: absolute; TOP: 50px" src="images/StoreLocation.jpg"
				runat="server"><IMG style="Z-INDEX: 101; LEFT: 6px; POSITION: absolute; TOP: 2px" src="images/header.jpg">
			<asp:Label id="lblTitle" style="Z-INDEX: 103; LEFT: 137px; POSITION: absolute; TOP: 262px"
				runat="server" Width="342px" Height="42px" Font-Names="Trebuchet MS" Font-Size="Large"
				ForeColor="#004040"></asp:Label>
			<asp:Label id="lblTopics" style="Z-INDEX: 102; LEFT: 139px; POSITION: absolute; TOP: 300px"
				runat="server" Width="342px" Height="42px" Font-Names="Trebuchet MS" Font-Size="X-Small"
				ForeColor="#004040"></asp:Label>
			<asp:TextBox id="txtLocation" style="Z-INDEX: 106; LEFT: 140px; POSITION: absolute; TOP: 337px"
				runat="server"></asp:TextBox>
			<asp:Label id="lblLocation" style="Z-INDEX: 107; LEFT: 318px; POSITION: absolute; TOP: 340px"
				runat="server" Width="155px" Height="58px" Font-Names="Trebuchet MS" ForeColor="#004040"
				Font-Bold="True"><u>Please Enter:</u> <br /> Chicago Store <br /> - or - <br /> New York Store</asp:Label>
			<asp:ImageButton id="ImageButton1" style="Z-INDEX: 108; LEFT: 172px; POSITION: absolute; TOP: 386px"
				runat="server" ImageUrl="images/submitBlue.gif"></asp:ImageButton>
			<asp:Calendar id="Calendar1" style="Z-INDEX: 109; LEFT: 488px; POSITION: absolute; TOP: 80px"
				runat="server"></asp:Calendar>
		</form>
	</body>
</HTML>
