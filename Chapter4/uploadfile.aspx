<%@ Page Language="vb" AutoEventWireup="false" Codebehind="uploadfile.aspx.vb" Inherits="Chapter4.uploadfile" %>
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
		<FORM id="Form1" method="post" runat="server" enctype="multipart/form-data">
			<IMG style="Z-INDEX: 101; LEFT: 17px; POSITION: absolute; TOP: 88px" src="images/menu.gif">&nbsp;
			<IMG style="Z-INDEX: 105; LEFT: 143px; POSITION: absolute; TOP: 39px" src="images/uploadheader.jpg">&nbsp;
			<INPUT id="txtFileName" style="Z-INDEX: 103; LEFT: 330px; WIDTH: 230px; POSITION: absolute; TOP: 338px; HEIGHT: 22px"
				tabIndex="2" type="text" name="txtFileName" runat="server" size="33">&nbsp;&nbsp;&nbsp;
			<INPUT id="btnUpload" style="Z-INDEX: 102; LEFT: 334px; POSITION: absolute; TOP: 375px"
				type="button" value="Upload the Image" name="btnUpload" runat="server">
			<DIV id="lblDirections" style="DISPLAY: inline; FONT-SIZE: 10pt; Z-INDEX: 104; LEFT: 148px; WIDTH: 165px; FONT-FAMILY: 'Trebuchet MS'; POSITION: absolute; TOP: 338px; HEIGHT: 157px"
				runat="server">
				<P>Enter a new file name.
				</P>
				<P>If you leave this blank, you cannot upload the file.
				</P>
				<P>If you already have a file with the same name, your file will be overwritten!</P>
			</DIV>
			<asp:HyperLink id="HyperLink1" style="Z-INDEX: 106; LEFT: 333px; POSITION: absolute; TOP: 413px"
				runat="server" Font-Size="Medium" Visible="False">Click here to view your file.</asp:HyperLink><asp:label id="Label1" style="Z-INDEX: 107; LEFT: 150px; POSITION: absolute; TOP: 258px" runat="server"
				Font-Names="Trebuchet MS" Font-Size="Medium" ForeColor="DarkSlateGray">Browse to locate a file to upload.</asp:label><INPUT id="uploadFilePath" style="Z-INDEX: 108; LEFT: 152px; POSITION: absolute; TOP: 296px; HEIGHT: 22px"
				type="file" size="50" name="uploadFilePath" runat="server"></FORM>
		</FORM>
	</body>
</HTML>
