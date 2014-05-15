<%@ Page Language="vb" AutoEventWireup="false" Codebehind="HTMLButton.aspx.vb" Inherits="Chapter3.WebForm1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>HTMLButton</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 100; LEFT: 0px; POSITION: absolute; TOP: 0px" src="images/header.jpg">
			<DIV id="lblGiftIdeasMen" style="DISPLAY: inline; FONT-SIZE: 12pt; Z-INDEX: 108; LEFT: 235px; WIDTH: 250px; FONT-FAMILY: 'Trebuchet MS'; POSITION: absolute; TOP: 275px; HEIGHT: 210px"
				runat="server" ms_positioning="FlowLayout">
				<UL>
					<LI>
					Golf Ball
					<LI>
					Golf Club
					<LI>
					Male Golfer
					<LI>
					Letter Opener
					<LI>
					Business Card Holder
					<LI>
						Shamrock Paperweight</LI></UL>
			</DIV>
			<IMG style="Z-INDEX: 101; LEFT: 17px; POSITION: absolute; TOP: 85px" src="images/menu.gif"><IMG style="Z-INDEX: 102; LEFT: 134px; POSITION: absolute; TOP: 38px" src="images/waterfordgifts.jpg">
			<DIV id="lblTitle" style="DISPLAY: inline; FONT-SIZE: 15pt; Z-INDEX: 103; LEFT: 139px; WIDTH: 365px; FONT-FAMILY: 'Trebuchet MS'; POSITION: absolute; TOP: 243px; HEIGHT: 26px"
				runat="server" ms_positioning="FlowLayout">Select the gender of the gift 
				recipient.</DIV>
			<INPUT id="btnMale" style="Z-INDEX: 104; LEFT: 138px; WIDTH: 89px; POSITION: absolute; TOP: 274px; HEIGHT: 27px"
				type="button" value="Male" name="Button1" runat="server"><INPUT id="btnFemale" style="Z-INDEX: 106; LEFT: 138px; WIDTH: 89px; POSITION: absolute; TOP: 310px; HEIGHT: 27px"
				type="button" value="Female" runat="server">
			<DIV id="lblGiftIdeasWomen" style="DISPLAY: inline; FONT-SIZE: 12pt; Z-INDEX: 107; LEFT: 235px; WIDTH: 250px; FONT-FAMILY: 'Trebuchet MS'; POSITION: absolute; TOP: 275px; HEIGHT: 210px"
				runat="server" ms_positioning="FlowLayout">
				<UL>
					<LI>
					Make-Up Brush
					<LI>
					Tyrone Bell
					<LI>
					Butterfly
					<LI>
					Balmoral Vase
					<LI>
					Abbey Clock
					<LI>
					Heart Shaped Ring Holder
					<LI>
						Wellsley Picture</LI></UL>
			</DIV>
		</form>
	</body>
</HTML>
