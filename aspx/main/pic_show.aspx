<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_show" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2019/5/14 9:36:59.
		本页面代码由DTcms模板引擎生成于 2019/5/14 9:36:59. 
	*/

	base.channel = "culture";
	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html>\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n\r\n<head>\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\" />\r\n	<title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</title>\r\n	<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/anlistyle.css\" rel=\"stylesheet\" />\r\n	<style type=\"text/css\">\r\n		body {\r\n			background: #fafafa;\r\n			padding: 0px;\r\n			margin: 0px;\r\n		}\r\n\r\n		.close {\r\n			position: absolute;\r\n			right: 0px;\r\n			top: 0px;\r\n			cursor: pointer;\r\n			z-index: 99;\r\n		}\r\n\r\n		.loading {\r\n			height: 100px;\r\n			padding-top: 50px;\r\n			text-align: center;\r\n		}\r\n\r\n		.c {\r\n			width: 100%;\r\n			margin: 30px 0px;\r\n			font-size: 14px;\r\n			color: #747474;\r\n			line-height: 180%;\r\n		}\r\n\r\n		.c p {\r\n			line-height: 180%;\r\n			font-size: 14px;\r\n			color: #747474;\r\n		}\r\n\r\n		.myTable {\r\n			border-top: 1px solid #d8d8d8;\r\n			border-bottom: 1px solid #d8d8d8;\r\n		}\r\n\r\n		.myTable a {\r\n			display: block;\r\n			height: 150px;\r\n			overflow: hidden;\r\n			color: #666;\r\n		}\r\n\r\n		.myTable td h2 {\r\n			font-size: 18px;\r\n			height: 24px;\r\n			line-height: 24px;\r\n			padding-top: 48px;\r\n		}\r\n\r\n		a.left {\r\n			background: url(");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/daLeft.jpg) no-repeat left center;\r\n			padding-left: 100px;\r\n			text-align: center;\r\n			border-right: 1px solid #d8d8d8\r\n		}\r\n\r\n		a.right {\r\n			background: url(");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/daRight.jpg) no-repeat right center;\r\n			padding-right: 100px;\r\n			text-align: center;\r\n		}\r\n\r\n		.title {\r\n			text-align: center;\r\n			padding-top: 50px;\r\n		}\r\n\r\n		.title h2 {\r\n			font-size: 28px;\r\n			height: 32px;\r\n			line-height: 32px;\r\n			color: #666;\r\n		}\r\n\r\n		.title h3 {\r\n			font-size: 14px;\r\n			height: 32px;\r\n			line-height: 32px;\r\n			color: #ccc;\r\n		}\r\n	</style>\r\n	<script src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/jquery.js\"></");
	templateBuilder.Append("script>\r\n	<script type=\"text/javascript\">\r\n		$(function () {\r\n			$(\".close\").click(function () {\r\n				parent.closeBody();\r\n			});\r\n			$(\".loading\").hide();\r\n\r\n			setInterval(getnums, 500);\r\n		});\r\n\r\n		function getnums() {\r\n			$(\"#myCaseDetail\", window.parent.document).height($(\".showDetail\").height() + 100);\r\n			//window.parent.showBody();\r\n		}\r\n	</");
	templateBuilder.Append("script>\r\n\r\n</head>\r\n\r\n<body>\r\n	");
	string img1 = model.img_url;

	string img2 = model.img_url;

	string img3 = model.img_url;

	string img4 = model.img_url;

	string img5 = model.img_url;

	int index = 1;

	if (model.albums!=null)
	{

	foreach(DTcms.Model.article_albums modelt in model.albums)
	{

	if (index==1)
	{

	 img1 = modelt.original_path;

	}	//end for if

	if (index==2)
	{

	 img2 = modelt.original_path;

	}	//end for if

	if (index==3)
	{

	 img3 = modelt.original_path;

	}	//end for if

	if (index==4)
	{

	 img4 = modelt.original_path;

	}	//end for if

	if (index==5)
	{

	 img5 = modelt.original_path;

	}	//end for if

	 index = index+1;

	}	//end for if

	}	//end for if

	if (index==5)
	{

	templateBuilder.Append("\r\n	<div class=\"showDetail\">\r\n		<div class=\"loading\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/loading.gif\" /></div>\r\n		<img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(img1));
	templateBuilder.Append("\" style=\"width:100%;\" />\r\n		<div class=\"title\">\r\n			<h2>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</h2>\r\n			<h3></h3>\r\n		</div>\r\n\r\n		<div class=\"close\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/cClose.jpg\" /></div>\r\n		<div class=\"c\">\r\n			<p align=\"center\">\r\n				<table style=\"width:100%;\" class=\"ke-zeroborder\" border=\"0\" cellspacing=\"20\" bordercolor=\"#000000\" cellpadding=\"2\">\r\n					<tbody>\r\n						<tr>\r\n							<td style=\"text-align:right;width:50%;vertical-align:top;\">\r\n								<p>\r\n									<img src=\"/tools/getimg.ashx?img=");
	templateBuilder.Append(Utils.ObjectToStr(img2));
	templateBuilder.Append("&w=491&h=538\" alt=\"\" width=\"491\" height=\"538\" />\r\n								</p>\r\n								<p>\r\n									<br />\r\n								</p>\r\n								<img src=\"/tools/getimg.ashx?img=");
	templateBuilder.Append(Utils.ObjectToStr(img3));
	templateBuilder.Append("&w=491&h=365\" alt=\"\" width=\"491\" height=\"365\" />\r\n								<p>\r\n									<br />\r\n								</p>\r\n								<p>\r\n									<br />\r\n								</p>\r\n								<p>\r\n									<br />\r\n								</p>\r\n							</td>\r\n							<td style=\"text-align:left;vertical-align:top;\">\r\n								<p>\r\n									<img src=\"/tools/getimg.ashx?img=");
	templateBuilder.Append(Utils.ObjectToStr(img4));
	templateBuilder.Append("&w=493&h=363\" alt=\"\" width=\"493\" height=\"363\" />\r\n								</p>\r\n								<p>\r\n									<br />\r\n								</p>\r\n								<img src=\"/tools/getimg.ashx?img=");
	templateBuilder.Append(Utils.ObjectToStr(img5));
	templateBuilder.Append("&w=493&h=540\" alt=\"\" width=\"493\" height=\"540\" />\r\n								<p>\r\n									<br />\r\n								</p>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n			</p>\r\n			<p align=\"center\">\r\n				<br />\r\n			</p>\r\n		</div>\r\n		<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"myTable\">\r\n			<tr>\r\n				<td width=\"50%\" height=\"150\">\r\n\r\n					");
	templateBuilder.Append(get_prevandnext_article1("pic_show", -1, "没有了", 0).ToString());

	templateBuilder.Append("\r\n\r\n				</td>\r\n				<td width=\"50%\">\r\n\r\n					");
	templateBuilder.Append(get_prevandnext_article1("pic_show", 1, "没有了", 0).ToString());

	templateBuilder.Append("\r\n\r\n				</td>\r\n			</tr>\r\n		</table>\r\n	</div>\r\n	");
	}
	else
	{

	templateBuilder.Append("\r\n	<div class=\"showDetail\">\r\n		<div class=\"loading\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/loading.gif\" /></div>\r\n		<img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(img1));
	templateBuilder.Append("\" style=\"width:100%;\" />\r\n		<div class=\"title\">\r\n			<h2>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</h2>\r\n			<h3></h3>\r\n		</div>\r\n		<div class=\"close\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/cClose.jpg\" /></div>\r\n		<div class=\"c\">\r\n			<p align=\"center\">\r\n				<img src=\"/tools/getimg.ashx?img=");
	templateBuilder.Append(Utils.ObjectToStr(img2));
	templateBuilder.Append("&w=805&h=424\" alt=\"\" width=\"805\" height=\"424\" />\r\n			</p>\r\n			<p align=\"center\">\r\n				<table style=\"width:100%;\" class=\"ke-zeroborder\" border=\"0\" cellspacing=\"20\" bordercolor=\"#000000\" cellpadding=\"2\">\r\n					<tbody>\r\n						<tr>\r\n							<td style=\"text-align:right;width:50%;vertical-align:top;\">\r\n								<p>\r\n									&nbsp;<img src=\"/tools/getimg.ashx?img=");
	templateBuilder.Append(Utils.ObjectToStr(img3));
	templateBuilder.Append("&w=491&h=538\" alt=\"\" width=\"491\" height=\"538\" />\r\n								</p>\r\n							</td>\r\n							<td style=\"text-align:left;vertical-align:top;\">\r\n								<p>\r\n									<img src=\"/tools/getimg.ashx?img=");
	templateBuilder.Append(Utils.ObjectToStr(img4));
	templateBuilder.Append("&w=491&h=538\" alt=\"\" width=\"491\" height=\"538\" />\r\n								</p>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n			</p>\r\n			<p align=\"center\">\r\n				<br />\r\n			</p>\r\n			<p>\r\n				<br />\r\n			</p>\r\n			<p style=\"text-align:center;\">\r\n				<br />\r\n			</p>\r\n		</div>\r\n		<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"myTable\">\r\n			<tr>\r\n				<td width=\"50%\" height=\"150\">\r\n\r\n					");
	templateBuilder.Append(get_prevandnext_article1("pic_show", -1, "没有了", 0).ToString());

	templateBuilder.Append("\r\n\r\n				</td>\r\n				<td width=\"50%\">\r\n\r\n					");
	templateBuilder.Append(get_prevandnext_article1("pic_show", 1, "没有了", 0).ToString());

	templateBuilder.Append("\r\n\r\n				</td>\r\n			</tr>\r\n		</table>\r\n	</div>\r\n	");
	}	//end for if

	templateBuilder.Append("\r\n\r\n</body>\r\n\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
