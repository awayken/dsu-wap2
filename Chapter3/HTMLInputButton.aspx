<%@ Page Language="vb" AutoEventWireup="false" Codebehind="HTMLInputButton.aspx.vb" Inherits="Chapter3.HTMLInputButton" %>
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
			<IMG style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 0px" src="images/header.jpg">&nbsp;
			<IMG style="Z-INDEX: 102; LEFT: 17px; POSITION: absolute; TOP: 85px" src="images/menu.gif">
			<DIV id="lblTitle" style="DISPLAY: inline; FONT-SIZE: 15pt; Z-INDEX: 103; LEFT: 139px; WIDTH: 408px; FONT-FAMILY: 'Trebuchet MS'; POSITION: absolute; TOP: 243px; HEIGHT: 26px"
				runat="server" ms_positioning="FlowLayout">
			</DIV>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<DIV id="lblUsername" style="DISPLAY: inline; Z-INDEX: 104; LEFT: 316px; WIDTH: 85px; FONT-FAMILY: 'Trebuchet MS'; POSITION: absolute; TOP: 281px; HEIGHT: 22px"
				runat="server" ms_positioning="FlowLayout">
				Username
			</DIV>
			<DIV id="lblPassword" style="DISPLAY: inline; Z-INDEX: 105; LEFT: 316px; WIDTH: 85px; FONT-FAMILY: 'Trebuchet MS'; POSITION: absolute; TOP: 311px; HEIGHT: 22px"
				runat="server" ms_positioning="FlowLayout">
				Password
			</DIV>
			<IMG style="Z-INDEX: 106; LEFT: 136px; POSITION: absolute; TOP: 38px" src="images/CustomerSupport.jpg">
			<DIV id="lblHelp" style="DISPLAY: inline; Z-INDEX: 107; LEFT: 144px; WIDTH: 344px; FONT-FAMILY: 'Trebuchet MS'; POSITION: absolute; TOP: 381px; HEIGHT: 163px"
				runat="server" ms_positioning="FlowLayout">
				<P>
					Please sign in using the username and password that you were provided when you 
					signed up for a Tara Store Customer Account.
				</P>
				<P>
					If you don't know your username or password, you can mail us at <A href="mailto:info@tarastore.com">
						info@tarastore.com</A> or call us at 1-800-555-5555.
				</P>
			</DIV>
			<INPUT id="txtUsername" style="Z-INDEX: 108; LEFT: 145px; POSITION: absolute; TOP: 280px"
				type="text" name="Text1" runat="server"><INPUT id="txtPassword" style="Z-INDEX: 109; LEFT: 145px; POSITION: absolute; TOP: 310px"
				type="password" name="Password1" runat="server"><INPUT id="btnSubmit" style="Z-INDEX: 110; LEFT: 150px; POSITION: absolute; TOP: 345px"
				type="submit" value="Sign In" name="Submit1" runat="server"><INPUT id="btnReset" style="Z-INDEX: 111; LEFT: 230px; POSITION: absolute; TOP: 345px"
				type="reset" value="Reset" runat="server"><INPUT id="btnHelp" style="Z-INDEX: 112; LEFT: 450px; POSITION: absolute; TOP: 345px" type="button"
				value="Help" name="Button1" runat="server">
		</FORM>
	</body>
</HTML>
