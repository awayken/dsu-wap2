<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Exam2_1.aspx.vb" Inherits="Chapter8.Exam2_1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Exam2_1</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server" style="COLOR: #004000; FONT-FAMILY: trebuchet ms">
			<IMG style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 8px" src="images/header.jpg"><IMG style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 96px" src="images/shortmenu.gif">
			<asp:Label id="Label1" style="Z-INDEX: 103; LEFT: 160px; POSITION: absolute; TOP: 80px" runat="server">First Name:</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 104; LEFT: 160px; POSITION: absolute; TOP: 112px" runat="server">Last Name:</asp:Label>
			<asp:TextBox id="txtFirst" style="Z-INDEX: 105; LEFT: 248px; POSITION: absolute; TOP: 80px" runat="server"></asp:TextBox>
			<asp:TextBox id="txtLast" style="Z-INDEX: 106; LEFT: 248px; POSITION: absolute; TOP: 112px" runat="server"></asp:TextBox>
			<asp:Button id="btnLookup" style="Z-INDEX: 107; LEFT: 272px; POSITION: absolute; TOP: 152px"
				runat="server" Text="Lookup!"></asp:Button>
			<asp:Label id="lblResult" style="Z-INDEX: 108; LEFT: 448px; POSITION: absolute; TOP: 80px"
				runat="server"></asp:Label>
			<asp:Button id="btnClear" style="Z-INDEX: 109; LEFT: 352px; POSITION: absolute; TOP: 152px"
				runat="server" Text="Clear"></asp:Button>
			<asp:RequiredFieldValidator id="reqFirst" style="Z-INDEX: 110; LEFT: 408px; POSITION: absolute; TOP: 80px" runat="server"
				ErrorMessage="*" ControlToValidate="txtFirst"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="reqLast" style="Z-INDEX: 111; LEFT: 408px; POSITION: absolute; TOP: 112px" runat="server"
				ErrorMessage="*" ControlToValidate="txtLast"></asp:RequiredFieldValidator>
		</form>
	</body>
</HTML>
