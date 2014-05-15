<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PageSortProducts.aspx.vb" Inherits="Chapter8.PageSortProducts" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>PageSortProducts</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 100; LEFT: 6px; POSITION: absolute; TOP: 5px" src="images/header2.jpg">
			<asp:label id="Label1" style="Z-INDEX: 102; LEFT: 161px; POSITION: absolute; TOP: 55px" runat="server"
				Font-Size="X-Large" ForeColor="#004040" Font-Names="Bookman Old Style" Font-Italic="True">Tara Store Product List</asp:label>
			<IMG style="Z-INDEX: 101; LEFT: 22px; POSITION: absolute; TOP: 101px" src="images/shortmenu.gif">
			<asp:datagrid id="MyDG" style="Z-INDEX: 103; LEFT: 153px; POSITION: absolute; TOP: 121px" runat="server"
				Height="359px" Width="575px" Font-Names="Verdana" ForeColor="#004040" Font-Size="X-Small"
				AutoGenerateColumns="False" ShowHeader="False">
				<HeaderStyle ForeColor="Navy" BackColor="Silver"></HeaderStyle>
				<FooterStyle BackColor="Silver"></FooterStyle>
				<Columns>
					<asp:TemplateColumn HeaderText="Image">
						<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
						<ItemStyle HorizontalAlign="Center"></ItemStyle>
						<ItemTemplate>
							<a href='images/ProductPics/<%# Container.DataItem("ProductImage")%>'><img src='images/ProductThumbnails/<%# Container.DataItem("Thumbnail") %>' 
								hspace="2" border="0"> </a>
						</ItemTemplate>
						<EditItemTemplate>
							<asp:TextBox runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Thumbnail") %>' ID="Textbox1">
							</asp:TextBox>
						</EditItemTemplate>
					</asp:TemplateColumn>
					<asp:BoundColumn DataField="ModelName" SortExpression="ModelName" HeaderText="Product Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="UnitCost" SortExpression="UnitCost" HeaderText="Price" DataFormatString="{0:C}"></asp:BoundColumn>
				</Columns>
			</asp:datagrid>
		</form>
	</body>
</HTML>
