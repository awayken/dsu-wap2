<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Exam2_2.aspx.vb" Inherits="Chapter8.Exam2_2"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Exam2_2</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" src="images/header.jpg"><IMG style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 96px" src="images/menu_short.gif">
			<asp:DataGrid id=MyDG style="Z-INDEX: 103; LEFT: 152px; POSITION: absolute; TOP: 80px" runat="server" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Vertical" DataSource="<%# DataView1 %>" DataKeyField="stor_id">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
				<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
				<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
				<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" HeaderText="Edit Store" CancelText="Cancel"
						EditText="Edit"></asp:EditCommandColumn>
					<asp:ButtonColumn Text="Delete" HeaderText="Delete Store" CommandName="Delete"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="#999999" Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
		</form>
	</body>
</HTML>
