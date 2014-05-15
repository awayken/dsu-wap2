<%@ Page Language="vb" AutoEventWireup="false" Codebehind="InsertCat.aspx.vb" Inherits="Chapter8.InsertCat" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>InsertCat</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 7px; POSITION: absolute; TOP: 7px" src="images/header2.jpg">
			<asp:label id="Label1" style="Z-INDEX: 104; LEFT: 167px; POSITION: absolute; TOP: 52px" runat="server"
				Font-Italic="True" Font-Names="Bookman Old Style" ForeColor="#004040" Font-Size="X-Large">Tara Store Insert a Category</asp:label>
			<asp:label id="Label2" style="Z-INDEX: 103; LEFT: 281px; POSITION: absolute; TOP: 104px" runat="server"
				ForeColor="#004040" Font-Names="Trebuchet MS" Font-Italic="True" Font-Bold="True" Height="22px"
				Width="182px">Insert the new category</asp:label>
			<IMG style="Z-INDEX: 102; LEFT: 18px; POSITION: absolute; TOP: 96px" src="images/shortmenu.gif">
			<asp:textbox id="tCatName" style="Z-INDEX: 105; LEFT: 316px; POSITION: absolute; TOP: 147px"
				runat="server" Height="26px" Width="215px"></asp:textbox>
			<asp:textbox id="tCatImage" style="Z-INDEX: 106; LEFT: 316px; POSITION: absolute; TOP: 181px"
				runat="server"></asp:textbox>
			<asp:textbox id="tCatThumb" style="Z-INDEX: 107; LEFT: 316px; POSITION: absolute; TOP: 211px"
				runat="server" Height="24px" Width="155px"></asp:textbox>
			<asp:textbox id="tCatDesc" style="Z-INDEX: 108; LEFT: 167px; POSITION: absolute; TOP: 264px"
				runat="server" Height="99px" Width="365px"></asp:textbox>
			<asp:button id="btnAdd" style="Z-INDEX: 109; LEFT: 229px; POSITION: absolute; TOP: 379px" runat="server"
				Height="24px" Width="91px" Text="Add"></asp:button>
			<asp:Label id="Label3" style="Z-INDEX: 110; LEFT: 165px; POSITION: absolute; TOP: 145px" runat="server"
				ForeColor="#004040" Font-Names="Trebuchet MS" Font-Italic="True" Font-Bold="True" Height="22px"
				Width="121px">Category Name</asp:Label>
			<asp:Label id="Label4" style="Z-INDEX: 111; LEFT: 165px; POSITION: absolute; TOP: 175px" runat="server"
				ForeColor="#004040" Font-Names="Trebuchet MS" Font-Italic="True" Font-Bold="True" Height="22px"
				Width="123px">Category Image</asp:Label>
			<asp:Label id="Label5" style="Z-INDEX: 112; LEFT: 167px; POSITION: absolute; TOP: 207px" runat="server"
				ForeColor="#004040" Font-Names="Trebuchet MS" Font-Italic="True" Font-Bold="True" Height="22px"
				Width="138px">Thumbnail Image</asp:Label>
			<asp:Label id="Label6" style="Z-INDEX: 113; LEFT: 167px; POSITION: absolute; TOP: 236px" runat="server"
				ForeColor="#004040" Font-Names="Trebuchet MS" Font-Italic="True" Font-Bold="True" Height="22px"
				Width="141px">Description</asp:Label>
			<asp:Button id="btnView" style="Z-INDEX: 114; LEFT: 350px; POSITION: absolute; TOP: 379px" runat="server"
				Text="View Category List"></asp:Button>
		</form>
	</body>
</HTML>
