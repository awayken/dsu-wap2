<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CatMenu.aspx.vb" Inherits="Chapter8.CatMenu" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>CatMenu</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="StyleSheet.css" type="text/css" rel="stylesheet">
		<LINK href="Styles.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG id="IMG1" style="Z-INDEX: 101; LEFT: 6px; POSITION: absolute; TOP: 7px" src="images/header2.jpg">
			<IMG id="homeImage" style="Z-INDEX: 104; LEFT: 154px; WIDTH: 414px; POSITION: absolute; TOP: 98px; HEIGHT: 297px"
				src="images/home.jpg" runat="server">&nbsp;
			<asp:image id="LargeImage" style="Z-INDEX: 107; LEFT: 148px; POSITION: absolute; TOP: 96px"
				runat="server"></asp:image><asp:label id="Label2" style="Z-INDEX: 103; LEFT: 150px; POSITION: absolute; TOP: 52px" runat="server"
				Font-Size="X-Large" ForeColor="#004040" Font-Names="Bookman Old Style" Font-Italic="True">Welcome to Tara Store Online</asp:label><asp:datalist id="MyCatList" style="Z-INDEX: 102; LEFT: 29px; POSITION: absolute; TOP: 106px"
				runat="server" Height="128px" cellpadding="3" width="154px" EnableViewState="False">
				<SelectedItemTemplate>
					<asp:HyperLink CssClass="MenuSelected" id="HyperLink2" Text='<%# DataBinder.Eval(Container.DataItem, "CategoryName") %>' NavigateUrl='<%# "CatMenu.aspx?CatID=" & DataBinder.Eval(Container.DataItem, "CategoryID") & "&selItem=" & Container.ItemIndex &  "&Show=cat" %>' runat="server" />
				</SelectedItemTemplate>
				<ItemTemplate>
					<asp:HyperLink CssClass="MenuUnselected" id="HyperLink1" Text='<%# DataBinder.Eval(Container.DataItem, "CategoryName") %>' NavigateUrl='<%# "CatMenu.aspx?CatID=" & DataBinder.Eval(Container.DataItem, "CategoryID") & "&selItem=" & Container.ItemIndex &  "&Show=cat" %>' runat="server" />
				</ItemTemplate>
			</asp:datalist><asp:datalist id="MySubCatList" style="Z-INDEX: 105; LEFT: 152px; POSITION: absolute; TOP: 302px"
				runat="server" RepeatColumns="2" RepeatDirection="Horizontal">
				<ItemTemplate>
					<table border="0" width="300">
						<tr style="MyClass">
							<td width="5">
							</td>
							<td width="180" valign="middle" align="center">
								<asp:HyperLink runat="server" id="Hyperlink5" ImageUrl='<%# "images/SubCatThumbnails/" & DataBinder.Eval(Container.DataItem, "Thumbnail") %>' CssClass="MenuSelected" NavigateUrl='<%# "CatMenu.aspx?CatID=" & DataBinder.Eval(Container.DataItem, "CategoryID") & "&SubCatID=" & DataBinder.Eval(Container.DataItem, "SubCategoryID") & "&selItem=" & Container.ItemIndex &  "&Show=prodlist"  %>'>
								</asp:HyperLink>
								<br>
								<asp:HyperLink runat="server" id="Hyperlink6" CssClass="MenuSelected" Text='<%# DataBinder.Eval(Container.DataItem, "SubCategoryName")%>' NavigateUrl='<%# "CatMenu.aspx?CatID=" & DataBinder.Eval(Container.DataItem, "CategoryID") & "&SubCatID=" & DataBinder.Eval(Container.DataItem, "SubCategoryID") & "&selItem=" & Container.ItemIndex &  "&Show=prodlist"  %>'>
								</asp:HyperLink>
							</td>
						</tr>
					</table>
				</ItemTemplate>
			</asp:datalist><asp:datalist id="MyProdList" style="Z-INDEX: 106; LEFT: 152px; POSITION: absolute; TOP: 308px"
				runat="server" RepeatColumns="2">
				<ItemTemplate>
					<table border="0" width="300">
						<tr style="MyClass">
							<td width="5">
							</td>
							<td width="180" valign="middle" align="center">
								<asp:HyperLink runat="server" id="HyperLink3" ImageUrl='<%# "images/ProductThumbnails/" & DataBinder.Eval(Container.DataItem, "Thumbnail") %>' CssClass="MenuSelected" NavigateUrl='<%# "CatMenu.aspx?ProdID=" & DataBinder.Eval(Container.DataItem, "ProductID") & "&CatID=" & DataBinder.Eval(Container.DataItem, "CategoryID") & "&SubCatID=" & DataBinder.Eval(Container.DataItem, "SubCategoryID") & "&selItem=" & Container.ItemIndex &  "&Show=prod"  %>'>
								</asp:HyperLink>
								<br>
								<asp:HyperLink runat="server" id="HyperLink4" CssClass="MenuSelected" Text='<%# DataBinder.Eval(Container.DataItem, "ModelName")%>' NavigateUrl='<%# "CatMenu.aspx?ProdID=" & DataBinder.Eval(Container.DataItem, "ProductID") & "&CatID=" & DataBinder.Eval(Container.DataItem, "CategoryID") & "&SubCatID=" & DataBinder.Eval(Container.DataItem, "SubCategoryID") & "&selItem=" & Container.ItemIndex &  "&Show=prod"  %>'>
								</asp:HyperLink>
							</td>
						</tr>
					</table>
				</ItemTemplate>
			</asp:datalist><asp:datalist id="MyProduct" style="Z-INDEX: 106; LEFT: 152px; POSITION: absolute; TOP: 308px"
				runat="server" RepeatColumns="1">
				<ItemTemplate>
					<table border="0" width="500">
						<tr style="MyClass">
							<td width="5">
							</td>
							<td width="500" valign="middle" align="center">
								<asp:HyperLink runat="server" id="Hyperlink9" CssClass="MenuSelected" Text='<%# DataBinder.Eval(Container.DataItem, "ModelName")%>' NavigateUrl='<%# "images/ProductPics/" & DataBinder.Eval(Container.DataItem, "ProductImage") %>'>
								</asp:HyperLink>
								<asp:HyperLink runat="server" id="Hyperlink10" CssClass="MenuSelected" ImageUrl='images/zoom.jpg' NavigateUrl='<%# "images/ProductPics/" & DataBinder.Eval(Container.DataItem, "ProductImage") %>'>
								</asp:HyperLink>
								<br>
								<br>
							</td>
						</tr>
						<tr style="MyClass">
							<td width="5">
							</td>
							<td width="500" valign="middle" align="left">
								<asp:label runat="server" id="Label1" CssClass="MyStyleLeftBold">Cost: </asp:label>
								<asp:label runat="server" id="Label6" CssClass="MyStyleLeft">
									<%# DataBinder.Eval(Container.DataItem, "UnitCost", "{0:c}" )%>
								</asp:label>
								<br>
								<asp:label runat="server" id="Label3" CssClass="MyStyleLeftBold">Model Number: </asp:label>
								<asp:label runat="server" id="Label7" CssClass="MyStyleLeft">
									<%# DataBinder.Eval(Container.DataItem, "ModelNumber")%>
								</asp:label>
								<br>
								<asp:label runat="server" id="Label4" CssClass="MyStyleLeftBold">Availability: </asp:label>
								<br>
								<asp:label runat="server" id="Label8" CssClass="MyStyleLeft">
									<%# DataBinder.Eval(Container.DataItem, "Availability")%>
								</asp:label>
								<br>
								<br>
								<asp:label runat="server" id="Label9" CssClass="MyStyleLeftBold">Description: </asp:label>
								<br>
								<asp:label runat="server" id="Label5" CssClass="MyStyleLeft">
									<%# DataBinder.Eval(Container.DataItem, "Description")%>
								</asp:label>
							</td>
						</tr>
					</table>
				</ItemTemplate>
			</asp:datalist></form>
	</body>
</HTML>
