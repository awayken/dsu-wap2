<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Ch8Case1.aspx.vb" Inherits="Chapter8.Ch8Case1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Ch8Case1</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 16px; POSITION: absolute; TOP: 56px" src="images/Pubs/dChicagoStore.jpg">
			<asp:label id="Label5" style="Z-INDEX: 108; LEFT: 232px; POSITION: absolute; TOP: 160px" runat="server"
				Font-Bold="True" Font-Size="Small" ForeColor="Green" Font-Names="trebuchet ms">Author's address:</asp:label><asp:label id="Label4" style="Z-INDEX: 105; LEFT: 232px; POSITION: absolute; TOP: 80px" runat="server"
				Height="16px" Width="208px" Font-Size="X-Small" ForeColor="Green" Font-Names="verdana">Select the author's last name to obtain their address.</asp:label><asp:label id="Label1" style="Z-INDEX: 102; LEFT: 32px; POSITION: absolute; TOP: 16px" runat="server"
				Font-Bold="True" Font-Size="Large" ForeColor="Green" Font-Names="trebuchet ms">Pubs Bookstore</asp:label><asp:label id="Label2" style="Z-INDEX: 103; LEFT: 24px; POSITION: absolute; TOP: 328px" runat="server"
				Height="16px" Width="176px" Font-Size="X-Small" ForeColor="Green" Font-Names="verdana">We provide a variety of books for all ages.</asp:label><asp:label id="Label3" style="Z-INDEX: 104; LEFT: 232px; POSITION: absolute; TOP: 48px" runat="server"
				Font-Bold="True" Font-Size="Medium" ForeColor="Green" Font-Names="trebuchet ms">Where Our Authors Live</asp:label><asp:button id="btnGo" style="Z-INDEX: 106; LEFT: 400px; POSITION: absolute; TOP: 120px" runat="server"
				Height="24px" Width="48px" ForeColor="Green" Font-Names="trebuchet ms" Text="Go"></asp:button><asp:dropdownlist id="DDAL" style="Z-INDEX: 107; LEFT: 232px; POSITION: absolute; TOP: 120px" runat="server"
				Width="160px" ForeColor="Green" Font-Names="trebuchet ms"></asp:dropdownlist><asp:label id="MyLabel" style="Z-INDEX: 109; LEFT: 232px; POSITION: absolute; TOP: 192px" runat="server"
				Height="120px" Width="216px" Font-Bold="True" Font-Size="Small" ForeColor="Green" Font-Names="trebuchet ms"></asp:label></form>
	</body>
</HTML>
