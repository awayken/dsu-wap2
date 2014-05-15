<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Ch7Case2.aspx.vb" Inherits="Chapter7.Ch7Case2"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Ch7Case2</title>
		<meta content="True" name="vs_showGrid">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" src="images/header2.jpg">
			<asp:dropdownlist id="ddLogins" style="Z-INDEX: 103; LEFT: 352px; POSITION: absolute; TOP: 88px" runat="server"
				ForeColor="#004000" Width="112px" Height="14px" Font-Names="trebuchet ms"></asp:dropdownlist><IMG style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 96px" src="images/menu_short.gif">
			<asp:label id="Label1" style="Z-INDEX: 104; LEFT: 200px; POSITION: absolute; TOP: 90px" runat="server"
				ForeColor="#004000" Height="8px" Font-Names="trebuchet ms" Font-Bold="True">Choose a Login ID:</asp:label><asp:button id="btnLookup" style="Z-INDEX: 105; LEFT: 480px; POSITION: absolute; TOP: 88px"
				runat="server" ForeColor="#004000" Width="88px" Height="24px" Font-Names="trebuchet ms" Font-Bold="True" Text="Lookup"></asp:button>
			<asp:DataList id="dlLogins" style="Z-INDEX: 106; LEFT: 200px; POSITION: absolute; TOP: 200px"
				runat="server" ForeColor="Green" Font-Names="trebuchet ms" Font-Size="X-Small">
				<ItemTemplate>
					<b>
						<%# Container.DataItem.Key %>
					</b>&nbsp;(<%# DataBinder.Eval(Container.DataItem,"Value")%>)
					<br />
				</ItemTemplate>
			</asp:DataList>
			<asp:Label id="lblResults" style="Z-INDEX: 107; LEFT: 200px; POSITION: absolute; TOP: 120px"
				runat="server" ForeColor="Green" Width="584px" Height="72px" Font-Names="trebuchet ms"
				Font-Size="X-Small"></asp:Label></form>
	</body>
</HTML>
