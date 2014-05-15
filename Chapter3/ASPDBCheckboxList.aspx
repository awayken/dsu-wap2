<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ASPDBCheckboxList.aspx.vb" Inherits="Chapter3.ASPDBCheckboxList" %>
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
			<BR>
			<IMG style="Z-INDEX: 103; LEFT: 135px; POSITION: absolute; TOP: 49px" src="images/CommunityNews.jpg">&nbsp;
			<asp:imagebutton id="btnSubmit" style="Z-INDEX: 105; LEFT: 149px; POSITION: absolute; TOP: 412px"
				runat="server" ImageAlign="Left" ImageUrl="images/submitblue.gif"></asp:imagebutton><asp:label id="lblTopics" style="Z-INDEX: 106; LEFT: 321px; POSITION: absolute; TOP: 255px"
				runat="server" ForeColor="#004040" Font-Size="X-Small" Font-Names="Trebuchet MS" Height="179px" Width="194px">Please select one or more topics</asp:label><asp:panel id="Panel1" style="Z-INDEX: 107; LEFT: 144px; POSITION: absolute; TOP: 254px" runat="server"
				Height="145px" Width="155px"></asp:panel>
		</FORM>
	</body>
</HTML>
