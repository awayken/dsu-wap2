<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AdRotator.aspx.vb" Inherits="Chapter4.AdRotator" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>calendar</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 5px; POSITION: absolute; TOP: 6px" src="images/header.jpg"><IMG style="Z-INDEX: 102; LEFT: 11px; POSITION: absolute; TOP: 95px" src="images/menu.gif">
			<asp:Label id="Label1" style="Z-INDEX: 103; LEFT: 159px; POSITION: absolute; TOP: 270px" runat="server"
				Font-Size="Medium" ForeColor="DarkSlateGray" Font-Names="Trebuchet MS">Click on the image below to view the item. </asp:Label>
			<asp:AdRotator id="AdRotator1" style="Z-INDEX: 104; LEFT: 155px; POSITION: absolute; TOP: 303px"
				runat="server" KeywordFilter="Waterford" AdvertisementFile="ads.xml"></asp:AdRotator><IMG style="Z-INDEX: 105; LEFT: 149px; POSITION: absolute; TOP: 57px" src="images/waterfordgifts.jpg">
		</form>
	</body>
</HTML>
