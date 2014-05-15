<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ListBox.aspx.vb" Inherits="Chapter7.ListBox" %>
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
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 100; LEFT: 5px; POSITION: absolute; TOP: 2px" src="images/header2.jpg">
			<asp:label id="lblCurrency" style="Z-INDEX: 107; LEFT: 444px; POSITION: absolute; TOP: 146px"
				runat="server" Height="28px" Width="155px" Font-Names="Trebuchet MS">Format as Currency</asp:label>
			<asp:listbox id="MyLB3" style="Z-INDEX: 106; LEFT: 443px; POSITION: absolute; TOP: 175px" runat="server"></asp:listbox>
			<asp:label id="lblHashTable" style="Z-INDEX: 105; LEFT: 233px; POSITION: absolute; TOP: 146px"
				runat="server" Height="28px" Width="155px" Font-Names="Trebuchet MS"> Bind to a HashTable</asp:label>&nbsp;
			<asp:listbox id="MyLB1" style="Z-INDEX: 101; LEFT: 29px; POSITION: absolute; TOP: 175px" runat="server"></asp:listbox>
			<asp:listbox id="MyLB2" style="Z-INDEX: 102; LEFT: 231px; POSITION: absolute; TOP: 175px" runat="server"></asp:listbox>
			<asp:label id="lblMyResults" style="Z-INDEX: 103; LEFT: 30px; POSITION: absolute; TOP: 257px"
				runat="server" Height="173px" Width="537px" Font-Names="Trebuchet MS"></asp:label>
			<asp:label id="lblArray" style="Z-INDEX: 104; LEFT: 32px; POSITION: absolute; TOP: 142px" runat="server"
				Height="30px" Width="141px" Font-Names="Trebuchet MS">Bind to an ArrayList</asp:label>
			<asp:button id="btnSubmit" style="Z-INDEX: 108; LEFT: 234px; POSITION: absolute; TOP: 108px"
				runat="server" Text="Submit"></asp:button>
			<asp:Label id="Label1" style="Z-INDEX: 109; LEFT: 156px; POSITION: absolute; TOP: 58px" runat="server"
				Font-Names="Trebuchet MS" ForeColor="DarkSlateGray" Font-Size="Medium">Binding Data to a ListBox Control</asp:Label>
		</form>
	</body>
</HTML>
