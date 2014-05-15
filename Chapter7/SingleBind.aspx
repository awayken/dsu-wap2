<%@ Page Language="vb" AutoEventWireup="false" Codebehind="SingleBind.aspx.vb" Inherits="Chapter7.SingleBind" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title></title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 4px; POSITION: absolute; TOP: 6px" src="images/header2.jpg">
			<IMG style="Z-INDEX: 102; LEFT: 21px; POSITION: absolute; TOP: 96px" src="images/menu.gif">&nbsp;&nbsp;
			<asp:Label id="Label1" style="Z-INDEX: 109; LEFT: 218px; POSITION: absolute; TOP: 71px" runat="server"
				Font-Size="Medium" ForeColor="DarkSlateGray" Font-Names="Trebuchet MS">Single Data Binding</asp:Label>
			<asp:label id="lblImageURL" style="Z-INDEX: 104; LEFT: 168px; POSITION: absolute; TOP: 132px"
				runat="server" Height="30px" Width="100px" Font-Names="Trebuchet MS" Font-Size="X-Small">
				 
			</asp:label>
			<asp:TextBox id=txtImageURL style="Z-INDEX: 110; LEFT: 167px; POSITION: absolute; TOP: 193px" runat="server" Width="104px">
			</asp:TextBox>
			<asp:image id="imgImageURL" style="Z-INDEX: 108; LEFT: 166px; POSITION: absolute; TOP: 255px"
				runat="server"  >
			</asp:image>
			<asp:label id="Label4" style="Z-INDEX: 105; LEFT: 293px; POSITION: absolute; TOP: 131px" runat="server"
				Height="38px" Width="184px" Font-Names="Trebuchet MS" Font-Size="X-Small">Displays the image name using an ASP.NET label control</asp:label>
			<asp:label id="Label5" style="Z-INDEX: 106; LEFT: 293px; POSITION: absolute; TOP: 194px" runat="server"
				Height="40px" Width="192px" Font-Names="Trebuchet MS" Font-Size="X-Small">Display the image name in an ASP.NET textbox control</asp:label>
			<asp:label id="Label7" style="Z-INDEX: 107; LEFT: 293px; POSITION: absolute; TOP: 254px" runat="server"
				Height="54px" Width="190px" Font-Names="Trebuchet MS" Font-Size="X-Small">Displays the image name in an ASP.NET image button control</asp:label>
			</form>
	</body>
</HTML>
