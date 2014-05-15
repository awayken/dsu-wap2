<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DeleteCatDelCmd.aspx.vb" Inherits="Chapter8.DeleteCatDelCmd" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>DeleteCatCmd</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid OnDeleteCommand="MyDG_DeleteCommand" id="MyDG" style="Z-INDEX: 104; LEFT: 168px; POSITION: absolute; TOP: 182px"
				runat="server" BorderColor="Black" BorderWidth="1px" CellPadding="3" Font-Name=" Verdana"
				Font-Size="8pt" HeaderStyle-BackColor="#aaaadd" Font-Names=" Verdana" DataKeyField="CategoryID"
				AutoGenerateColumns="False">
				<HeaderStyle BackColor="LightSteelBlue"></HeaderStyle>
				<Columns>
					<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
					<asp:BoundColumn DataField="CategoryID" SortExpression="CategoryID" HeaderText="Category ID"></asp:BoundColumn>
					<asp:BoundColumn DataField="CategoryName" SortExpression="CategoryName" HeaderText="Category Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="CatImage" SortExpression="CatImage" HeaderText="Image"></asp:BoundColumn>
					<asp:BoundColumn DataField="Thumbnail" SortExpression="Thumbnail" HeaderText="Thumbnail"></asp:BoundColumn>
					<asp:BoundColumn DataField="Description" SortExpression="Description" HeaderText="Description"></asp:BoundColumn>
				</Columns>
			</asp:DataGrid>
			<asp:Button id="btnAdd" style="Z-INDEX: 108; LEFT: 446px; POSITION: absolute; TOP: 107px" runat="server"
				Text="Insert a Category" Width="163px"></asp:Button>
			<asp:Button id="btnView" style="Z-INDEX: 107; LEFT: 446px; POSITION: absolute; TOP: 142px" runat="server"
				Text="View Category List"></asp:Button>
			<asp:label id="Label2" style="Z-INDEX: 106; LEFT: 169px; POSITION: absolute; TOP: 133px" runat="server"
				Font-Names="Trebuchet MS" ForeColor="#004040" Width="217px" Height="22px" Font-Bold="True"
				Font-Italic="True">Delete an existing category</asp:label>
			<asp:label id="Label1" style="Z-INDEX: 105; LEFT: 167px; POSITION: absolute; TOP: 52px" runat="server"
				Font-Size="X-Large" Font-Names="Bookman Old Style" ForeColor="#004040" Font-Italic="True">Tara Store Delete a Category</asp:label>
			<IMG style="Z-INDEX: 103; LEFT: 22px; POSITION: absolute; TOP: 93px" src="images/shortmenu.gif"><IMG style="Z-INDEX: 100; LEFT: 7px; POSITION: absolute; TOP: 7px" src="images/header.jpg"><IMG style="Z-INDEX: 102; LEFT: 22px; POSITION: absolute; TOP: 93px" src="images/shortmenu.gif"><IMG style="Z-INDEX: 101; LEFT: 7px; POSITION: absolute; TOP: 7px" src="images/header2.jpg">
		</form>
	</body>
</HTML>
