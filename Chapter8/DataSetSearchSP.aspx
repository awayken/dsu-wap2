<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DataSetSearchSP.aspx.vb" Inherits="Chapter8.DataSetSearchSP" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>DataSetSearchSP</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 6px; POSITION: absolute; TOP: 5px" src="images/header2.jpg">
			<asp:label id="Label1" style="Z-INDEX: 103; LEFT: 161px; POSITION: absolute; TOP: 55px" runat="server"
				Font-Size="X-Large" ForeColor="#004040" Font-Names="Bookman Old Style" Font-Italic="True">Tara Store Product List</asp:label><IMG style="Z-INDEX: 102; LEFT: 21px; POSITION: absolute; TOP: 83px" src="images/menu.gif">
			<asp:label id="lblSearch" style="Z-INDEX: 105; LEFT: 292px; POSITION: absolute; TOP: 127px"
				runat="server" ForeColor="#004040" Font-Names="Trebuchet MS" Font-Italic="True" Font-Bold="True">Search:</asp:label><asp:textbox id="txtSearch" style="Z-INDEX: 106; LEFT: 357px; POSITION: absolute; TOP: 128px"
				runat="server"></asp:textbox><asp:button id="btnGo" style="Z-INDEX: 107; LEFT: 553px; POSITION: absolute; TOP: 126px" runat="server"
				Text="Go" CommandName="MyDG_SortCommand"></asp:button><asp:label id="Label2" style="Z-INDEX: 108; LEFT: 292px; POSITION: absolute; TOP: 98px" runat="server"
				ForeColor="#004040" Font-Names="Trebuchet MS" Font-Italic="True" Font-Bold="True" Width="303px" Height="22px">Search for a product name or category</asp:label><asp:datagrid id="MyDG" style="Z-INDEX: 104; LEFT: 147px; POSITION: absolute; TOP: 206px" runat="server"
				Font-Size="X-Small" ForeColor="#004040" Font-Names="Verdana" Width="575px" Height="359px" ShowFooter="True" AutoGenerateColumns="False" AllowPaging="True" PageSize="3">
				<HeaderStyle ForeColor="Navy" BackColor="Silver"></HeaderStyle>
				<FooterStyle BackColor="Silver"></FooterStyle>
				<Columns>
					<asp:TemplateColumn>
						<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
						<ItemStyle HorizontalAlign="Center"></ItemStyle>
						<ItemTemplate>
							<A href='images/ProductPics/<%# Container.DataItem("ProductImage")%>'><IMG hspace=2 src='images/ProductThumbnails/<%# Container.DataItem("Thumbnail") %>' border=0>
							</A>
						</ItemTemplate>
						<EditItemTemplate>
							<asp:TextBox id=Textbox1 runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Thumbnail") %>'>
							</asp:TextBox>
						</EditItemTemplate>
					</asp:TemplateColumn>
					<asp:BoundColumn DataField="ModelName" SortExpression="ModelName" HeaderText="Product Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="UnitCost" SortExpression="UnitCost" HeaderText="Price" DataFormatString="{0:C}"></asp:BoundColumn>
				</Columns>
				<PagerStyle NextPageText="Next" PrevPageText="Previous" ForeColor="Red" Position="TopAndBottom"></PagerStyle>
			</asp:datagrid><asp:label id="lblResults" style="Z-INDEX: 109; LEFT: 291px; POSITION: absolute; TOP: 156px"
				runat="server" ForeColor="#004040" Font-Names="Trebuchet MS" Font-Italic="True" Font-Bold="True" Width="303px"
				Height="22px"></asp:label></form>
	</body>
</HTML>
