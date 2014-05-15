<%@ Page Language="vb" AutoEventWireup="false" Codebehind="exam1_1.aspx.vb" Inherits="Chapter4.exam1_1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>exam1_1</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server" style="FONT-FAMILY: 'Trebuchet MS', Verdana, Arial, Sans-Serif; BACKGROUND-COLOR: #ccccff">
			<DIV style="DISPLAY: inline; Z-INDEX: 101; LEFT: 128px; WIDTH: 224px; POSITION: absolute; TOP: 8px; HEIGHT: 8px; TEXT-ALIGN: center"
				ms_positioning="FlowLayout">
				<H1>Calculator</H1>
			</DIV>
			<DIV style="DISPLAY: inline; Z-INDEX: 102; LEFT: 8px; WIDTH: 464px; POSITION: absolute; TOP: 80px; HEIGHT: 64px"
				ms_positioning="FlowLayout">Use the following form as a simple 
				calculator.&nbsp; Enter your first number, select an operation, and then select 
				your second number.&nbsp; Hit "Calculate!" and watch the fun!</DIV>
			<DIV style="DISPLAY: inline; Z-INDEX: 103; LEFT: 55px; WIDTH: 8px; POSITION: absolute; TOP: 160px; HEIGHT: 22px"
				ms_positioning="FlowLayout">X</DIV>
			<DIV style="DISPLAY: inline; Z-INDEX: 104; LEFT: 175px; WIDTH: 8px; POSITION: absolute; TOP: 160px; HEIGHT: 22px"
				ms_positioning="FlowLayout">
				<P>Y</P>
			</DIV>
			<asp:TextBox id="txtFirstNumber" style="Z-INDEX: 105; LEFT: 40px; POSITION: absolute; TOP: 192px"
				runat="server" Width="40px"></asp:TextBox>
			<asp:TextBox id="txtSecondNumber" style="Z-INDEX: 106; LEFT: 160px; POSITION: absolute; TOP: 192px"
				runat="server" Width="40px"></asp:TextBox>
			<asp:Button id="btnCalculate" style="Z-INDEX: 107; LEFT: 232px; POSITION: absolute; TOP: 192px"
				runat="server" Width="96px" Text="Calculate!"></asp:Button>
			<asp:DropDownList id="ddOperations" style="Z-INDEX: 108; LEFT: 104px; POSITION: absolute; TOP: 192px"
				runat="server">
				<asp:ListItem Value="add" Selected="True">+</asp:ListItem>
				<asp:ListItem Value="subtract">-</asp:ListItem>
				<asp:ListItem Value="multiply">*</asp:ListItem>
				<asp:ListItem Value="divide">/</asp:ListItem>
			</asp:DropDownList>
			<asp:Button id="btnClear" style="Z-INDEX: 109; LEFT: 344px; POSITION: absolute; TOP: 192px"
				runat="server" Width="96px" Text="Clear!"></asp:Button>
			<asp:RequiredFieldValidator id="rfFirstNumber" style="Z-INDEX: 110; LEFT: 32px; POSITION: absolute; TOP: 192px"
				runat="server" ErrorMessage="*" ControlToValidate="txtFirstNumber"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="rfSecondNumber" style="Z-INDEX: 111; LEFT: 152px; POSITION: absolute; TOP: 192px"
				runat="server" ErrorMessage="*" ControlToValidate="txtSecondNumber"></asp:RequiredFieldValidator>
			<asp:Label id="lblResults" style="Z-INDEX: 112; LEFT: 32px; POSITION: absolute; TOP: 224px"
				runat="server"></asp:Label>
		</form>
	</body>
</HTML>
