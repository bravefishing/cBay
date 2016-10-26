<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>Middle</TITLE>
<SCRIPT language=JavaScript>
function expandoAll(){
	var AA = parent.document.getElementById("a");
	var BB = parent.document.getElementById("b");
	if (AA.rows == "0,*") {
		AA.rows = "80,*";
	}
	else {
		AA.rows = "0,*";
	}
	if (BB.cols == "0,20,*") {
		BB.cols = "180,20,*";
	}
	else {
		BB.cols = "0,20,*";
	}
}
//}
function expando(){
	var AA = parent.document.getElementById("a");
	var BB = parent.document.getElementById("b");
	var img = parent.document.getElementById("im");
	if (BB.cols == "0,14,*") {
		BB.cols = "200,14,*";
		img.src="../images/icon_img_prev.gif";
	}
	else {
		BB.cols = "0,14,*";
		img.src="../images/icon_img_next.gif";
	}
}
//}
</SCRIPT>

<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META content="MSHTML 6.00.2800.1264" name=GENERATOR>
</HEAD>
<BODY  leftMargin=0 topMargin=0><center>
<!--<A href="javascript:expandoAll();"><IMG height=36 src="../images/preview.jpg" alt="full screen" width=36 border=0>
<font color="ffffff" size="2"><b>full screen</b></font></A>-->

<A href="javascript:expando();"><IMG id="im" src="../images/711.gif" alt="hide" border=0>
<!--<font color="ffffff" size="2"><b>Hide</b></font>--></A>
</center>
  </BODY></HTML>
