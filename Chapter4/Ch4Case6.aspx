<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Ch4Case6.aspx.vb" Inherits="Chapter4.Ch4Case6"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Vacation Times</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="#ffffff" MS_POSITIONING="GridLayout">
		<form id="Form1" style="FONT-FAMILY: Verdana, Arial, Sans-Serif" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" src="images/header.jpg"><IMG style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 96px" src="images/menu.gif">
			<asp:calendar id="calVacation" style="Z-INDEX: 103; LEFT: 144px; POSITION: absolute; TOP: 56px"
				runat="server" Width="408px" Height="248px">
				<TodayDayStyle BackColor="#FFE0C0"></TodayDayStyle>
				<SelectedDayStyle BackColor="#8080FF"></SelectedDayStyle>
				<WeekendDayStyle BackColor="#C0C0FF"></WeekendDayStyle>
			</asp:calendar><asp:button id="btnStart" style="Z-INDEX: 104; LEFT: 144px; POSITION: absolute; TOP: 336px"
				runat="server" Width="90px" Text="Start Date"></asp:button><asp:button id="btnEnd" style="Z-INDEX: 105; LEFT: 360px; POSITION: absolute; TOP: 336px" runat="server"
				Width="90px" Text="End Date"></asp:button><asp:label id="lblStart" style="Z-INDEX: 106; LEFT: 240px; POSITION: absolute; TOP: 336px"
				runat="server" Width="90px" Height="24px" Font-Names="Trebuchet MS"></asp:label><asp:label id="lblEnd" style="Z-INDEX: 107; LEFT: 456px; POSITION: absolute; TOP: 336px" runat="server"
				Width="90px" Height="24px" Font-Names="Trebuchet MS"></asp:label>
			<DIV style="DISPLAY: inline; FONT-SIZE: 10pt; Z-INDEX: 108; LEFT: 560px; WIDTH: 264px; POSITION: absolute; TOP: 80px; HEIGHT: 224px"
				ms_positioning="FlowLayout">
				<P>So, you want to go on vacation.&nbsp; Well, here's the spot to be.</P>
				<P>Choose the start date of your vacation on the calendar, then click the "Start 
					Date" button.</P>
				<P>Then, choose the end date of your vacation on the calendar and click the "End 
					Date" button.</P>
				<P>The Form will display the dates of your vacation.</P>
			</DIV>
			<asp:label id="lblSummary" style="Z-INDEX: 109; LEFT: 152px; POSITION: absolute; TOP: 368px"
				runat="server" Width="672px" Height="56px" Font-Names="Trebuchet MS" ForeColor="Red"></asp:label>
			<asp:Button id="btnClear" style="Z-INDEX: 110; LEFT: 560px; POSITION: absolute; TOP: 336px"
				runat="server" Width="90px" Text="Start Over"></asp:Button></form>
	</body>
</HTML>
