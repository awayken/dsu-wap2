<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Ch5Case2.aspx.vb" Inherits="Chapter5.Ch5Case2"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Ch5Case2</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" src="images/header.jpg"><IMG style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 96px" src="images/menu.gif"><IMG style="Z-INDEX: 103; LEFT: 136px; POSITION: absolute; TOP: 56px" src="images/CustomerSupport.jpg">
			<asp:Label id="lblStoreName" style="Z-INDEX: 104; LEFT: 488px; POSITION: absolute; TOP: 80px"
				runat="server" Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="X-Large" ForeColor="#004000"></asp:Label>
			<asp:Label id="lblStoreAddress" style="Z-INDEX: 105; LEFT: 488px; POSITION: absolute; TOP: 152px"
				runat="server" Font-Names="Trebuchet MS" ForeColor="#004000"></asp:Label>
			<asp:Label id="lblStoreEmail" style="Z-INDEX: 106; LEFT: 488px; POSITION: absolute; TOP: 184px"
				runat="server" Font-Names="Trebuchet MS" ForeColor="#004000"></asp:Label>
			<asp:Label id="lblStorePhone" style="Z-INDEX: 107; LEFT: 488px; POSITION: absolute; TOP: 216px"
				runat="server" Font-Names="Trebuchet MS" ForeColor="#004000"></asp:Label>
			<asp:Label id="lblStoreDesc" style="Z-INDEX: 108; LEFT: 144px; POSITION: absolute; TOP: 264px"
				runat="server" Font-Names="Trebuchet MS" Font-Size="Medium" ForeColor="#004000" Width="672px"
				Height="64px"></asp:Label>
			<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: small; Z-INDEX: 109; LEFT: 144px; WIDTH: 160px; COLOR: #004000; FONT-FAMILY: Trebuchet MS; POSITION: absolute; TOP: 336px; HEIGHT: 24px"
				align="right" ms_positioning="FlowLayout">Visitors per Year:</DIV>
			<asp:Label id="lblStoreVisits" style="Z-INDEX: 110; LEFT: 312px; POSITION: absolute; TOP: 336px"
				runat="server" Font-Names="Trebuchet MS" Font-Size="Small" ForeColor="#004000"></asp:Label>
			<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: small; Z-INDEX: 111; LEFT: 456px; WIDTH: 160px; COLOR: #004000; FONT-FAMILY: Trebuchet MS; POSITION: absolute; TOP: 336px; HEIGHT: 24px"
				align="right" ms_positioning="FlowLayout">Store Tax Rate:</DIV>
			<asp:Label id="lblStoreTaxRate" style="Z-INDEX: 112; LEFT: 624px; POSITION: absolute; TOP: 336px"
				runat="server" Font-Names="Trebuchet MS" Font-Size="Small" ForeColor="#004000"></asp:Label>
		</form>
	</body>
</HTML>
