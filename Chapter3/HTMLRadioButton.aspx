<%@ Page Language="vb" AutoEventWireup="false" Codebehind="HTMLRadioButton.aspx.vb" Inherits="Chapter3.HTMLRadioButton" %>
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
		<FORM id="Form1" method="post" runat="server">
			<IMG style="Z-INDEX: 102; LEFT: 0px; POSITION: absolute; TOP: 0px" src="images/header.jpg">
			<INPUT id="btnSearch" style="Z-INDEX: 113; LEFT: 373px; POSITION: absolute; TOP: 333px"
				type="image" src="images/search.gif" name="btnSearch" runat="server">&nbsp; <INPUT style="Z-INDEX: 111; LEFT: 310px; WIDTH: 20px; POSITION: absolute; TOP: 369px; HEIGHT: 20px"
				type="radio" id="rdBooks" name="category" runat="server"> <INPUT style="Z-INDEX: 110; LEFT: 310px; WIDTH: 20px; POSITION: absolute; TOP: 355px; HEIGHT: 20px"
				type="radio" id="rdFood" name="category" runat="server"> <INPUT style="Z-INDEX: 109; LEFT: 310px; WIDTH: 20px; POSITION: absolute; TOP: 340px; HEIGHT: 20px"
				type="radio" id="rdClothing" name="category" runat="server"> <INPUT style="Z-INDEX: 108; LEFT: 310px; WIDTH: 20px; POSITION: absolute; TOP: 327px; HEIGHT: 20px"
				type="radio" id="rdPottery" name="category" runat="server"> <INPUT style="Z-INDEX: 107; LEFT: 310px; WIDTH: 20px; POSITION: absolute; TOP: 313px; HEIGHT: 20px"
				type="radio" id="rdCrystal" name="category" runat="server"> <INPUT style="Z-INDEX: 106; LEFT: 310px; WIDTH: 20px; POSITION: absolute; TOP: 299px; HEIGHT: 20px"
				type="radio" id="rdJewelry" name="category" runat="server"> <INPUT style="Z-INDEX: 105; LEFT: 310px; WIDTH: 20px; POSITION: absolute; TOP: 285px; HEIGHT: 20px"
				type="radio" id="rdGifts" name="category" runat="server"> <IMG style="Z-INDEX: 103; LEFT: 17px; POSITION: absolute; TOP: 85px" src="images/menu.gif">
			<DIV id="lblTitle" style="DISPLAY: inline; FONT-SIZE: 15pt; Z-INDEX: 104; LEFT: 142px; WIDTH: 365px; FONT-FAMILY: 'Trebuchet MS'; POSITION: absolute; TOP: 246px; HEIGHT: 26px"
				runat="server" ms_positioning="FlowLayout" align="center">
				Select a category
			</DIV>
			<IMG style="Z-INDEX: 112; LEFT: 157px; POSITION: absolute; TOP: 35px" src="images/GiftFinder.jpg"
				id="imgTop" runat="server"> <IMG style="Z-INDEX: 101; LEFT: 203px; POSITION: absolute; TOP: 281px" src="images/shortmenu.gif">&nbsp;
			<INPUT id="rdBridal" style="Z-INDEX: 114; LEFT: 310px; POSITION: absolute; TOP: 383px"
				type="radio" value="Radio1" name="category" runat="server">
		</FORM>
	</body>
</HTML>
