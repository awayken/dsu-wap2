<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Ch8Case2.aspx.vb" Inherits="Chapter8.Ch8Case2"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Ch8Case2</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="#dc6331" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 0px" src="images/GrocerToGo/grocer_logo.gif">
			<asp:DataList id="listCategory" style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 72px"
				runat="server" BorderStyle="Solid" Font-Names="trebuchet ms" ForeColor="White" ShowFooter="False"
				BorderWidth="2px" Width="304px">
				<HeaderStyle ForeColor="White"></HeaderStyle>
				<HeaderTemplate>
					<asp:Label runat="server" id="Label1">Product Category</asp:Label>
				</HeaderTemplate>
				<AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
				<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
				<ItemTemplate>
					<asp:HyperLink id=HyperLink1 runat="server" NavigateUrl='<%# "Ch8Case2.aspx?CatID=" & DataBinder.Eval(Container.DataItem, "CategoryID") %>' Text='<%# DataBinder.Eval(Container.DataItem, "CategoryName") %>' ForeColor="White">
					</asp:HyperLink>
				</ItemTemplate>
				<HeaderStyle Font-Names="trebuchet ms" Font-Bold="True" HorizontalAlign="Center" ForeColor="#dc6331"
					VerticalAlign="Middle" BackColor="White"></HeaderStyle>
				<AlternatingItemTemplate>
					<asp:HyperLink id=HyperLink2 runat="server" NavigateUrl='<%# "Ch8Case2.aspx?CatID=" & DataBinder.Eval(Container.DataItem, "CategoryID") %>' Text='<%# DataBinder.Eval(Container.DataItem, "CategoryName") %>' ForeColor="#C04000">
					</asp:HyperLink>
				</AlternatingItemTemplate>
			</asp:DataList>
			<asp:DataList id="listProducts" style="Z-INDEX: 103; LEFT: 320px; POSITION: absolute; TOP: 0px"
				runat="server" BorderStyle="Solid" Font-Names="trebuchet ms" ForeColor="White" ShowHeader="False"
				ShowFooter="False" BorderWidth="2px" Width="600px">
				<AlternatingItemStyle BackColor="White" ForeColor="#dc6331"></AlternatingItemStyle>
				<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
				<ItemTemplate>
					<asp:Image id="Image1" ImageUrl='<%# "C:\Program Files\Microsoft.NET\SDK\v1.1" &amp; DataBinder.Eval(Container.DataItem, "ImagePath") %>' runat="server">
					</asp:Image><br />
					<asp:HyperLink id=Hyperlink3 runat="server" NavigateUrl='<%# "C:\Program Files\Microsoft.NET\SDK\v1.1\" &amp; DataBinder.Eval(Container.DataItem, "ImagePath") %>' Text='<%# DataBinder.Eval(Container.DataItem, "ProductName") %>' ForeColor="White">
					</asp:HyperLink><br />
					<asp:Label id="Label2" Text='<%# "$" & DataBinder.Eval(Container.DataItem, "UnitPrice") %>' runat="server">
					</asp:Label><br />
					<asp:Label id="Label3" Text='<%# DataBinder.Eval(Container.DataItem, "ProductDescription") %>' runat="server">
					</asp:Label>
				</ItemTemplate>
				<AlternatingItemTemplate>
					<asp:Image id="Image2" ImageUrl='<%# "C:\Program Files\Microsoft.NET\SDK\v1.1" &amp; DataBinder.Eval(Container.DataItem, "ImagePath") %>' runat="server">
					</asp:Image><br />
					<asp:HyperLink id="Hyperlink4" runat="server" NavigateUrl='<%# "C:\Program Files\Microsoft.NET\SDK\v1.1\" &amp; DataBinder.Eval(Container.DataItem, "ImagePath") %>' Text='<%# DataBinder.Eval(Container.DataItem, "ProductName") %>' ForeColor="#dc6331">
					</asp:HyperLink><br />
					<asp:Label id="Label4" Text='<%# "$" & DataBinder.Eval(Container.DataItem, "UnitPrice") %>' runat="server">
					</asp:Label><br />
					<asp:Label id="Label5" Text='<%# DataBinder.Eval(Container.DataItem, "ProductDescription") %>' runat="server">
					</asp:Label>
				</AlternatingItemTemplate>
			</asp:DataList>
		</form>
	</body>
</HTML>
