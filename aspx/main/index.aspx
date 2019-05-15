<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.index" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2019/5/14 9:36:58.
		本页面代码由DTcms模板引擎生成于 2019/5/14 9:36:58. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html>\r\n<html lang=\"en\">\r\n\r\n<head>\r\n  <meta charset=\"UTF-8\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n  <title>");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("</title>\r\n  ");

	templateBuilder.Append("<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\">\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\">\r\n<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/base.css\">\r\n<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/css.css\">\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/viewer.min.css\" />\r\n<script src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/jquery.js\"></");
	templateBuilder.Append("script>\r\n<script src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/jquery.SuperSlide.2.1.1.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/viewer-jquery.min.js\"></");
	templateBuilder.Append("script>\r\n<!-- <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script> -->\r\n");


	templateBuilder.Append("\r\n</head>\r\n\r\n<body>\r\n  ");

	templateBuilder.Append("<div class=\"header\">\r\n    <div class=\"hlogo\">\r\n        <div class=\"logo\">\r\n            <a href='");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("' title=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.company));
	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo.png\" alt=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.company));
	templateBuilder.Append("\"></a>\r\n        </div>\r\n        <div class=\"logor\">\r\n            <div class=\"title\">\r\n                <span id=\"menu\"></span>\r\n                <span id=\"tdate\"></span>\r\n            </div>\r\n            <script type=\"text/javascript\">\r\n                $.ajax({\r\n                    type: \"POST\",\r\n                    url: \"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_check_login\",\r\n                    dataType: \"json\",\r\n                    timeout: 20000,\r\n                    success: function (data, textStatus) {\r\n                        if (data.status == 1) {\r\n                            $(\"#menu\").prepend('<a href=\"");
	templateBuilder.Append(linkurl("usercenter","exit"));

	templateBuilder.Append("\">['+data.username+']退出</a>');\r\n                        } else {\r\n                            $(\"#menu\").prepend('<a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\">员工登录</a>');\r\n                        }\r\n                    }\r\n                });\r\n            </");
	templateBuilder.Append("script>\r\n            <div class=\"search\">\r\n                <input id=\"keywords\" name=\"keywords\" x-webkit-speech=\"\" onkeydown=\"if(event.keyCode==13){SiteSearch('/search.html', '#keywords');return false};\" type=\"text\" placeholder=\"输入关健字\">\r\n                <a href=\"javascript:;\" onclick=\"SiteSearch('/search.html', '#keywords');\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/search.png\" alt=\"搜索\"></a>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"navbar\">\r\n        <div class=\"navlist\">\r\n            <ul>\r\n                <li><a href='");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("' class=\"n1\">首页</a></li>\r\n                <li><a href='");
	templateBuilder.Append(linkurl("content_list",3));

	templateBuilder.Append("' class=\"n2\">公司介绍</a></li>\r\n                <li><a href='");
	templateBuilder.Append(linkurl("news_list",8));

	templateBuilder.Append("' class=\"n3\">新闻资讯</a></li>\r\n                <li><a href='");
	templateBuilder.Append(linkurl("document_list",12));

	templateBuilder.Append("' class=\"n4\">公司公文</a></li>\r\n                <li><a href='");
	templateBuilder.Append(linkurl("zhidu_list",17));

	templateBuilder.Append("' class=\"n5\">管理制度</a></li>\r\n                <li><a href='");
	templateBuilder.Append(linkurl("culture_list",23));

	templateBuilder.Append("' class=\"n6\">企业文化</a></li>\r\n                <!-- <li><a href='");
	templateBuilder.Append(linkurl("peixun_list",26));

	templateBuilder.Append("' class=\"n7\">培训管理</a></li> -->\r\n                <li><a href='");
	templateBuilder.Append(linkurl("huanbao_list",47));

	templateBuilder.Append("' class=\"n8\">HSSE管理</a></li>\r\n                <li><a href='");
	templateBuilder.Append(linkurl("jingying_list",57));

	templateBuilder.Append("' class=\"n9\">生产经营</a></li>\r\n                <li><a href='");
	templateBuilder.Append(linkurl("bussiness_list",51));

	templateBuilder.Append("' class=\"n10\">企业管理</a></li>\r\n                <li><a href='");
	templateBuilder.Append(linkurl("zhuanti_list",39));

	templateBuilder.Append("' class=\"n11\">党建专题</a></li>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n</div>");


	templateBuilder.Append("\r\n  <div class=\"bc\">\r\n\r\n    <div class=\"w\">\r\n      <div class=\"banner\">\r\n        ");

	templateBuilder.Append("<style type=\"text/css\">\r\n    .fullSlide {\r\n        width: 100%;\r\n        position: relative;\r\n        height:300px;\r\n        background: #000;\r\n    }\r\n\r\n    .fullSlide .bd {\r\n        margin: 0 auto;\r\n        position: relative;\r\n        z-index: 0;\r\n        overflow: hidden;\r\n    }\r\n\r\n    .fullSlide .bd ul {\r\n        width: 100% !important;\r\n    }\r\n\r\n    .fullSlide .bd li {\r\n        width: 100% !important;\r\n        height: 300px;\r\n        overflow: hidden;\r\n        text-align: center;\r\n    }\r\n\r\n    .fullSlide .bd li a {\r\n        display: block;\r\n        height: 300px;\r\n    }\r\n\r\n    .fullSlide .hd {\r\n        width: 100%;\r\n        position: absolute;\r\n        z-index: 1;\r\n        bottom: 0;\r\n        left: 0;\r\n        height: 30px;\r\n        line-height: 30px;\r\n    }\r\n\r\n    .fullSlide .hd ul {\r\n        text-align: center;\r\n    }\r\n\r\n    .fullSlide .hd ul li {\r\n        cursor: pointer;\r\n        display: inline-block;\r\n        *display: inline;\r\n        zoom: 1;\r\n        width: 42px;\r\n        height: 11px;\r\n        margin: 1px;\r\n        overflow: hidden;\r\n        background: #000;\r\n        filter: alpha(opacity=50);\r\n        opacity: 0.5;\r\n        line-height: 999px;\r\n    }\r\n\r\n    .fullSlide .hd ul .on {\r\n        background: #1f7bf8;\r\n    }\r\n\r\n    .fullSlide .prev,\r\n    .fullSlide .next {\r\n        display: block;\r\n        position: absolute;\r\n        z-index: 1;\r\n        top: 50%;\r\n        margin-top: -30px;\r\n        left: 15%;\r\n        z-index: 1;\r\n        width: 40px;\r\n        height: 60px;\r\n        background: url(");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/slider-arrow.png) -126px -137px #000 no-repeat;\r\n        cursor: pointer;\r\n        filter: alpha(opacity=50);\r\n        opacity: 0.5;\r\n        display: none;\r\n    }\r\n\r\n    .fullSlide .next {\r\n        left: auto;\r\n        right: 15%;\r\n        background-position: -6px -137px;\r\n    }\r\n</style>\r\n<div class=\"fullSlide\">\r\n    <div class=\"bd\">\r\n        <ul>\r\n            ");
	DataTable banner1 = get_article_list("banner", 1, 0, "status=0 and img_url<>''");

	foreach(DataRow dr in banner1.Rows)
	{

	templateBuilder.Append("\r\n            <li _src=\"url(" + Utils.ObjectToStr(dr["img_url"]) + ")\" style=\"background:#E2025E center 0 no-repeat;\"><a target=\"_blank\" href=\"javascript:;\"></a></li>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n    </div>\r\n    <div class=\"hd\">\r\n        <ul></ul>\r\n    </div> <span class=\"prev\"></span> <span class=\"next\"></span>\r\n</div>\r\n<script type=\"text/javascript\">\r\n    jQuery(\".fullSlide\").hover(function () {\r\n        jQuery(this).find(\".prev,.next\").stop(true, true).fadeTo(\"show\", 0.5)\r\n    }, function () {\r\n        jQuery(this).find(\".prev,.next\").fadeOut()\r\n    });\r\n    jQuery(\".fullSlide\").slide({\r\n        titCell: \".hd ul\",\r\n        mainCell: \".bd ul\",\r\n        effect: \"fold\",\r\n        autoPlay: true,\r\n        autoPage: true,\r\n        trigger: \"click\",\r\n        startFun: function (i) {\r\n            var curLi = jQuery(\".fullSlide .bd li\").eq(i);\r\n            if (!!curLi.attr(\"_src\")) {\r\n                curLi.css(\"background-image\", curLi.attr(\"_src\")).removeAttr(\"_src\")\r\n            }\r\n        }\r\n    });\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"w\">\r\n      <div class=\"box\">\r\n\r\n        <div class=\"box1\">\r\n          <div class=\"b1left\">\r\n            ");

	templateBuilder.Append("<div class=\"focusBox\" style=\"margin:0 auto\">\r\n    ");
	DataTable slide = get_article_list("news", 0, 0, "status=0 and img_url<>'' and is_slide=1");

	templateBuilder.Append("\r\n        <ul class=\"pic\">\r\n            ");
	foreach(DataRow dr in slide.Rows)
	{

	templateBuilder.Append("\r\n            <li><a href='");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("' target=\"_blank\"><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" /></a></li>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n        <div class=\"txt-bg\"></div>\r\n        <div class=\"txt\">\r\n            <ul>\r\n                ");
	foreach(DataRow dr in slide.Rows)
	{

	templateBuilder.Append("\r\n                <li><a href='");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("'>" + Utils.ObjectToStr(dr["title"]) + "</a></li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </ul>\r\n        </div>\r\n        <ul class=\"num\">\r\n            ");
	int ndr__loop__id=0;
	foreach(DataRow ndr in slide.Rows)
	{
		ndr__loop__id++;


	templateBuilder.Append("\r\n            <li><a>");
	templateBuilder.Append(Utils.ObjectToStr(ndr__loop__id));
	templateBuilder.Append("</a><span></span></li>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n    </div>\r\n    <script type=\"text/javascript\">\r\n        jQuery(\".focusBox\").slide({\r\n            titCell: \".num li\",\r\n            mainCell: \".pic\",\r\n            effect: \"fold\",\r\n            autoPlay: true,\r\n            trigger: \"click\",\r\n            startFun: function (i) {\r\n                jQuery(\".focusBox .txt li\").eq(i).animate({\r\n                    \"bottom\": 0\r\n                }).siblings().animate({\r\n                    \"bottom\": -36\r\n                });\r\n            }\r\n        });\r\n    </");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n          </div>\r\n          <div class=\"b1mid\">\r\n            <div class=\"title\">\r\n              <ul class=\"titleul\">\r\n                ");
	DataTable cindex2 = get_category_child_list("document", 0);

	foreach(DataRow dr in cindex2.Rows)
	{

	templateBuilder.Append("\r\n                <li data-id=\"" + Utils.ObjectToStr(dr["id"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </ul>\r\n            </div>\r\n            ");
	foreach(DataRow dr in cindex2.Rows)
	{

	templateBuilder.Append("\r\n            <div class=\"list hide\" id=\"news" + Utils.ObjectToStr(dr["id"]) + "\">\r\n              <ul>\r\n                ");
	string str = "";

	if (Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0)==16)
	{

	 str = "and DateDiff(dd,d_txt1,getdate())<=0";

	}	//end for if

	DataTable ccmenu = get_article_list("document", Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0), 10, "status=0"+str);

	foreach(DataRow drr in ccmenu.Rows)
	{

	templateBuilder.Append("\r\n                <li><span>[\r\n                    ");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(drr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("]</span><a href='");
	templateBuilder.Append(linkurl("document_show",Utils.ObjectToStr(drr["id"])));

	templateBuilder.Append("'\r\n                    target=\"_blank\">\r\n                    ");
	templateBuilder.Append(Utils.DropHTML(Utils.ObjectToStr(drr["title"]),35));

	templateBuilder.Append("</a></li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </ul>\r\n              <p><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href='");
	templateBuilder.Append(linkurl("document_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("'>更多&gt;&gt;</a></p>\r\n            </div>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n          </div>\r\n          <div class=\"b1right\">\r\n            <div class=\"title\"><a href='");
	templateBuilder.Append(linkurl("zhuanti"));

	templateBuilder.Append("'><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/dj.jpg\"\r\n                  alt=\"党建工作专栏\"></a></div>\r\n            <ul>\r\n              <li><a href='");
	templateBuilder.Append(linkurl("message","ldxx"));

	templateBuilder.Append("'>领导信箱</a></li>\r\n              <li><a href='");
	templateBuilder.Append(linkurl("message","xsq"));

	templateBuilder.Append("'>员工\"小诉求\"</a></li>\r\n              <li><a href='");
	templateBuilder.Append(linkurl("page","huiyi"));

	templateBuilder.Append("'>一周会议安排</a></li>\r\n              <li><a href='");
	templateBuilder.Append(linkurl("page","zhiban"));

	templateBuilder.Append("'>干部值班表</a></li>\r\n              <li><a href=\"javascript:;\">火警电话<em>5596001</em></a></li>\r\n              <li><a href='");
	templateBuilder.Append(linkurl("page","book"));

	templateBuilder.Append("'>通讯录</a></li>\r\n              <li><a href='");
	templateBuilder.Append(linkurl("page","sgbook"));

	templateBuilder.Append("'>事故应急通讯</a></li>\r\n            </ul>\r\n          </div>\r\n        </div>\r\n\r\n        <!--box2数据-->\r\n        <div class=\"box2\">\r\n          <div class=\"b2left\">\r\n\r\n            <div class=\"title hoverli\">\r\n              <ul class=\"titleul\">\r\n                ");
	DataTable cindex1 = get_category_child_list("news", 0);

	foreach(DataRow dr in cindex1.Rows)
	{

	templateBuilder.Append("\r\n                <li data-id=\"" + Utils.ObjectToStr(dr["id"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </ul>\r\n            </div>\r\n            ");
	foreach(DataRow dr in cindex1.Rows)
	{

	templateBuilder.Append("\r\n            <div class=\"list hide\" id=\"news" + Utils.ObjectToStr(dr["id"]) + "\">\r\n              <ul>\r\n                ");
	DataTable ccmenu = get_article_list("news", Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0), 8, "status=0");

	foreach(DataRow drr in ccmenu.Rows)
	{

	templateBuilder.Append("\r\n                <li><span>[\r\n                    ");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(drr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("]</span><a href='");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(drr["id"])));

	templateBuilder.Append("'\r\n                    target=\"_blank\">" + Utils.ObjectToStr(drr["title"]) + "</a></li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </ul>\r\n              <p><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href='");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("'>更多&gt;&gt;</a></p>\r\n            </div>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n\r\n          </div>\r\n          <div class=\"b2mid\">\r\n            <div class=\"title\">\r\n              <ul class=\"list titleul\">\r\n                <li class=\"hover\" data-id=\"c1\">原油接输</li>\r\n                <li data-id=\"c3\">途耗</li>\r\n                <li data-id=\"c2\">能耗</li>\r\n                <li data-id=\"c4\">燃料油</li>\r\n              </ul>\r\n            </div>\r\n            <div class=\"chatimg\" id=\"c1\">\r\n              <!--这里放百度的表格插件-->\r\n              <iframe src='");
	templateBuilder.Append(linkurl("echarts1"));

	templateBuilder.Append("' scrolling=\"no\" frameborder=\"0\" width=\"457\" height=\"210\"></iframe>\r\n            </div>\r\n            <div class=\"chatimg hide\" id=\"c2\">\r\n              <!--这里放百度的表格插件-->\r\n              <iframe src='");
	templateBuilder.Append(linkurl("echarts2"));

	templateBuilder.Append("' scrolling=\"no\" frameborder=\"0\" width=\"457\" height=\"210\"></iframe>\r\n            </div>\r\n            <div class=\"chatimg hide\" id=\"c3\">\r\n              <!--这里放百度的表格插件-->\r\n              <iframe src='");
	templateBuilder.Append(linkurl("echarts3"));

	templateBuilder.Append("' scrolling=\"no\" frameborder=\"0\" width=\"457\" height=\"210\"></iframe>\r\n            </div>\r\n            <div class=\"chatimg hide\" id=\"c4\">\r\n              <!--这里放百度的表格插件-->\r\n              <iframe src='");
	templateBuilder.Append(linkurl("echarts4"));

	templateBuilder.Append("' scrolling=\"no\" frameborder=\"0\" width=\"410\" height=\"210\"></iframe>\r\n            </div>\r\n          </div>\r\n          <div class=\"b2right\">\r\n            ");
	DataTable iii = get_article_list("news", 10, 1, "status=0");

	foreach(DataRow dr in iii.Rows)
	{

	templateBuilder.Append("\r\n            <a href='");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("' title=\"" + Utils.ObjectToStr(dr["title"]) + "\">\r\n              <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\">\r\n              <p>" + Utils.ObjectToStr(dr["title"]) + "</p>\r\n            </a>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n          </div>\r\n        </div>\r\n\r\n        <!--box3数据-->\r\n        <div class=\"box3\">\r\n          <div class=\"b3left\">\r\n            <div class=\"title\">\r\n              <ul class=\"list titleul\">\r\n                <li class=\"hover\" data-id=\"h0\">企业管理</li>\r\n                <li data-id=\"h1\">HSSE管理</li>\r\n                <li data-id=\"h4\">HSSE公示</li>\r\n                <li data-id=\"h5\">HSSE通报</li>\r\n                <li data-id=\"h2\">生产经营</li>\r\n                <li data-id=\"h3\">培训管理</li>\r\n              </ul>\r\n            </div>\r\n            <!--企业管理-->\r\n            <div id=\"h0\" class=\"js_h\">\r\n              ");
	DataTable hhh0 = get_category_child_list("bussiness", 0);

	templateBuilder.Append("\r\n              <div class=\"lanmu2\">\r\n                ");
	foreach(DataRow dr in hhh0.Rows)
	{

	templateBuilder.Append("\r\n                <a data-id=\"s" + Utils.ObjectToStr(dr["id"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </div>\r\n              ");
	foreach(DataRow dr in hhh0.Rows)
	{

	templateBuilder.Append("\r\n              <div class=\"list hide\" id=\"s" + Utils.ObjectToStr(dr["id"]) + "\">\r\n                <ul>\r\n                  ");
	DataTable ccmenu = get_article_list("bussiness", Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0), 8, "status=0");

	foreach(DataRow drr in ccmenu.Rows)
	{

	templateBuilder.Append("\r\n                  <li><span>[\r\n                      ");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(drr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("]</span><a href='");
	templateBuilder.Append(linkurl("bussiness_show",Utils.ObjectToStr(drr["id"])));

	templateBuilder.Append("'\r\n                      target=\"_blank\">" + Utils.ObjectToStr(drr["title"]) + "</a></li>\r\n                  ");
	}	//end for if

	templateBuilder.Append("\r\n                </ul>\r\n                <p><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href='");
	templateBuilder.Append(linkurl("bussiness_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("'>更多&gt;&gt;</a></p>\r\n              </div>\r\n              ");
	}	//end for if

	templateBuilder.Append("\r\n            </div>\r\n            <!--HSSE管理-->\r\n            <div id=\"h1\" class=\"hide js_h\">\r\n              ");
	DataTable hhh1 = get_category_child_list("huanbao", 0);

	templateBuilder.Append("\r\n              <div class=\"lanmu2\">\r\n                ");
	foreach(DataRow dr in hhh1.Rows)
	{

	templateBuilder.Append("\r\n                <a data-id=\"s" + Utils.ObjectToStr(dr["id"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </div>\r\n              ");
	foreach(DataRow dr in hhh1.Rows)
	{

	templateBuilder.Append("\r\n              <div class=\"list hide\" id=\"s" + Utils.ObjectToStr(dr["id"]) + "\">\r\n                <ul>\r\n                  ");
	DataTable ccmenu = get_article_list("huanbao", Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0), 6, "status=0");

	foreach(DataRow drr in ccmenu.Rows)
	{

	templateBuilder.Append("\r\n                  <li><span>[\r\n                      ");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(drr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("]</span><a href='");
	templateBuilder.Append(linkurl("huanbao_show",Utils.ObjectToStr(drr["id"])));

	templateBuilder.Append("'\r\n                      target=\"_blank\">" + Utils.ObjectToStr(drr["title"]) + "</a></li>\r\n                  ");
	}	//end for if

	templateBuilder.Append("\r\n                </ul>\r\n                <p><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href='");
	templateBuilder.Append(linkurl("huanbao_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("'>更多&gt;&gt;</a></p>\r\n              </div>\r\n              ");
	}	//end for if

	templateBuilder.Append("\r\n            </div>\r\n\r\n            <!-- HSSE公示 -->\r\n            <div id=\"h4\" class=\"hide js_h\">\r\n              ");
	DataTable hhh4 = get_category_child_list("publicity", 0);

	templateBuilder.Append("\r\n              <div class=\"lanmu2\">\r\n                ");
	foreach(DataRow dr in hhh4.Rows)
	{

	templateBuilder.Append("\r\n                <a data-id=\"s" + Utils.ObjectToStr(dr["id"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </div>\r\n              ");
	foreach(DataRow dr in hhh4.Rows)
	{

	templateBuilder.Append("\r\n              <div class=\"list hide\" id=\"s" + Utils.ObjectToStr(dr["id"]) + "\">\r\n                <ul>\r\n                  ");
	DataTable ccmenu4 = get_article_list("publicity", Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0), 8, "status=0");

	foreach(DataRow drr in ccmenu4.Rows)
	{

	templateBuilder.Append("\r\n                  <li><span>[\r\n                      ");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(drr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("]</span><a href='");
	templateBuilder.Append(linkurl("publicity_show",Utils.ObjectToStr(drr["id"])));

	templateBuilder.Append("'\r\n                      target=\"_blank\">" + Utils.ObjectToStr(drr["title"]) + "</a></li>\r\n                  ");
	}	//end for if

	templateBuilder.Append("\r\n                </ul>\r\n                <p><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href='");
	templateBuilder.Append(linkurl("publicity_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("'>更多&gt;&gt;</a></p>\r\n              </div>\r\n              ");
	}	//end for if

	templateBuilder.Append("\r\n            </div>\r\n\r\n            <!-- HSSE学习 -->\r\n            <div id=\"h5\" class=\"hide js_h\">\r\n              ");
	DataTable hhh5 = get_category_child_list("study", 0);

	templateBuilder.Append("\r\n              <div class=\"lanmu2\">\r\n                ");
	foreach(DataRow dr in hhh5.Rows)
	{

	templateBuilder.Append("\r\n                <a data-id=\"s" + Utils.ObjectToStr(dr["id"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </div>\r\n              ");
	foreach(DataRow dr in hhh5.Rows)
	{

	templateBuilder.Append("\r\n              <div class=\"list hide\" id=\"s" + Utils.ObjectToStr(dr["id"]) + "\">\r\n                <ul>\r\n                  ");
	DataTable ccmenu5 = get_article_list("study", Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0), 8, "status=0");

	foreach(DataRow drr in ccmenu5.Rows)
	{

	templateBuilder.Append("\r\n                  <li><span>[\r\n                      ");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(drr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("]</span><a href='");
	templateBuilder.Append(linkurl("study_show",Utils.ObjectToStr(drr["id"])));

	templateBuilder.Append("'\r\n                      target=\"_blank\">" + Utils.ObjectToStr(drr["title"]) + "</a></li>\r\n                  ");
	}	//end for if

	templateBuilder.Append("\r\n                </ul>\r\n                <p><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href='");
	templateBuilder.Append(linkurl("study_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("'>更多&gt;&gt;</a></p>\r\n              </div>\r\n              ");
	}	//end for if

	templateBuilder.Append("\r\n            </div>\r\n\r\n            <!--生产经营-->\r\n            <div id=\"h2\" class=\"hide js_h\">\r\n              ");
	DataTable hhh2 = get_category_child_list("jingying", 0);

	templateBuilder.Append("\r\n              <div class=\"lanmu2\">\r\n                ");
	foreach(DataRow dr in hhh2.Rows)
	{

	if (Utils.ObjectToStr(dr["call_index"])=="news")
	{

	templateBuilder.Append("\r\n                <a data-id=\"s" + Utils.ObjectToStr(dr["id"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a>\r\n                ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n              </div>\r\n              ");
	foreach(DataRow dr in hhh2.Rows)
	{

	if (Utils.ObjectToStr(dr["call_index"])=="news")
	{

	templateBuilder.Append("\r\n              <div class=\"list hide\" id=\"s" + Utils.ObjectToStr(dr["id"]) + "\">\r\n                <ul>\r\n                  ");
	DataTable ccmenu = get_article_list("jingying", Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0), 8, "status=0");

	foreach(DataRow drr in ccmenu.Rows)
	{

	templateBuilder.Append("\r\n                  <li><span>[\r\n                      ");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(drr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("]</span><a\r\n                      href='");
	templateBuilder.Append(linkurl("jingying_show",Utils.ObjectToStr(drr["id"])));

	templateBuilder.Append("'>" + Utils.ObjectToStr(drr["title"]) + "</a></li>\r\n                  ");
	}	//end for if

	templateBuilder.Append("\r\n                </ul>\r\n                <p><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href='");
	templateBuilder.Append(linkurl("jingying_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("'>更多&gt;&gt;</a></p>\r\n              </div>\r\n              ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n            </div>\r\n\r\n            <!--培训管理-->\r\n            <div id=\"h3\" class=\"hide js_h\">\r\n              ");
	DataTable hhh3 = get_category_child_list("peixun", 0);

	templateBuilder.Append("\r\n              <div class=\"lanmu2\">\r\n                ");
	foreach(DataRow dr in hhh3.Rows)
	{

	templateBuilder.Append("\r\n                <a data-id=\"s" + Utils.ObjectToStr(dr["id"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </div>\r\n              ");
	foreach(DataRow dr in hhh3.Rows)
	{

	templateBuilder.Append("\r\n              <div class=\"list hide\" id=\"s" + Utils.ObjectToStr(dr["id"]) + "\">\r\n                <ul>\r\n                  ");
	DataTable ccmenu = get_article_list("peixun", Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0), 8, "status=0");

	foreach(DataRow drr in ccmenu.Rows)
	{

	templateBuilder.Append("\r\n                  <li><span>[\r\n                      ");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(drr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("]</span><a\r\n                      href='");
	templateBuilder.Append(linkurl("peixun_show",Utils.ObjectToStr(drr["id"])));

	templateBuilder.Append("'>" + Utils.ObjectToStr(drr["title"]) + "</a></li>\r\n                  ");
	}	//end for if

	templateBuilder.Append("\r\n                </ul>\r\n                <p><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href='");
	templateBuilder.Append(linkurl("peixun_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("'>更多&gt;&gt;</a></p>\r\n              </div>\r\n              ");
	}	//end for if

	templateBuilder.Append("\r\n            </div>\r\n\r\n          </div>\r\n\r\n          <!-- 劳动竞赛 -->\r\n          <div class=\"b3right\">\r\n            <div class=\"title hoverli\">\r\n              <ul class=\"titleul\">\r\n                ");
	DataTable ldindex1 = get_category_child_list("laodong", 0);

	foreach(DataRow dr in ldindex1.Rows)
	{

	templateBuilder.Append("\r\n                <li data-id=\"" + Utils.ObjectToStr(dr["id"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </ul>\r\n            </div>\r\n            ");
	foreach(DataRow dr in ldindex1.Rows)
	{

	templateBuilder.Append("\r\n            <div class=\"list hide\" id=\"news" + Utils.ObjectToStr(dr["id"]) + "\">\r\n              <ul>\r\n                ");
	DataTable ldmenu = get_article_list("laodong", Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0), 8, "status=0");

	foreach(DataRow drr in ldmenu.Rows)
	{

	templateBuilder.Append("\r\n                <li><span>[\r\n                    ");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(drr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("]</span><a href='");
	templateBuilder.Append(linkurl("laodong_show",Utils.ObjectToStr(drr["id"])));

	templateBuilder.Append("'\r\n                    target=\"_blank\">" + Utils.ObjectToStr(drr["title"]) + "</a></li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </ul>\r\n            </div>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n          </div>\r\n        </div>\r\n\r\n        <!--box4内容-->\r\n        <div class=\"box4\">\r\n          <div class=\"b4left\">\r\n            <div class=\"imglist\" id=\"marquee1\">\r\n              <ul>\r\n                ");
	DataTable img1 = get_article_list("culture", 24, 20, "status=0 and img_url<>''");

	foreach(DataRow dr in img1.Rows)
	{

	templateBuilder.Append("\r\n                <li>\r\n                  <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href='");
	templateBuilder.Append(linkurl("culture_list",24));

	templateBuilder.Append("' class=\"item\">\r\n                    <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\">\r\n                    <p>" + Utils.ObjectToStr(dr["title"]) + "</p>\r\n                  </a>\r\n                </li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </ul>\r\n            </div>\r\n            <div class=\"title\">\r\n              <span>光荣榜</span>\r\n              <a href='");
	templateBuilder.Append(linkurl("culture_list",24));

	templateBuilder.Append("' class=\"more\">更多&gt;&gt;</a>\r\n            </div>\r\n          </div>\r\n          <div class=\"b4left b4right\">\r\n            <div class=\"imglist\" id=\"marquee2\">\r\n              <ul>\r\n                ");
	DataTable img2 = get_article_list("culture", 25, 20, "status=0 and img_url<>''");

	foreach(DataRow dr in img2.Rows)
	{

	templateBuilder.Append("\r\n                <li>\r\n                  <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href='");
	templateBuilder.Append(linkurl("culture_list",25));

	templateBuilder.Append("' class=\"item\">\r\n                    <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\">\r\n                    <p>" + Utils.ObjectToStr(dr["title"]) + "</p>\r\n                  </a>\r\n                </li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </ul>\r\n            </div>\r\n            <div class=\"title\">\r\n              <span>职工风采</span>\r\n              <a href='");
	templateBuilder.Append(linkurl("culture_list",25));

	templateBuilder.Append("' class=\"more\">更多&gt;&gt;</a>\r\n            </div>\r\n          </div>\r\n        </div>\r\n\r\n        <!-- 其他服务 -->\r\n        <div class=\"box5\">\r\n          <div class=\"b5else\">\r\n            <div class=\"title\">\r\n              <ul class=\"titleul\">\r\n                ");
	DataTable sindex2 = get_category_child_list("service", 0);

	foreach(DataRow dr in sindex2.Rows)
	{

	templateBuilder.Append("\r\n                <li data-id=\"" + Utils.ObjectToStr(dr["id"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </ul>\r\n            </div>\r\n            ");
	foreach(DataRow dr in sindex2.Rows)
	{

	templateBuilder.Append("\r\n            <div class=\"xlist hide\" id=\"news" + Utils.ObjectToStr(dr["id"]) + "\">\r\n              <ul>\r\n                ");
	DataTable qita = get_article_list("service", Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0), 7, "status=0");

	foreach(DataRow drr in qita.Rows)
	{

	templateBuilder.Append("\r\n                <li><a href='");
	templateBuilder.Append(linkurl("service_show",Utils.ObjectToStr(drr["id"])));

	templateBuilder.Append("' target=\"_blank\">" + Utils.ObjectToStr(drr["title"]) + "</a></li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </ul>\r\n            </div>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n          </div>\r\n        </div>\r\n        <!-- ");

	templateBuilder.Append("<div class=\"linkdiv\">\r\n    <div class=\"title\">\r\n        <span>友情链接</span>\r\n        <a href='");
	templateBuilder.Append(linkurl("link_list"));

	templateBuilder.Append("' class=\"more\">更多&gt;&gt;</a>\r\n    </div>\r\n    <div class=\"linklist\">\r\n        <ul class=\"list1\">\r\n            ");
	DataTable imgList = new DTcms.Web.Plugin.Link.link().get_link_list(0, "is_image=1");

	foreach(DataRow dr in imgList.Rows)
	{

	templateBuilder.Append("\r\n            <li>\r\n                <a target=\"_blank\" href=\"" + Utils.ObjectToStr(dr["site_url"]) + "\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">\r\n                    <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n                    <p>" + Utils.ObjectToStr(dr["title"]) + "</p>\r\n                </a>\r\n            </li>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n        <ul class=\"list2\">\r\n            ");
	DataTable txtList = new DTcms.Web.Plugin.Link.link().get_link_list(0, "is_image=0");

	foreach(DataRow dr in txtList.Rows)
	{

	templateBuilder.Append("\r\n            <li><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"" + Utils.ObjectToStr(dr["site_url"]) + "\" target=\"_blank\">" + Utils.ObjectToStr(dr["title"]) + "</a></li>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n    </div>\r\n</div>");


	templateBuilder.Append("  -->\r\n      </div>\r\n    </div>\r\n\r\n  </div>\r\n  ");

	templateBuilder.Append("<div class=\"footer\">\r\n    <p>版权所有：华德石化有限公司 &nbsp &nbsp 技术支持：易隆软件</p>\r\n    <p>联系电话：0752-5599531 &nbsp &nbsp 地址：惠州市大亚湾澳头安惠大道5－2号</p>\r\n</div>\r\n<script>\r\n    //搜索查询\r\n    function SiteSearch(send_url, divTgs) {\r\n        var str = $.trim($(divTgs).val());\r\n        if (str.length > 0 && str != \"输入关健字\") {\r\n            window.location.href = send_url + \"?keyword=\" + encodeURI($(divTgs).val());\r\n        }\r\n        return false;\r\n    }\r\n    //日期判断\r\n    $(function(){\r\n        var d=new Date();\r\n        var year=d.getFullYear();\r\n        var month=d.getMonth()+1;\r\n        var day=d.getDate();\r\n        var w=d.getDay();\r\n        var week=[\"星期天\",\"星期一\",\"星期二\",\"星期三\",\"星期四\",\"星期五\",\"星期六\"];\r\n        var html=\"欢迎您！ 今天是\"+year+\"年\"+month+\"月\"+day+\"日 \"+week[w];\r\n        $(\"#tdate\").html(html);\r\n    })\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n  <script src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/kxbdSuperMarquee.js\"></");
	templateBuilder.Append("script>\r\n  <script>\r\n    $(function () {\r\n      $(\".n1\").addClass(\"hover\");\r\n      //显示\r\n      $(\".linkdiv\").show();\r\n      //新闻的4个栏目\r\n      $(\".b1mid .titleul li\").first().addClass(\"hover\");\r\n      $(\".b1mid .list\").first().show();\r\n      $(\".b1mid .titleul li\").hover(function () {\r\n        $(this).addClass(\"hover\");\r\n        $(\".b1mid .titleul li\").not(this).removeClass(\"hover\");\r\n        var id = $(this).data(\"id\");\r\n        $(\"#news\" + id).show();\r\n        $(\".b1mid .list\").not(\"#news\" + id).hide();\r\n      })\r\n      //其他服务\r\n      $(\".b5else .titleul li\").first().addClass(\"hover\");\r\n      $(\".b5else .xlist\").first().show();\r\n      $(\".b5else .titleul li\").hover(function () {\r\n        $(this).addClass(\"hover\");\r\n        $(\".b5else .titleul li\").not(this).removeClass(\"hover\");\r\n        var id = $(this).data(\"id\");\r\n        $(\"#news\" + id).show();\r\n        $(\".b5else .xlist\").not(\"#news\" + id).hide();\r\n      })\r\n      //公司公文4个栏目\r\n      $(\".b2left .titleul li\").first().addClass(\"hover\");\r\n      $(\".b2left .titleul li:gt(3)\").hide();\r\n      $(\".b2left .list\").first().show();\r\n      $(\".b2left .titleul li\").hover(function () {\r\n        $(this).addClass(\"hover\");\r\n        $(\".b2left .titleul li\").not(this).removeClass(\"hover\");\r\n        var id = $(this).data(\"id\");\r\n        $(\"#news\" + id).show();\r\n        $(\".b2left .list\").not(\"#news\" + id).hide();\r\n      })\r\n      //首页图标\r\n      $(\".b2mid .titleul li\").first().addClass(\"hover\");\r\n      $(\".b3left .list\").first().show();\r\n      $(\".b2mid .titleul li\").hover(function () {\r\n        $(this).addClass(\"hover\");\r\n        $(\".b2mid .titleul li\").not(this).removeClass(\"hover\");\r\n        var id = $(this).data(\"id\");\r\n        $(\"#\" + id).show();\r\n        $(\".chatimg\").not(\"#\" + id).hide();\r\n      })\r\n      //大项目切换\r\n      $(\".b3left .titleul li\").first().addClass(\"hover\");\r\n      $(\".b3left .list\").first().show();\r\n      $(\".b3left .titleul li\").hover(function () {\r\n        $(this).addClass(\"hover\");\r\n        $(\".b3left .titleul li\").not(this).removeClass(\"hover\");\r\n        var id = $(this).data(\"id\");\r\n        $(\"#\" + id).show();\r\n        $(\".js_h\").not(\"#\" + id).hide();\r\n      })\r\n\r\n\r\n      // // 友情链接\r\n      // $(\".linklist\").hover(function () {\r\n      //     // $(this).addClass(\"hover\");\r\n      //     // $(\"#y1\").not(this).removeClass(\"hover\");\r\n      //     // var id = $(this).data(\"id\");\r\n      //     // $(\"#\" + id).show();\r\n      //     // $(\".list1\").not(\"#\" + id).hide();\r\n      //     $(\".linklist\").show();\r\n      // })\r\n      $(\".b5else .linklist li\").hover(function () {\r\n        $(this).addClass(\"hover\");\r\n        $(\".b5else .linklist li\").not(this).removeClass(\"hover\");\r\n        var id = $(this).data(\"id\");\r\n        $(\"#\" + id).show();\r\n        $(\".js_h\").not(\"#\" + id).hide();\r\n      })\r\n\r\n\r\n      //HSSE管理\r\n      $(\"#h1 .lanmu2 a\").first().addClass(\"hover\");\r\n      $(\"#h1 .list\").first().show();\r\n      $(\"#h1 .lanmu2 a\").hover(function () {\r\n        $(this).addClass(\"hover\");\r\n        $(\"#h1 .lanmu2 a\").not(this).removeClass(\"hover\");\r\n        var id = $(this).data(\"id\");\r\n        $(\"#\" + id).show();\r\n        $(\"#h1 .list\").not(\"#\" + id).hide();\r\n      }, function () {})\r\n\r\n      // HSSE公示\r\n      $(\"#h4 .lanmu2 a\").first().addClass(\"hover\");\r\n      $(\"#h4 .list\").first().show();\r\n      $(\"#h4 .lanmu2 a\").hover(function () {\r\n        $(this).addClass(\"hover\");\r\n        $(\"#h4 .lanmu2 a\").not(this).removeClass(\"hover\");\r\n        var id = $(this).data(\"id\");\r\n        $(\"#\" + id).show();\r\n        $(\"#h4 .list\").not(\"#\" + id).hide();\r\n      }, function () {})\r\n\r\n      // HSSE学习\r\n      $(\"#h5 .lanmu2 a\").first().addClass(\"hover\");\r\n      $(\"#h5 .list\").first().show();\r\n      $(\"#h5 .lanmu2 a\").hover(function () {\r\n        $(this).addClass(\"hover\");\r\n        $(\"#h5 .lanmu2 a\").not(this).removeClass(\"hover\");\r\n        var id = $(this).data(\"id\");\r\n        $(\"#\" + id).show();\r\n        $(\"#h5 .list\").not(\"#\" + id).hide();\r\n      }, function () {})\r\n\r\n      //企业管理\r\n      $(\"#h0 .lanmu2 a\").first().addClass(\"hover\");\r\n      $(\"#h0 .list\").first().show();\r\n      $(\"#h0 .lanmu2 a\").hover(function () {\r\n        $(this).addClass(\"hover\");\r\n        $(\"#h0 .lanmu2 a\").not(this).removeClass(\"hover\");\r\n        var id = $(this).data(\"id\");\r\n        $(\"#\" + id).show();\r\n        $(\"#h0 .list\").not(\"#\" + id).hide();\r\n      }, function () {})\r\n\r\n      //生产经营\r\n      $(\"#h2 .lanmu2 a\").first().addClass(\"hover\");\r\n      $(\"#h2 .list\").first().show();\r\n      $(\"#h2 .lanmu2 a\").hover(function () {\r\n        $(this).addClass(\"hover\");\r\n        $(\"#h2 .lanmu2 a\").not(this).removeClass(\"hover\");\r\n        var id = $(this).data(\"id\");\r\n        $(\"#\" + id).show();\r\n        $(\"#h2 .list\").not(\"#\" + id).hide();\r\n      }, function () {})\r\n\r\n      //培训管理\r\n      $(\"#h3 .lanmu2 a\").first().addClass(\"hover\");\r\n      $(\"#h3 .list\").first().show();\r\n      $(\"#h3 .lanmu2 a\").hover(function () {\r\n        $(this).addClass(\"hover\");\r\n        $(\"#h3 .lanmu2 a\").not(this).removeClass(\"hover\");\r\n        var id = $(this).data(\"id\");\r\n        $(\"#\" + id).show();\r\n        $(\"#h3 .list\").not(\"#\" + id).hide();\r\n      }, function () {})\r\n\r\n      //竞赛管理\r\n      // $(\".b3right .titleul li\").first().addClass(\"hover\");\r\n      // $(\".b3right .table\").first().show();\r\n      // $(\".b3right .titleul li\").hover(function () {\r\n      //     $(this).addClass(\"hover\");\r\n      //     $(\".b3right .titleul li\").not(this).removeClass(\"hover\");\r\n      //     var id = $(this).data(\"id\");\r\n      //     $(\"#\" + id).show();\r\n      //     $(\".b3right .table\").not(\"#\" + id).hide();\r\n      // })\r\n\r\n      $(\".b3right .titleul li\").first().addClass(\"hover\");\r\n      $(\".b3right .list\").first().show();\r\n      $(\".b3right .titleul li\").hover(function () {\r\n        $(this).addClass(\"hover\");\r\n        $(\".b3right .titleul li\").not(this).removeClass(\"hover\");\r\n        var id = $(this).data(\"id\");\r\n        $(\"#news\" + id).show();\r\n        $(\".b3right .list\").not(\"#news\" + id).hide();\r\n      })\r\n\r\n      //图片滚动\r\n      $('#marquee1').kxbdSuperMarquee({\r\n        isMarquee: true,\r\n        isEqual: false,\r\n        scrollDelay: 50,\r\n        btnGo: null,\r\n        direction: 'left'\r\n      });\r\n      $('#marquee2').kxbdSuperMarquee({\r\n        isMarquee: true,\r\n        isEqual: false,\r\n        scrollDelay: 50,\r\n        btnGo: null,\r\n        direction: 'right'\r\n      });\r\n    })\r\n  </");
	templateBuilder.Append("script>\r\n</body>\r\n\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
