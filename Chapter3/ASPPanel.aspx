<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ASPPanel.aspx.vb" Inherits="Chapter3.ASPPanel" %>
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
		<FORM id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 0px" src="images/header.jpg">&nbsp;&nbsp;<IMG style="Z-INDEX: 102; LEFT: 17px; POSITION: absolute; TOP: 85px" src="images/menu.gif">
			<BR>
			<IMG style="Z-INDEX: 103; LEFT: 135px; POSITION: absolute; TOP: 49px" src="images/CommunityNews.jpg">&nbsp;
			<asp:panel id="PanelListing" style="Z-INDEX: 104; LEFT: 146px; POSITION: absolute; TOP: 261px"
				runat="server" Width="171px" Height="186px" Font-Names="Trebuchet MS" Font-Size="X-Small"
				ForeColor="White" HorizontalAlign="Left" BorderWidth="2px" BorderStyle="Outset" BorderColor="#004040">
				<P align="center">
					<asp:Label id="lblHeading" runat="server" BorderColor="#004040" ForeColor="DarkSlateGray" Font-Size="Medium"
						Height="6px" Width="147px" Font-Bold="True">Current Articles</asp:Label></P>
				<P>
					<asp:CheckBox id="CB2" runat="server" ForeColor="DarkSlateGray" Text="Fishing in Ireland"></asp:CheckBox><BR>
					<asp:CheckBox id="CB4" runat="server" ForeColor="DarkSlateGray" Text="Hiking in Ireland"></asp:CheckBox><BR>
					<asp:CheckBox id="CB6" runat="server" ForeColor="DarkSlateGray" Text="Irish Music"></asp:CheckBox><BR>
					<asp:CheckBox id="CB7" runat="server" ForeColor="DarkSlateGray" Text="Travel in Ireland"></asp:CheckBox></P>
				<P align="center">
					<asp:Button id="btnRead" runat="server" Text="View Article"></asp:Button></P>
			</asp:panel>
			<asp:Panel id="PanelAboutNews" style="Z-INDEX: 105; LEFT: 352px; POSITION: absolute; TOP: 264px"
				runat="server" ForeColor="Teal" Font-Size="Small" Font-Names="Trebuchet MS" Height="180px"
				Width="235px">
				<P>Editorial Contributors Wanted</P>
				<P>Do you have a passion for irish culture?&nbsp; We are currently seeking 
					individuals with experience in journalism to contribute to our Community News 
					section.</P>
			</asp:Panel>
		</FORM>
	</body>
</HTML>
