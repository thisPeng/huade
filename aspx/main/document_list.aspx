<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_list" ValidateRequest="false" %>
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

	base.channel = "document";
	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const int pagesize = 12;

	templateBuilder.Append("<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("</title>\r\n    ");

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


	templateBuilder.Append("\r\n    <link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" rel=\"stylesheet\" />\r\n</head>\r\n\r\n<body>\r\n\r\n    ");

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


	templateBuilder.Append("\r\n    <div class=\"bc\">\r\n        <div class=\"w\">\r\n            <!-- <div class=\"banner\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/banner/banner3.jpg\" alt=\"\">\r\n            </div> -->\r\n        </div>\r\n        <div class=\"w\">\r\n            <div class=\"box\">\r\n                <!--内容栏目-->\r\n                <div class=\"lmy_main\">\r\n                    <div class=\"left\">\r\n                        <!-- <div class=\"l_top\">\r\n                            公司公文\r\n                        </div> -->\r\n                        <div class=\"l_bottom\">\r\n                            <ul class=\"ul_f\">\r\n                                ");
	DataTable cnews = get_category_child_list(channel, 0);

	foreach(DataRow dr in cnews.Rows)
	{

	templateBuilder.Append("\r\n                                <li class=\"");
	if (Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0)==category_id)
	{

	templateBuilder.Append("on");
	}	//end for if

	templateBuilder.Append("\">\r\n                                    <p class=\"p_f\">\r\n                                        <a href='");
	templateBuilder.Append(linkurl("document_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("' id=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "<span class=\"p_f_s\">&gt;</span></a>\r\n                                    </p>\r\n                                    ");
	DataTable cnews1 = get_category_child_list(channel, Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0));

	if (cnews1.Rows.Count>0)
	{

	templateBuilder.Append("\r\n                                    <ul class=\"ul_s\">\r\n                                        ");
	foreach(DataRow drr in cnews1.Rows)
	{

	templateBuilder.Append("\r\n                                        <li><p><a class=\"");
	if (Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0)==category_id)
	{

	templateBuilder.Append("on");
	}	//end for if

	templateBuilder.Append("\" href='");
	templateBuilder.Append(linkurl("document_list",Utils.ObjectToStr(drr["id"])));

	templateBuilder.Append("'> • " + Utils.ObjectToStr(drr["title"]) + "</a></p></li>\r\n                                        ");
	}	//end for if

	templateBuilder.Append("\r\n                                    </ul>\r\n                                    ");
	}	//end for if

	templateBuilder.Append("\r\n                                </li>\r\n                                ");
	}	//end for if

	templateBuilder.Append("\r\n                            </ul>\r\n                        </div>\r\n                    </div>\r\n                    ");
	DataTable contentList = null;

	if (category_id==16)
	{

	 contentList = get_article_list(channel, category_id, pagesize, page, "status=0 and DateDiff(dd,d_txt1,getdate())<=0", out totalcount, out pagelist, "document_list", category_id, "__id__");

	templateBuilder.Append("<!--取得一个分页DataTable-->\r\n                    ");
	}
	else
	{

	 contentList = get_article_list(channel, category_id, pagesize, page, "status=0", out totalcount, out pagelist, "document_list", category_id, "__id__");

	templateBuilder.Append("<!--取得一个分页DataTable-->\r\n                    ");
	}	//end for if

	if (model.call_index=="news")
	{

	templateBuilder.Append("\r\n                    <div class=\"right\">\r\n                        <div class=\"r_top\">\r\n                            <div class=\"r_t_left\">");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</div>\r\n                        </div>\r\n                        <div class=\"news-content\">\r\n                            <ul class=\"news-list\">\r\n                                ");
	foreach(DataRow dr in contentList.Rows)
	{

	templateBuilder.Append("\r\n                                <li><a target=\"_blank\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href='");
	templateBuilder.Append(linkurl("document_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("'>" + Utils.ObjectToStr(dr["title"]) + "</a><span>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(dr["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("</span>\r\n<span>点击数：<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_article_click&channel_id=" + Utils.ObjectToStr(dr["channel_id"]) + "&id=" + Utils.ObjectToStr(dr["id"]) + "\"></");
	templateBuilder.Append("script></span>\r\n</li>\r\n                                ");
	}	//end for if

	templateBuilder.Append("\r\n                            </ul>\r\n                         </div>\r\n                        <div class=\"clear\"></div>\r\n                        <div class=\"page-box\">\r\n                            <div class=\"digg\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div>\r\n                        </div>\r\n                    </div>\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <div class=\"right\">\r\n                        <div class=\"r_top\">\r\n                            <div class=\"r_t_left\">");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</div>\r\n                        </div>\r\n                        <div class=\"img-content\">\r\n                            <ul class=\"img-list\">\r\n                                ");
	foreach(DataRow dr in contentList.Rows)
	{

	templateBuilder.Append("\r\n                                <li>\r\n                                    <a target=\"_blank\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href='");
	templateBuilder.Append(linkurl("document_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("' class=\"item\">\r\n                                        <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\">\r\n                                        <p>" + Utils.ObjectToStr(dr["title"]) + "</p>\r\n                                    </a>\r\n                                </li>\r\n                                ");
	}	//end for if

	templateBuilder.Append("\r\n                            </ul>\r\n                         </div>\r\n                        <div class=\"clear\"></div>\r\n                        <div class=\"page-box\">\r\n                            <div class=\"digg\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div>\r\n                        </div>\r\n                    </div>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </div>\r\n                <!--友情链接-->\r\n                ");

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


	templateBuilder.Append("\r\n\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n\r\n    ");

	templateBuilder.Append("<div class=\"footer\">\r\n    <p>版权所有：华德石化有限公司 &nbsp &nbsp 技术支持：易隆软件</p>\r\n    <p>联系电话：0752-5599531 &nbsp &nbsp 地址：惠州市大亚湾澳头安惠大道5－2号</p>\r\n</div>\r\n<script>\r\n    //搜索查询\r\n    function SiteSearch(send_url, divTgs) {\r\n        var str = $.trim($(divTgs).val());\r\n        if (str.length > 0 && str != \"输入关健字\") {\r\n            window.location.href = send_url + \"?keyword=\" + encodeURI($(divTgs).val());\r\n        }\r\n        return false;\r\n    }\r\n    //日期判断\r\n    $(function(){\r\n        var d=new Date();\r\n        var year=d.getFullYear();\r\n        var month=d.getMonth()+1;\r\n        var day=d.getDate();\r\n        var w=d.getDay();\r\n        var week=[\"星期天\",\"星期一\",\"星期二\",\"星期三\",\"星期四\",\"星期五\",\"星期六\"];\r\n        var html=\"欢迎您！ 今天是\"+year+\"年\"+month+\"月\"+day+\"日 \"+week[w];\r\n        $(\"#tdate\").html(html);\r\n    })\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n    <script>\r\n        $(function(){\r\n            $(\".n4\").addClass(\"hover\");\r\n        })\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
