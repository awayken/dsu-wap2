<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Ch4Case7Login.aspx.vb" Inherits="Chapter4.Ch4Case7Login"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Ch4Case7Login</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" style="FONT-SIZE: x-small; FONT-FAMILY: Verdana, Arial, Sans-Serif" method="post"
			runat="server">
			<IMG style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" src="images/header.jpg"><IMG style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 96px" src="images/menu.gif"><IMG style="Z-INDEX: 103; LEFT: 144px; POSITION: absolute; TOP: 56px" src="images/uploadheader.jpg">&nbsp;
			<asp:textbox id="txtUsername" style="Z-INDEX: 104; LEFT: 224px; POSITION: absolute; TOP: 256px"
				runat="server" Width="192px"></asp:textbox><asp:textbox id="txtPassword" style="Z-INDEX: 105; LEFT: 224px; POSITION: absolute; TOP: 288px"
				runat="server" Width="192px"></asp:textbox><asp:label id="lblUsername" style="Z-INDEX: 106; LEFT: 144px; POSITION: absolute; TOP: 256px"
				runat="server" Width="8px">Username:</asp:label><asp:label id="lblPassword" style="Z-INDEX: 107; LEFT: 144px; POSITION: absolute; TOP: 288px"
				runat="server" Width="32px" Height="8px">Password:</asp:label><asp:imagebutton id="btnUpload" style="Z-INDEX: 108; LEFT: 616px; POSITION: absolute; TOP: 280px"
				runat="server" ImageUrl="images/upload.gif"></asp:imagebutton><INPUT id="fileUpload" style="Z-INDEX: 109; LEFT: 488px; WIDTH: 336px; POSITION: absolute; TOP: 216px; HEIGHT: 22px"
				type="file" size="36" name="fileUpload" runat="server">
			<asp:textbox id="txtUploadFileName" style="Z-INDEX: 110; LEFT: 568px; POSITION: absolute; TOP: 248px"
				runat="server" Width="256px"></asp:textbox><asp:label id="lblUploadFileName" style="Z-INDEX: 111; LEFT: 488px; POSITION: absolute; TOP: 248px"
				runat="server">File Name:</asp:label>
			<DIV id="lblUploadInst" style="DISPLAY: inline; Z-INDEX: 112; LEFT: 488px; WIDTH: 336px; POSITION: absolute; TOP: 80px; HEIGHT: 128px"
				runat="server" ms_positioning="FlowLayout">
				<P>First click the "Browse" button and select the file you wish to upload.</P>
				<P>Then type a file name for the file.</P>
				<P>Finally, click the "Upload" button to complete the action.</P>
			</DIV>
			<asp:button id="btnSignIn" style="Z-INDEX: 113; LEFT: 224px; POSITION: absolute; TOP: 320px"
				runat="server" Width="80px" Text="Sign In"></asp:button><asp:hyperlink id="linkUpload" style="Z-INDEX: 114; LEFT: 492px; POSITION: absolute; TOP: 312px"
				runat="server">Upload successful!  Click here to view your folder.</asp:hyperlink><asp:button id="btnSignOut" style="Z-INDEX: 115; LEFT: 336px; POSITION: absolute; TOP: 320px"
				runat="server" Width="80px" Text="Sign Out"></asp:button>
			<asp:Label id="lblError" style="Z-INDEX: 116; LEFT: 144px; POSITION: absolute; TOP: 360px"
				runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>
			<asp:RegularExpressionValidator id="reUploadFileName" style="Z-INDEX: 117; LEFT: 496px; POSITION: absolute; TOP: 344px"
				runat="server" Font-Bold="True" ErrorMessage="You must enter a correct file name." ControlToValidate="txtUploadFileName"
				ValidationExpression="\w(\w)*.\w{3}" Enabled="False"></asp:RegularExpressionValidator></form>
	</body>
</HTML>
