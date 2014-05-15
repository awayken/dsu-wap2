<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Ch8Case3_Home.aspx.vb" Inherits="Chapter8.Ch8Case3_Home"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Ch8Case3_Home</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" style="COLOR: white; FONT-FAMILY: Trebuchet MS; BACKGROUND-COLOR: #dc6331">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 100; LEFT: 0px; POSITION: absolute; TOP: 0px" src="images/GrocerToGo/grocer_logo.gif">
			<asp:HyperLink id="hyperDelete" style="Z-INDEX: 106; LEFT: 480px; POSITION: absolute; TOP: 32px"
				runat="server" Width="136px" ForeColor="White" NavigateUrl="Ch8Case3_DeleteCat.aspx">Delete a Category</asp:HyperLink>
			<asp:HyperLink id="hyperEdit" style="Z-INDEX: 105; LEFT: 328px; POSITION: absolute; TOP: 32px"
				runat="server" Width="136px" ForeColor="White" NavigateUrl="Ch8Case3_EditCat.aspx">Edit a Category</asp:HyperLink>
			<asp:DataList id="listCategory" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 72px"
				runat="server" BorderStyle="Solid" Font-Names="trebuchet ms" ForeColor="White" ShowFooter="False"
				BorderWidth="2px" Width="304px">
				<HeaderStyle ForeColor="White"></HeaderStyle>
				<HeaderTemplate>
					<asp:Label runat="server" id="Label1">Product Category</asp:Label>
				</HeaderTemplate>
				<AlternatingItemStyle BackColor="White" ForeColor="#dc6331"></AlternatingItemStyle>
				<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
				<ItemTemplate>
					(ID:
					<asp:Label runat="server" id="Label2" Text='<%# DataBinder.Eval(Container.DataItem, "CategoryID") %>' />)
					<asp:Label runat="server" id="Label3" Text='<%# DataBinder.Eval(Container.DataItem, "CategoryName") %>' />
				</ItemTemplate>
				<HeaderStyle Font-Names="trebuchet ms" Font-Bold="True" HorizontalAlign="Center" ForeColor="#dc6331"
					VerticalAlign="Middle" BackColor="White"></HeaderStyle>
				<AlternatingItemTemplate>
					(ID:
					<asp:Label runat="server" id="Label4" Text='<%# DataBinder.Eval(Container.DataItem, "CategoryID") %>' />)
					<asp:Label runat="server" id="Label5" Text='<%# DataBinder.Eval(Container.DataItem, "CategoryName") %>' />
				</AlternatingItemTemplate>
			</asp:DataList>
			<asp:HyperLink id="hyperHome" style="Z-INDEX: 102; LEFT: 328px; POSITION: absolute; TOP: 8px" runat="server"
				Width="136px" ForeColor="White" NavigateUrl="Ch8Case3_Home.aspx">Home</asp:HyperLink>
			<asp:HyperLink id="hyperAdd" style="Z-INDEX: 104; LEFT: 480px; POSITION: absolute; TOP: 8px" runat="server"
				Width="136px" ForeColor="White" NavigateUrl="Ch8Case3_AddCat.aspx">Add a Category</asp:HyperLink>
		</form>
	</body>
</HTML>
