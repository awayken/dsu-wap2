<%@ Page CodeBehind="Ch4Case3.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="Chapter4.Ch4Case3" %>
<HTML>
	<HEAD>
		<title>Tara Store Product List</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<style type="text/css"> 
		BODY { FONT-SIZE: 9pt; COLOR: #003366; FONT-FAMILY: Verdana, sans-serif } 
		.heading { FONT-SIZE: 16pt; FONT-FAMILY: trebuchet ms } 
		.product { FONT-SIZE: 10pt; COLOR: #003366; FONT-FAMILY: Verdana } 
		.over { FONT-WEIGHT: bold; FONT-SIZE: 11pt; COLOR: green; FONT-FAMILY: Verdana } 
		.under { FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: red; FONT-FAMILY: Verdana } 
		</style>
	</HEAD>
	<body ms_positioning="GridLayout">
		<form runat="server" method="get">
			<asp:Panel id="Panel1" runat="server" Width="594px" Height="273px" style="Z-INDEX: 105; LEFT: 155px; POSITION: absolute; TOP: 71px"
				HorizontalAlign="Center">
<DIV class="heading"><IMG hspace="10" src="images/logo.gif" align="right"> Tara Store Product List
					<BR>
					<BR>
				</DIV>TransformSource = (<A 
href="<% = MyXML.TransformSource %>" target=_blank>
					<% =MyXML.TransformSource %>
				</A>) <BR>DocumentSource = (<A 
href="<% = MyXML.DocumentSource %>" target=_blank>
					<% =MyXML.DocumentSource %>
				</A>) <BR><BR>
<HR style="WIDTH: 585px; HEIGHT: 1px" align="left" width="585" color="#003366" SIZE="1">
														</asp:Panel><IMG style="Z-INDEX: 102; LEFT: 22px; POSITION: absolute; TOP: 94px" src="images/menu.gif"><IMG style="Z-INDEX: 103; LEFT: 13px; POSITION: absolute; TOP: 13px" src="images/header.jpg">
		</form>
	</body>
</HTML>
