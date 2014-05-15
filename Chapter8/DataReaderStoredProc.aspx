<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DataReaderStoredProc.aspx.vb" Inherits="Chapter8.DataReaderStoredProc" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>DataReaderStoredProc</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 100; LEFT: 4px; POSITION: absolute; TOP: 1px" src="images/header2.jpg">
			<asp:Label id="Label1" style="Z-INDEX: 104; LEFT: 152px; POSITION: absolute; TOP: 41px" runat="server"
				Font-Size="X-Large" ForeColor="#004040" Font-Names="Bookman Old Style" Font-Italic="True">Welcome to Tara Store Online</asp:Label>
			<IMG style="Z-INDEX: 102; LEFT: 162px; POSITION: absolute; TOP: 84px" src="images/home.jpg">&nbsp;
			<asp:datalist id="MyList" style="Z-INDEX: 101; LEFT: 23px; POSITION: absolute; TOP: 95px" runat="server"
				Height="127px" Font-Names="Verdana" ForeColor="#004040" Font-Size="X-Small" EnableViewState="false"
				width="117px" cellspacing="0" cellpadding="3">
				<ItemTemplate>
					<asp:Label id="lblCat" Text='<%# DataBinder.Eval(Container.DataItem, "CategoryName") %>' runat="server" />
				</ItemTemplate>
			</asp:datalist>
		</form>
	</body>
</HTML>
