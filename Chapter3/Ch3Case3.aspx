<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Ch3Case3.aspx.vb" Inherits="Chapter3.Ch3Case3" description="Tara Store shipping web form."%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Tara Store Shipping Form</title>
		<meta name="keywords" content="tara, store, webform, shipping, irish products">
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" text="#000000" bgColor="#ffffff">
		<form id="Form1" method="post" runat="server" style="FONT-FAMILY: Arial, Sans-Serif">
			<IMG style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" src="images/header.jpg"><IMG style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 88px" src="images/shortmenu.gif">
			<DIV style="DISPLAY: inline; Z-INDEX: 103; LEFT: 232px; WIDTH: 440px; POSITION: absolute; TOP: 80px; HEIGHT: 32px"
				align="center" ms_positioning="FlowLayout">
				<H1>Tara Store Shipping Form</H1>
			</DIV>
			<asp:TextBox id="txtFullName" style="Z-INDEX: 104; LEFT: 344px; POSITION: absolute; TOP: 152px"
				runat="server" Width="310px"></asp:TextBox>
			<asp:TextBox id="txtAddress" style="Z-INDEX: 105; LEFT: 344px; POSITION: absolute; TOP: 184px"
				runat="server" Width="310px" Height="60px" Rows="5" TextMode="MultiLine"></asp:TextBox>
			<asp:TextBox id="txtPhone" style="Z-INDEX: 106; LEFT: 344px; POSITION: absolute; TOP: 256px"
				runat="server" Width="310px"></asp:TextBox>
			<asp:TextBox id="txtEmail" style="Z-INDEX: 107; LEFT: 344px; POSITION: absolute; TOP: 288px"
				runat="server" Width="310px"></asp:TextBox>
			<DIV style="DISPLAY: inline; Z-INDEX: 108; LEFT: 240px; WIDTH: 94px; POSITION: absolute; TOP: 152px; HEIGHT: 8px"
				align="right" ms_positioning="FlowLayout">Full Name:</DIV>
			<DIV style="DISPLAY: inline; Z-INDEX: 109; LEFT: 240px; WIDTH: 94px; POSITION: absolute; TOP: 184px; HEIGHT: 18px"
				align="right" ms_positioning="FlowLayout">Address:</DIV>
			<DIV style="DISPLAY: inline; Z-INDEX: 110; LEFT: 224px; WIDTH: 110px; POSITION: absolute; TOP: 256px; HEIGHT: 18px"
				align="right" ms_positioning="FlowLayout">Phone Number:</DIV>
			<DIV style="DISPLAY: inline; Z-INDEX: 111; LEFT: 224px; WIDTH: 112px; POSITION: absolute; TOP: 288px; HEIGHT: 18px"
				align="right" ms_positioning="FlowLayout">Email Address:</DIV>
			<asp:Button id="btnSubmit" style="Z-INDEX: 112; LEFT: 344px; POSITION: absolute; TOP: 328px"
				runat="server" Width="75px" Text="Submit"></asp:Button>
			<asp:Button id="btnClear" style="Z-INDEX: 113; LEFT: 432px; POSITION: absolute; TOP: 328px"
				runat="server" Width="75px" Text="Clear"></asp:Button>
			<asp:RequiredFieldValidator id="reqFullName" style="Z-INDEX: 114; LEFT: 664px; POSITION: absolute; TOP: 152px"
				runat="server" ErrorMessage="*" ControlToValidate="txtFullName"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="reqAddress" style="Z-INDEX: 115; LEFT: 664px; POSITION: absolute; TOP: 184px"
				runat="server" ErrorMessage="*" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="reqPhone" style="Z-INDEX: 116; LEFT: 664px; POSITION: absolute; TOP: 256px"
				runat="server" ErrorMessage="*" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="reqEmail" style="Z-INDEX: 117; LEFT: 664px; POSITION: absolute; TOP: 288px"
				runat="server" ErrorMessage="*" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator id="expPhone" style="Z-INDEX: 118; LEFT: 24px; POSITION: absolute; TOP: 248px" runat="server"
				Width="190px" ErrorMessage="Phone numbers must be in the form (999) 999-9999" ControlToValidate="txtPhone" Font-Size="X-Small"
				ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
			<asp:RegularExpressionValidator id="expEmail" style="Z-INDEX: 119; LEFT: 24px; POSITION: absolute; TOP: 280px" runat="server"
				Width="190px" ErrorMessage="Email address must be in the form name@domain.com" ControlToValidate="txtEmail"
				Font-Size="X-Small" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
			<asp:Label id="lblReqError" style="Z-INDEX: 120; LEFT: 664px; POSITION: absolute; TOP: 328px"
				runat="server" Font-Size="X-Small" ForeColor="Red">* required field</asp:Label>
			<asp:Label id="lblThanks" style="Z-INDEX: 121; LEFT: 344px; POSITION: absolute; TOP: 376px"
				runat="server">Please complete the form above.</asp:Label>
		</form>
	</body>
</HTML>
