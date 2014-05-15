<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ASPValidationSummary.aspx.vb" Inherits="Chapter3.ASPValidationSummary" %>
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
			<IMG style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 0px" src="images/header.jpg">&nbsp;&nbsp;
			<asp:RegularExpressionValidator id="ValREEmail" style="Z-INDEX: 116; LEFT: 471px; POSITION: absolute; TOP: 251px"
				runat="server" Width="76px" Height="9px" Font-Names="Trebuchet MS" Font-Size="X-Small" ErrorMessage=" <br>Please submit the e-mail address as yourname@yourcompany.com"
				ControlToValidate="txtEmail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>
			<asp:RequiredFieldValidator id="ValRFEmail" style="Z-INDEX: 115; LEFT: 152px; POSITION: absolute; TOP: 251px"
				runat="server" ErrorMessage="*" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="ValRFPhone" style="Z-INDEX: 114; LEFT: 152px; POSITION: absolute; TOP: 201px"
				runat="server" ErrorMessage="*" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="ValRFLastName" style="Z-INDEX: 113; LEFT: 153px; POSITION: absolute; TOP: 170px"
				runat="server" ErrorMessage="*" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
			<asp:label id="lblEmail" style="Z-INDEX: 108; LEFT: 174px; POSITION: absolute; TOP: 248px"
				runat="server" Width="91px" Height="18px" Font-Names="Trebuchet MS" Font-Size="X-Small"
				ForeColor="#004040">E-Mail Address</asp:label>
			<asp:label id="lblPhone" style="Z-INDEX: 107; LEFT: 174px; POSITION: absolute; TOP: 200px"
				runat="server" Width="102px" Height="35px" Font-Names="Trebuchet MS" Font-Size="X-Small"
				ForeColor="#004040">Phone Number: (999) 999-9999</asp:label>
			<asp:Label id="lblLastName" style="Z-INDEX: 106; LEFT: 175px; POSITION: absolute; TOP: 167px"
				runat="server" Width="74px" Height="18px" Font-Names="Trebuchet MS" Font-Size="X-Small"
				ForeColor="#004040">Last Name</asp:Label>
			&nbsp;&nbsp;&nbsp;<IMG style="Z-INDEX: 102; LEFT: 17px; POSITION: absolute; TOP: 85px" src="images/menu.gif">&nbsp;
			<BR>
			&nbsp;
			<asp:TextBox id="txtFirstName" style="Z-INDEX: 103; LEFT: 285px; POSITION: absolute; TOP: 132px"
				runat="server"></asp:TextBox>
			<asp:TextBox id="txtLastName" style="Z-INDEX: 104; LEFT: 286px; POSITION: absolute; TOP: 165px"
				runat="server"></asp:TextBox>
			<asp:Label id="lblFirstName" style="Z-INDEX: 105; LEFT: 174px; POSITION: absolute; TOP: 131px"
				runat="server" Width="73px" Height="18px" Font-Names="Trebuchet MS" Font-Size="X-Small"
				ForeColor="#004040">First Name</asp:Label>
			<asp:Label id="lblTitle" style="Z-INDEX: 109; LEFT: 223px; POSITION: absolute; TOP: 74px" runat="server"
				Font-Names="Trebuchet MS" Font-Size="Large" ForeColor="#004040" Width="249px" Height="27px">Shipping Contact Form</asp:Label>
			<asp:TextBox id="txtPhone" style="Z-INDEX: 110; LEFT: 286px; POSITION: absolute; TOP: 203px"
				runat="server"></asp:TextBox>
			<asp:TextBox id="txtEmail" style="Z-INDEX: 111; LEFT: 286px; POSITION: absolute; TOP: 245px"
				runat="server"></asp:TextBox>
			<asp:imagebutton id="btnSubmit" style="Z-INDEX: 112; LEFT: 289px; POSITION: absolute; TOP: 286px"
				runat="server" ImageUrl="images/submitblue.gif" ImageAlign="Left"></asp:imagebutton>
			<asp:Label id="Label1" Font-Names="Trebuchet MS" Font-Size="X-Small" ForeColor="Red" style="Z-INDEX: 117; LEFT: 166px; POSITION: absolute; TOP: 329px"
				runat="server">* Indicates required fields.</asp:Label>
			<asp:RequiredFieldValidator id="ValRFirstName" style="Z-INDEX: 118; LEFT: 153px; POSITION: absolute; TOP: 132px"
				runat="server" ControlToValidate="txtFirstName" ErrorMessage="*"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator id="ValREPhone" style="Z-INDEX: 119; LEFT: 471px; POSITION: absolute; TOP: 210px"
				runat="server" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ControlToValidate="txtPhone" ErrorMessage=" <br>Please submit the phone number as (999) 999-9999"
				Font-Size="X-Small" Font-Names="Trebuchet MS" Height="12px" Width="83px" Display="None"></asp:RegularExpressionValidator>
		</FORM>
	</body>
</HTML>
