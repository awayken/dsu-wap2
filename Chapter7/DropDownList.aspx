<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DropDownList.aspx.vb" Inherits="Chapter7.DropDownList" %>
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
			<IMG style="Z-INDEX: 101; LEFT: 5px; POSITION: absolute; TOP: 2px" src="images/header2.jpg">
			<asp:label id="lblCurrency" style="Z-INDEX: 108; LEFT: 442px; POSITION: absolute; TOP: 211px"
				runat="server" Width="177px" Height="28px" Font-Size="Small" Font-Names="Trebuchet MS">Format as Currency</asp:label>
			<asp:dropdownlist id="MyDD3" style="Z-INDEX: 107; LEFT: 442px; POSITION: absolute; TOP: 238px" runat="server"></asp:dropdownlist>
			<asp:label id="lblHashTable" style="Z-INDEX: 106; LEFT: 235px; POSITION: absolute; TOP: 211px"
				runat="server" Width="177px" Height="28px" Font-Size="Small" Font-Names="Trebuchet MS"> Bind to a HashTable</asp:label>&nbsp;
			<asp:dropdownlist id="MyDD1" style="Z-INDEX: 102; LEFT: 32px; POSITION: absolute; TOP: 238px" runat="server"></asp:dropdownlist>
			<asp:dropdownlist id="MyDD2" style="Z-INDEX: 103; LEFT: 235px; POSITION: absolute; TOP: 238px" runat="server"></asp:dropdownlist>
			<asp:label id="lblMyResults" style="Z-INDEX: 104; LEFT: 37px; POSITION: absolute; TOP: 107px"
				runat="server" Width="337px" Height="34px" Font-Names="Trebuchet MS">Select one value from each drop-down list, and then click the Submit button</asp:label>
			<asp:label id="lblArray" style="Z-INDEX: 105; LEFT: 34px; POSITION: absolute; TOP: 207px" runat="server"
				Width="153px" Height="30px" Font-Size="Small" Font-Names="Trebuchet MS">Bind to an ArrayList</asp:label>
			<asp:button id="btnSubmit" style="Z-INDEX: 109; LEFT: 236px; POSITION: absolute; TOP: 172px"
				runat="server" Text="Submit"></asp:button>
			<asp:Label id="Label1" style="Z-INDEX: 110; LEFT: 164px; POSITION: absolute; TOP: 59px" runat="server"
				Font-Size="Medium" ForeColor="DarkSlateGray" Font-Names="Trebuchet MS">Binding Data to a DropDownList Control</asp:Label></form>
	</body>
</HTML>
