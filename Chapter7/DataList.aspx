<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DataList.aspx.vb" Inherits="Chapter7.DataList" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 5px; POSITION: absolute; TOP: 4px" src="images/header2.jpg">
			<asp:Label id="Label1" style="Z-INDEX: 103; LEFT: 152px; POSITION: absolute; TOP: 56px" runat="server"
				ForeColor="DarkSlateGray" Font-Size="Medium" Font-Names="Trebuchet MS"> Binding Data to a DataList Control</asp:Label><IMG style="Z-INDEX: 102; LEFT: 19px; POSITION: absolute; TOP: 86px" src="images/menu.gif">&nbsp;&nbsp;
			<asp:DataList id="MyDL" style="Z-INDEX: 105; LEFT: 160px; POSITION: absolute; TOP: 96px" runat="server">
				<ItemTemplate>
					<b>
						<%# Container.DataItem.Key %>
					</b>(<%# DataBinder.Eval(Container.DataItem,"Value","{0:C}")%>)
				</ItemTemplate>
			</asp:DataList>
		</form>
	</body>
</HTML>
