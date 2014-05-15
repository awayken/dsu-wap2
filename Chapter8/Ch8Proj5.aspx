<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Ch8Proj5.aspx.vb" Inherits="Chapter8.Ch8Proj5" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Ch8Proj5</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="Ch8Proj5.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:label id="lblDirections" style="Z-INDEX: 110; LEFT: 286px; POSITION: absolute; TOP: 148px"
				runat="server" Width="178px" Height="38px">Label</asp:label><IMG style="Z-INDEX: 102; LEFT: 9px; POSITION: absolute; TOP: 7px" src="images/Northwind/michigan2.jpg"><IMG style="Z-INDEX: 103; LEFT: 493px; POSITION: absolute; TOP: 62px" src="images/Northwind/dwebcamthumbtea.jpg">
			<asp:label id="lblCompanyName" style="Z-INDEX: 104; LEFT: 206px; POSITION: absolute; TOP: 16px"
				runat="server" CssClass="MyStyleHead_Large">Label</asp:label><asp:label id="lblDescription" style="Z-INDEX: 105; LEFT: 206px; POSITION: absolute; TOP: 51px"
				runat="server" Width="202px" Height="38px">Label</asp:label><asp:label id="lblHeading" style="Z-INDEX: 107; LEFT: 286px; POSITION: absolute; TOP: 116px"
				runat="server" CssClass="MyStyleHead_Medium">Label</asp:label><asp:datalist id="CategoryList" style="Z-INDEX: 108; LEFT: 12px; POSITION: absolute; TOP: 256px"
				runat="server" Width="186px" BackColor="Lavender" EnableViewState="False" BorderColor="#004040" BorderWidth="1px" GridLines="Horizontal" ShowFooter="False"
				HorizontalAlign="Left">
				<SelectedItemStyle BackColor="#FFE0C0"></SelectedItemStyle>
				<HeaderTemplate>
					Category Name
				</HeaderTemplate>
				<SelectedItemTemplate>
					<table>
						<tr>
							<td>
								<asp:HyperLink CssClass="MenuSelected" id="Hyperlink7" ImageUrl='<%# "images/Northwind/bullet.gif" %>' NavigateUrl='<%# "Ch8Proj5.aspx?CategoryID=" & DataBinder.Eval(Container.DataItem, "CategoryID") & "&selItem=" & Container.ItemIndex &  "&Show=prodlist" %>' runat="server" />
							</td>
							<td>
								<asp:HyperLink CssClass="MenuSelected" id="HyperLink2" Text='<%# DataBinder.Eval(Container.DataItem, "CategoryName") %>' NavigateUrl='<%# "Ch8Proj5.aspx?CategoryID=" & DataBinder.Eval(Container.DataItem, "CategoryID") & "&selItem=" & Container.ItemIndex &  "&Show=prodlist" %>' runat="server" />
						</tr>
					</table>
				</SelectedItemTemplate>
				<ItemTemplate>
					<table>
						<tr>
							<td>
								<asp:HyperLink CssClass="MenuSelected" id="Hyperlink1" ImageUrl='<%# "images/Northwind/bullet.gif" %>' NavigateUrl='<%# "Ch8Proj5.aspx?CategoryID=" & DataBinder.Eval(Container.DataItem, "CategoryID") & "&selItem=" & Container.ItemIndex &  "&Show=prodlist" %>' runat="server" />
							</td>
							<td>
								<asp:HyperLink CssClass="MenuSelected" id="Hyperlink3" Text='<%# DataBinder.Eval(Container.DataItem, "CategoryName") %>' NavigateUrl='<%# "Ch8Proj5.aspx?CategoryID=" & DataBinder.Eval(Container.DataItem, "CategoryID") & "&selItem=" & Container.ItemIndex &  "&Show=prodlist" %>' runat="server" />
						</tr>
					</table>
				</ItemTemplate>
				<HeaderStyle Font-Size="X-Small" Font-Names="Verdana" HorizontalAlign="Center" ForeColor="White"
					BackColor="#004040"></HeaderStyle>
			</asp:datalist><asp:datalist id="ProductList" style="Z-INDEX: 109; LEFT: 473px; POSITION: absolute; TOP: 259px"
				runat="server" Width="139px" Height="42px" BackColor="#FFE0C0" EnableViewState="False" cellpadding="1" RepeatColumns="1"
				BorderColor="#004040" BorderStyle="Solid" BorderWidth="1px" CSSclass="tabletop" GridLines="Both" HorizontalAlign="Left">
				<SelectedItemStyle BackColor="Lavender"></SelectedItemStyle>
				<HeaderTemplate>
					Product List
				</HeaderTemplate>
				<SelectedItemTemplate>
					<table>
						<tr>
							<td>
								<asp:HyperLink CssClass="MenuSelected" id="Hyperlink6" ImageUrl='<%# "images/Northwind/bullet.gif" %>' NavigateUrl='<%# "Ch8Proj5.aspx?ProductID=" & DataBinder.Eval(Container.DataItem, "ProductID") & "&CategoryID=" & DataBinder.Eval(Container.DataItem, "CategoryID") & "&selItem=" & Container.ItemIndex &  "&Show=prod"  %>' runat="server" />
							</td>
							<td>
								<asp:HyperLink runat="server" id="Hyperlink8" CssClass="MenuSelected" Text='<%# DataBinder.Eval(Container.DataItem, "ProductName")%>' NavigateUrl='<%# "Ch8Proj5.aspx?ProductID=" & DataBinder.Eval(Container.DataItem, "ProductID") & "&CategoryID=" & DataBinder.Eval(Container.DataItem, "CategoryID") & "&selItem=" & Container.ItemIndex &  "&Show=prod"  %>' />
							</td>
						</tr>
					</table>
				</SelectedItemTemplate>
				<ItemTemplate>
					<table border="0">
						<tr>
							<td>
								<asp:HyperLink CssClass="MenuSelected" id="Hyperlink5" ImageUrl='<%# "images/Northwind/bullet.gif" %>' NavigateUrl='<%# "Ch8Proj5.aspx?ProductID=" & DataBinder.Eval(Container.DataItem, "ProductID") & "&CategoryID=" & DataBinder.Eval(Container.DataItem, "CategoryID") & "&selItem=" & Container.ItemIndex &  "&Show=prod"  %>' runat="server" />
							</td>
							<td>
								<asp:HyperLink runat="server" id="HyperLink4" CssClass="MenuSelected" Text='<%# DataBinder.Eval(Container.DataItem, "ProductName")%>' NavigateUrl='<%# "Ch8Proj5.aspx?ProductID=" & DataBinder.Eval(Container.DataItem, "ProductID") & "&CategoryID=" & DataBinder.Eval(Container.DataItem, "CategoryID") & "&selItem=" & Container.ItemIndex &  "&Show=prod"  %>' />
							</td>
						</tr>
					</table>
				</ItemTemplate>
				<HeaderStyle Font-Size="X-Small" Font-Names="Verdana" HorizontalAlign="Center" ForeColor="White"
					BackColor="#004040"></HeaderStyle>
			</asp:datalist><asp:datalist id="Product" style="Z-INDEX: 106; LEFT: 220px; POSITION: absolute; TOP: 258px" runat="server"
				RepeatColumns="1" BackColor="Transparent" EnableViewState="False" width="238px" cellpadding="1" BorderColor="#FFE0C0"
				BorderStyle="Solid" BorderWidth="1px" GridLines="Both">
				<ItemTemplate>
					<table border="0">
						<tr style="MyClass">
							<td width="5">
							</td>
							<td valign="middle" align="center">
								<br>
								<asp:Label runat="server" id="Hyperlink9" CssClass="MyStyleHead_Small" Text='<%# DataBinder.Eval(Container.DataItem, "ProductName")%>' />
								<br>
								<hr color="#FFE0C0">
								<br>
							</td>
						</tr>
						<tr style="MyClass">
							<td width="15">
							</td>
							<td valign="middle" align="left">
								<asp:label runat="server" id="Label1" CssClass="MyStyleLeftBold">Price: </asp:label>
								<asp:label runat="server" id="Label6" CssClass="MyStyleLeft">
									<%# DataBinder.Eval(Container.DataItem, "UnitPrice", "{0:c}" )%>
								</asp:label>
								<br>
								<asp:label runat="server" id="Label3" CssClass="MyStyleLeftBold">Product ID: </asp:label>
								<asp:label runat="server" id="Label7" CssClass="MyStyleLeft">
									<%# DataBinder.Eval(Container.DataItem, "ProductID")%>
								</asp:label>
								<br>
								<asp:label runat="server" id="Label2" CssClass="MyStyleLeftBold">Quantity per unit: </asp:label>
								<br>
								<asp:label runat="server" id="Label10" CssClass="MyStyleLeft">
									<%# DataBinder.Eval(Container.DataItem, "QuantityPerUnit")%>
								</asp:label>
								<br>
								<br>
								<asp:label runat="server" id="Label8" CssClass="MyStyleLeftBold">Units in stock: </asp:label>
								<asp:label runat="server" id="Label4" CssClass="MyStyleLeft">
									<%# DataBinder.Eval(Container.DataItem, "UnitsInStock")%>
								</asp:label>
								<br>
								<asp:label runat="server" id="Label5" CssClass="MyStyleLeftBold">Units on order: </asp:label>
								<asp:label runat="server" id="Label9" CssClass="MyStyleLeft">
									<%# DataBinder.Eval(Container.DataItem, "UnitsOnOrder")%>
								</asp:label>
								<br>
								<asp:label runat="server" id="Label11" CssClass="MyStyleLeftBold">Reorder level: </asp:label>
								<asp:label runat="server" id="Label12" CssClass="MyStyleLeft">
									<%# DataBinder.Eval(Container.DataItem, "ReorderLevel")%>
								</asp:label>
								<br>
								<br>
								<asp:label runat="server" id="Label13" CssClass="MyStyleLeftBold">Discontinued: </asp:label>
								<asp:label runat="server" id="Label14" CssClass="MyStyleLeft">
									<%# DataBinder.Eval(Container.DataItem, "Discontinued")%>
								</asp:label>
								<br>
								<br>
							</td>
						</tr>
					</table>
				</ItemTemplate>
			</asp:datalist>
		</form>
	</body>
</HTML>
