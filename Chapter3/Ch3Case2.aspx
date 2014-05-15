<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Ch3Case2.aspx.vb" Inherits="Chapter3.Ch3Case2" description="Lists products from the Tara Store and allows you to purchase them."%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Tara Store Product List Page</title>
		<meta content="tara, store, cart" name="keywords">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body text="#000000" bgColor="#ffffff" MS_POSITIONING="GridLayout">
		<form id="Form1" style="FONT-FAMILY: Arial" method="post" runat="server">
			<IMG style="Z-INDEX: 100; LEFT: 8px; POSITION: absolute; TOP: 8px" src="images/waterfordgifts.jpg">
			<asp:label id="lblBrush" style="Z-INDEX: 127; LEFT: 664px; POSITION: absolute; TOP: 400px"
				runat="server" Width="16px" Height="8px" Font-Size="X-Small">25.00</asp:label><asp:label id="lblOpener" style="Z-INDEX: 126; LEFT: 488px; POSITION: absolute; TOP: 400px"
				runat="server" Width="16px" Height="8px" Font-Size="X-Small">35.00</asp:label><asp:label id="lblPaperweight" style="Z-INDEX: 125; LEFT: 344px; POSITION: absolute; TOP: 416px"
				runat="server" Width="16px" Height="8px" Font-Size="X-Small">45.00</asp:label><asp:button id="btnMakeupBrush" style="Z-INDEX: 121; LEFT: 624px; POSITION: absolute; TOP: 448px"
				runat="server" Width="112px" Text="Add to My Cart"></asp:button><asp:button id="btnLetterOpener" style="Z-INDEX: 120; LEFT: 448px; POSITION: absolute; TOP: 448px"
				runat="server" Width="112px" Text="Add to My Cart"></asp:button><asp:button id="btnPaperweight" style="Z-INDEX: 119; LEFT: 304px; POSITION: absolute; TOP: 448px"
				runat="server" Width="112px" Text="Add to My Cart"></asp:button><asp:button id="btnBusinessCard" style="Z-INDEX: 118; LEFT: 168px; POSITION: absolute; TOP: 448px"
				runat="server" Width="112px" Text="Add to My Cart"></asp:button>
			<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: x-small; Z-INDEX: 115; LEFT: 440px; WIDTH: 128px; POSITION: absolute; TOP: 368px; HEIGHT: 8px"
				align="center" noWrap ms_positioning="FlowLayout">Waterford<BR>
				Letter Opener</DIV>
			<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: x-small; Z-INDEX: 114; LEFT: 296px; WIDTH: 128px; POSITION: absolute; TOP: 368px; HEIGHT: 8px"
				align="center" noWrap ms_positioning="FlowLayout">Waterford<BR>
				Shamrock<BR>
				Paperweight</DIV>
			<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: x-small; Z-INDEX: 113; LEFT: 160px; WIDTH: 128px; POSITION: absolute; TOP: 368px; HEIGHT: 8px"
				align="center" noWrap ms_positioning="FlowLayout">
				<P>Waterford<BR>
					Business Card<BR>
					Holder</P>
			</DIV>
			<HR style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 216px" width="100%" SIZE="1">
			<IMG style="Z-INDEX: 102; LEFT: 16px; POSITION: absolute; TOP: 232px" src="images/512.jpg"><IMG style="Z-INDEX: 103; LEFT: 160px; POSITION: absolute; TOP: 240px" src="images/529.gif"><IMG style="Z-INDEX: 104; LEFT: 312px; POSITION: absolute; TOP: 240px" src="images/547.gif"><IMG style="Z-INDEX: 105; LEFT: 424px; POSITION: absolute; TOP: 240px" src="images/528.gif"><IMG style="Z-INDEX: 106; LEFT: 608px; POSITION: absolute; TOP: 240px" src="images/535.gif">
			<DIV style="DISPLAY: inline; FONT-SIZE: 20pt; Z-INDEX: 107; LEFT: 472px; WIDTH: 248px; POSITION: absolute; TOP: 24px; HEIGHT: 8px"
				align="center" ms_positioning="FlowLayout">
				<P>Your Shopping Cart</P>
			</DIV>
			<DIV style="DISPLAY: inline; Z-INDEX: 108; LEFT: 472px; WIDTH: 144px; POSITION: absolute; TOP: 96px; HEIGHT: 16px"
				ms_positioning="FlowLayout"><FONT size="4">Quantity Ordered:</FONT></DIV>
			<asp:textbox id="txtQuantity" style="Z-INDEX: 109; LEFT: 624px; POSITION: absolute; TOP: 88px"
				runat="server" Width="56px" Height="32px" Font-Size="Medium">0</asp:textbox>
			<DIV style="DISPLAY: inline; Z-INDEX: 110; LEFT: 528px; WIDTH: 96px; POSITION: absolute; TOP: 136px; HEIGHT: 21px"
				ms_positioning="FlowLayout">
				<P><FONT size="4">Total Cost:</FONT></P>
			</DIV>
			<asp:label id="lblCost" style="Z-INDEX: 111; LEFT: 624px; POSITION: absolute; TOP: 136px" runat="server"
				Width="56px" Height="32px" Font-Size="Medium" BorderStyle="Inset" BorderWidth="2px">$ 0</asp:label>
			<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: x-small; Z-INDEX: 112; LEFT: 8px; WIDTH: 128px; POSITION: absolute; TOP: 368px; HEIGHT: 8px"
				align="center" noWrap ms_positioning="FlowLayout">Waterford Clock</DIV>
			<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: x-small; Z-INDEX: 116; LEFT: 616px; WIDTH: 128px; POSITION: absolute; TOP: 368px; HEIGHT: 8px"
				align="center" noWrap ms_positioning="FlowLayout">Waterford<BR>
				Makeup Brush</DIV>
			<asp:button id="btnClock" style="Z-INDEX: 117; LEFT: 16px; POSITION: absolute; TOP: 448px" runat="server"
				Width="112px" Text="Add to My Cart"></asp:button><asp:label id="lblClock" style="Z-INDEX: 122; LEFT: 48px; POSITION: absolute; TOP: 392px" runat="server"
				Width="16px" Height="8px" Font-Size="X-Small">65.00</asp:label><asp:label id="lblHolder" style="Z-INDEX: 124; LEFT: 208px; POSITION: absolute; TOP: 416px"
				runat="server" Width="16px" Height="8px" Font-Size="X-Small">55.00</asp:label></form>
	</body>
</HTML>
