<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Ch7Case4.aspx.vb" Inherits="Chapter7.Ch7Case4"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Ch7Case4</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 8px" src="images/header2.jpg">
			<HR style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 104px" width="100%" SIZE="1">
			<asp:DataList id="DataList1" style="Z-INDEX: 103; LEFT: 8px; POSITION: absolute; TOP: 120px" runat="server"
				BorderColor="#3366CC" BorderStyle="None" BackColor="White" CellPadding="4" GridLines="Both"
				BorderWidth="1px">
				<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
				<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
				<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
				<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
			</asp:DataList>
		</form>
	</body>
</HTML>
