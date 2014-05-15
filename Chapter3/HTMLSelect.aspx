<%@ Page Language="vb" AutoEventWireup="false" Codebehind="HTMLSelect.aspx.vb" Inherits="Chapter3.HTMLSelect" %>
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
			<DIV id="lblTitle" style="DISPLAY: inline; FONT-SIZE: 15pt; Z-INDEX: 105; LEFT: 150px; WIDTH: 408px; FONT-FAMILY: 'Trebuchet MS'; POSITION: absolute; TOP: 265px; HEIGHT: 26px"
				runat="server" ms_positioning="FlowLayout">
			</DIV>
			<IMG style="Z-INDEX: 102; LEFT: 17px; POSITION: absolute; TOP: 85px" src="images/menu.gif">&nbsp;
			<h1>
			</h1>
			<br>
			<IMG style="Z-INDEX: 104; LEFT: 136px; POSITION: absolute; TOP: 53px" src="images/WaterfordGifts.jpg">&nbsp;
			<br>
			<input type="submit" value="Submit" runat="server" ID="btnSubmit" NAME="btnSubmit" style="Z-INDEX: 103; LEFT: 370px; WIDTH: 106px; POSITION: absolute; TOP: 320px; HEIGHT: 24px">&nbsp;
			<IMG id="imgProduct" style="Z-INDEX: 106; LEFT: 191px; POSITION: absolute; TOP: 298px"
				src="images/tnWaterford.gif" runat="server">
			<SELECT id="CatList" style="Z-INDEX: 107; LEFT: 150px; POSITION: absolute; TOP: 320px" name="CatList"
				runat="server">
				<OPTION selected>Select a Main Category</OPTION>
			</SELECT>
			<SELECT id="ProductList" style="Z-INDEX: 108; LEFT: 350px; POSITION: absolute; TOP: 320px"
				name="ProductList" runat="server">
				<OPTION selected></OPTION>
			</SELECT>
		</FORM>
	</body>
</HTML>
