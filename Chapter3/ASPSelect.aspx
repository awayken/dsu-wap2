<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ASPSelect.aspx.vb" Inherits="Chapter3.ASPSelect" %>
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
		<FORM id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 0px" src="images/header.jpg">&nbsp;<IMG style="Z-INDEX: 102; LEFT: 17px; POSITION: absolute; TOP: 85px" src="images/menu.gif">
			<BR>
			<asp:label id="lblTitle" style="Z-INDEX: 103; LEFT: 155px; POSITION: absolute; TOP: 274px"
				runat="server" Width="385px" Height="19px" Font-Names="Trebuchet MS" Font-Size="Medium">Select a Product Category</asp:label>
			<asp:button id="btnSubmit" style="Z-INDEX: 104; LEFT: 345px; POSITION: absolute; TOP: 320px"
				runat="server" Width="143px" Height="24px" Text="Select a Category"></asp:button>
			<asp:image id="imgTop" style="Z-INDEX: 105; LEFT: 139px; POSITION: absolute; TOP: 52px" runat="server"
				ImageUrl="images/WaterfordGifts.jpg"></asp:image>
			<asp:DropDownList id="dlCategory" style="Z-INDEX: 106; LEFT: 160px; POSITION: absolute; TOP: 320px"
				runat="server" Height="25px" Width="155px"></asp:DropDownList>
		</FORM>
	</body>
</HTML>
