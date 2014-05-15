<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CheckBoxRadio.aspx.vb" Inherits="Chapter7.CheckBoxRadio" %>
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
			<asp:label id="lblRBLHash" style="Z-INDEX: 112; LEFT: 211px; POSITION: absolute; TOP: 136px"
				runat="server" Width="175px" Height="10px" Font-Size="Small" Font-Names="Trebuchet MS"> Bind to a HashTable</asp:label>
			<asp:label id="lblRBLArray" style="Z-INDEX: 111; LEFT: 11px; POSITION: absolute; TOP: 137px"
				runat="server" Width="169px" Height="14px" Font-Size="Small" Font-Names="Trebuchet MS">Bind to an ArrayList</asp:label>
			<asp:label id="LblCBLArray" style="Z-INDEX: 103; LEFT: 11px; POSITION: absolute; TOP: 280px"
				runat="server" Width="187px" Height="17px" Font-Size="Small" Font-Names="Trebuchet MS">Bind to an ArrayList</asp:label>
			<asp:label id="lblRBL" style="Z-INDEX: 110; LEFT: 415px; POSITION: absolute; TOP: 137px" runat="server"
				Width="205px" Height="45px" Font-Size="Small" Font-Names="Trebuchet MS"></asp:label>&nbsp;
			<asp:label id="lblCBLHash" style="Z-INDEX: 104; LEFT: 214px; POSITION: absolute; TOP: 280px"
				runat="server" Width="182px" Height="13px" Font-Size="Small" Font-Names="Trebuchet MS"> Bind to a HashTable</asp:label>&nbsp;
			<asp:label id="lblCBL" style="Z-INDEX: 102; LEFT: 416px; POSITION: absolute; TOP: 278px" runat="server"
				Width="216px" Height="42px" Font-Size="Small" Font-Names="Trebuchet MS"></asp:label><asp:button id="btnSubmit" style="Z-INDEX: 105; LEFT: 261px; POSITION: absolute; TOP: 97px"
				runat="server" Text="Submit"></asp:button>
			<asp:checkboxlist id="CheckBoxList1" style="Z-INDEX: 106; LEFT: 4px; POSITION: absolute; TOP: 312px"
				runat="server" Font-Size="Small" Font-Names="Trebuchet MS"></asp:checkboxlist><asp:radiobuttonlist id="RadioButtonList1" style="Z-INDEX: 107; LEFT: 3px; POSITION: absolute; TOP: 164px"
				runat="server" Font-Size="Small" Font-Names="Trebuchet MS"></asp:radiobuttonlist>
			<asp:checkboxlist id="CheckBoxList2" style="Z-INDEX: 108; LEFT: 208px; POSITION: absolute; TOP: 312px"
				runat="server" Font-Size="Small" Font-Names="Trebuchet MS"></asp:checkboxlist><asp:radiobuttonlist id="RadioButtonList2" style="Z-INDEX: 109; LEFT: 203px; POSITION: absolute; TOP: 164px"
				runat="server" Font-Size="Small" Font-Names="Trebuchet MS"></asp:radiobuttonlist>
			<asp:Label id="Label1" style="Z-INDEX: 113; LEFT: 136px; POSITION: absolute; TOP: 55px" runat="server"
				Font-Size="Medium" Font-Names="Trebuchet MS" ForeColor="DarkSlateGray">Binding Data to a RadioButtonList and CheckBoxList Control</asp:Label>
		</form>
	</body>
</HTML>
