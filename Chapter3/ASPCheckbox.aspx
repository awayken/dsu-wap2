<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ASPCheckbox.aspx.vb" Inherits="Chapter3.ASPCheckbox" %>
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
			<IMG style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 0px" src="images/header.jpg">
			<IMG style="Z-INDEX: 102; LEFT: 17px; POSITION: absolute; TOP: 85px" src="images/menu.gif">
			<BR>
			<IMG style="Z-INDEX: 103; LEFT: 135px; POSITION: absolute; TOP: 49px" src="images/CommunityNews.jpg">
			<asp:checkbox id="CB1" style="Z-INDEX: 104; LEFT: 180px; POSITION: absolute; TOP: 339px" runat="server"
				Width="122px" Height="2px" Font-Names="Trebuchet MS" Font-Size="X-Small" ForeColor="#004040"
				Text="Fishing in Ireland"></asp:checkbox>
			<asp:checkbox id="CB2" style="Z-INDEX: 105; LEFT: 180px; POSITION: absolute; TOP: 267px" runat="server"
				Font-Names="Trebuchet MS" Font-Size="X-Small" ForeColor="#004040" Text="Current Events in Ireland"></asp:checkbox>
			<asp:checkbox id="CB3" style="Z-INDEX: 106; LEFT: 180px; POSITION: absolute; TOP: 387px" runat="server"
				Font-Names="Trebuchet MS" Font-Size="X-Small" ForeColor="#004040" Text="An Ghaeilge (The Irish Language)"></asp:checkbox>
			<asp:checkbox id="CB4" style="Z-INDEX: 107; LEFT: 180px; POSITION: absolute; TOP: 411px" runat="server"
				Font-Names="Trebuchet MS" Font-Size="X-Small" ForeColor="#004040" Text="Hiking in Ireland"></asp:checkbox>
			<asp:checkbox id="CB5" style="Z-INDEX: 108; LEFT: 180px; POSITION: absolute; TOP: 291px" runat="server"
				Font-Names="Trebuchet MS" Font-Size="X-Small" ForeColor="#004040" Text="Irish History"></asp:checkbox>
			<asp:checkbox id="CB6" style="Z-INDEX: 109; LEFT: 180px; POSITION: absolute; TOP: 315px" runat="server"
				Font-Names="Trebuchet MS" Font-Size="X-Small" ForeColor="#004040" Text="Irish Music"></asp:checkbox>
			<asp:checkbox id="CB7" style="Z-INDEX: 110; LEFT: 180px; POSITION: absolute; TOP: 363px" runat="server"
				Font-Names="Trebuchet MS" Font-Size="X-Small" ForeColor="#004040" Text="Travel in Ireland"></asp:checkbox>
			<asp:imagebutton id="btnSubmit" style="Z-INDEX: 111; LEFT: 222px; POSITION: absolute; TOP: 472px"
				runat="server" ImageUrl="images/submitblue.gif" ImageAlign="Left"></asp:imagebutton>
			<asp:Label id="lblTopics" style="Z-INDEX: 112; LEFT: 446px; POSITION: absolute; TOP: 267px"
				runat="server" ForeColor="#004040" Font-Size="X-Small" Font-Names="Trebuchet MS" Height="180px"
				Width="226px">Please select one or more topics</asp:Label>
			<asp:CheckBox id="CB8" style="Z-INDEX: 113; LEFT: 180px; POSITION: absolute; TOP: 440px" runat="server"
				Text="Sports in Ireland" ForeColor="#004040" Font-Size="X-Small" Font-Names="Trebuchet MS"></asp:CheckBox>
		</FORM>
	</body>
</HTML>
