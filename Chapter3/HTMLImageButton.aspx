<%@ Page Language="vb" AutoEventWireup="false" Codebehind="HTMLImageButton.aspx.vb" Inherits="Chapter3.HTMLImageButton" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>HTMLImageButton</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<FORM id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 0px" src="images/header.jpg"><INPUT id="btnFemale" style="Z-INDEX: 108; LEFT: 150px; POSITION: absolute; TOP: 315px"
				type="image" src="images/Female.gif" value="Button" name="btnFemale" runat="server">
			<IMG style="Z-INDEX: 102; LEFT: 17px; POSITION: absolute; TOP: 85px" src="images/menu.gif">&nbsp;&nbsp;
			<DIV id="lblTitle" style="DISPLAY: inline; FONT-SIZE: 15pt; Z-INDEX: 103; LEFT: 139px; WIDTH: 365px; FONT-FAMILY: 'Trebuchet MS'; POSITION: absolute; TOP: 243px; HEIGHT: 26px"
				runat="server" ms_positioning="FlowLayout">
				Select the gender of the gift recipient.
			</DIV>
			<DIV id="lblGiftIdeasWomen" style="DISPLAY: inline; Z-INDEX: 104; LEFT: 235px; WIDTH: 250px; FONT-FAMILY: 'Trebuchet MS'; POSITION: absolute; TOP: 275px; HEIGHT: 210px; BACKGROUND-COLOR: white"
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
						Wellsley Picture Frame
					</LI>
				</UL>
			</DIV>
			<IMG style="Z-INDEX: 105; LEFT: 134px; POSITION: absolute; TOP: 38px" src="images/WaterfordGifts.jpg">
			<DIV id="lblGiftIdeasMen" style="DISPLAY: inline; Z-INDEX: 106; LEFT: 235px; WIDTH: 250px; FONT-FAMILY: 'Trebuchet MS'; POSITION: absolute; TOP: 275px; HEIGHT: 210px; BACKGROUND-COLOR: white"
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
						Shamrock Paperweight
					</LI>
				</UL>
			</DIV>
			&nbsp;&nbsp; <INPUT id="btnMale" style="Z-INDEX: 107; LEFT: 150px; POSITION: absolute; TOP: 280px" type="image"
				value="Button" name="btnMale" runat="server" src="images/Male.gif"> <IMG id="imgLogo" style="Z-INDEX: 109; LEFT: 40px; POSITION: absolute; TOP: 390px" alt=""
				src="images/logo.gif" name="imgLogo" runat="server">
		</FORM>
	</body>
</HTML>
