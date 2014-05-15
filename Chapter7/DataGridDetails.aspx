<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DataGridDetails.aspx.vb" Inherits="Chapter7.DataGridDetails" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	             <LINK href="StyleSheet.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" src="images/header2.jpg">
			<asp:label id="Label1" style="Z-INDEX: 103; LEFT: 144px; POSITION: absolute; TOP: 267px" runat="server"
				ForeColor="DarkSlateGray" Font-Size="Medium" Font-Names="Trebuchet MS" Width="387px">Using Templates to Format the DataGrid Control</asp:label>
			<asp:image id="Image1" style="Z-INDEX: 104; LEFT: 131px; POSITION: absolute; TOP: 50px" runat="server"></asp:image>
			<asp:datagrid id=Categories runat="server" Width="99px" Height="118px" 
					 AutoGenerateColumns="False" 
					GridLines="None" ShowHeader="False" ShowFooter="True" 
					style="Z-INDEX: 105; LEFT: 21px; POSITION: absolute; TOP: 101px" >
				<ItemStyle CssClass="MyStyle"></ItemStyle>
				<FooterStyle CssClass="MyStyle"></FooterStyle>
				<Columns>
					<asp:TemplateColumn>
						<ItemTemplate>
							<asp:HyperLink Target="_self" id="Hyperlink4" runat="server" NavigateUrl='<%# "DataGridDetails.aspx?CategoryID=" & _ 
							DataBinder.Eval(Container, "DataItem.CategoryID") %>'>
								<%# DataBinder.Eval(Container, "DataItem.CategoryName") %>
							</asp:HyperLink>
						</ItemTemplate>
						<FooterTemplate>
							<asp:HyperLink Target="_self" id="Hyperlink2" runat="server" NavigateUrl='DataGridDetails.aspx?CategoryID=A'>
								<br />Show All Products
							</asp:HyperLink>
						</FooterTemplate>
					</asp:TemplateColumn>
				</Columns>
			</asp:datagrid>
			<asp:datagrid id=Products runat="server" Width="399px" CellPadding="5" 
				style="Z-INDEX: 102; LEFT: 142px; POSITION: absolute; TOP: 305px" 
				AutoGenerateColumns="False"  
				ShowFooter="True">
				<HeaderStyle CssClass="MyStyleHead"></HeaderStyle>
				<ItemStyle CssClass="MyStyleCenter"></ItemStyle>
				<AlternatingItemStyle BackColor="#FFFFC0"></AlternatingItemStyle>
				<FooterStyle BackColor="DarkSlateGray"></FooterStyle>
				<Columns>
					<asp:HyperLinkColumn Target="_self" DataNavigateUrlField="ProductID" DataNavigateUrlFormatString="Products.aspx?ProductID={0}"
						DataTextField="ModelName" HeaderText="Product Name" FooterText="Total number of products:">
						<ItemStyle HorizontalAlign="Left" Width="300"></ItemStyle>
						<FooterStyle CssClass="MyStyleFooter"></FooterStyle>
					</asp:HyperLinkColumn>
					<asp:TemplateColumn>
						<FooterStyle CssClass="MyStyleFooterCenter"></FooterStyle>
						<HeaderTemplate>
							<asp:Image id="Image2" ImageUrl="images/ring.jpg" runat="server"></asp:Image>
						</HeaderTemplate>
						<ItemTemplate>
							<asp:HyperLink Target="_blank" id="HyperLink1" runat="server" ImageUrl="images/zoom.jpg" NavigateUrl='<%# "images/" & _
							DataBinder.Eval(Container, "DataItem.ProductID") & _
							".gif" %>'>
							</asp:HyperLink>
						</ItemTemplate>
						<FooterTemplate>
							<%# DataView1.Count %>
						</FooterTemplate>
					</asp:TemplateColumn>
					<asp:BoundColumn DataField="UnitCost" HeaderText="Price" DataFormatString="{0:C}"></asp:BoundColumn>
				</Columns>
			</asp:datagrid></form>
	</body>
</HTML>
