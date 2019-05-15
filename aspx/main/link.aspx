<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.Plugin.Link.link" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2018/12/29 14:52:13.
		本页面代码由DTcms模板引擎生成于 2018/12/29 14:52:13. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!doctype html>\r\n<html>\r\n<head>\r\n<meta charset=\"utf-8\">\r\n<title>友情链接 - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" name=\"keywords\" />\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" name=\"description\" />\r\n<link type=\"text/css\" rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n<link type=\"text/css\" rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" />\r\n<link type=\"text/css\" rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/ui-dialog.css\" />\r\n<link type=\"text/css\" rel=\"stylesheet\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css\" />\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/dialog-plus-min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n$(function(){\r\n	//初始化表单\r\n	AjaxInitForm('#link_form', '#btnSubmit', 1);\r\n});\r\n</");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--页面头部-->\r\n");

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
	templateBuilder.Append("script>\r\n            <!-- <div class=\"searchbox\">\r\n                <div class=\"mod_select\">\r\n                    <div class=\"select_box\">\r\n                        <span class=\"select_txt\">选择</span>\r\n                        <span class=\"select-icon\"></span>\r\n                        <ul class=\"option\">\r\n                            <li>公司介绍</li>\r\n                            <li>新闻资讯</li>\r\n                            <li>公司公文</li>\r\n                            <li>管理制度</li>\r\n                            <li>企业文化</li>\r\n                            <li>HSSE管理</li>\r\n                            <li>生产经营</li>\r\n                            <li>企业管理</li>\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n                <form action=\"\" >\r\n                    <input type=\"hidden\" name=\"\" value=\"\" id=\"select_value\">\r\n                    <input type=\"text\" name=\"keywords\" id=\"keywords\" name=\"keywords\" x-webkit-speech=\"\" onkeydown=\"if(event.keyCode==13){SiteSearch('/search.html', '#keywords');return false};\" class=\"import\">\r\n                    <a href=\"javascript:;\" onclick=\"SiteSearch('/search.html', '#keywords');\" class=\"btn-search\"><span class=\"keysearch\">搜   索</span></a>\r\n                </form>\r\n              </div> -->\r\n            <div class=\"search\">\r\n                <input id=\"keywords\" name=\"keywords\" x-webkit-speech=\"\" onkeydown=\"if(event.keyCode==13){SiteSearch('/search.html', '#keywords');return false};\" type=\"text\" placeholder=\"输入关健字\">\r\n                <a href=\"javascript:;\" onclick=\"SiteSearch('/search.html', '#keywords');\"><img src=\"");
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


	templateBuilder.Append("\r\n<!--/页面头部-->\r\n\r\n<!--当前位置-->\r\n<div class=\"section\">\r\n    <div class=\"location\">\r\n        <span>当前位置：</span>\r\n        <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a> &gt;\r\n        <a href=\"");
	templateBuilder.Append(linkurl("link"));

	templateBuilder.Append("\">友情链接</a>\r\n    </div>\r\n</div>\r\n<!--/当前位置-->\r\n\r\n<div class=\"section clearfix\">\r\n    <!--/页面右边-->\r\n    <div class=\"right-260\">\r\n        <div class=\"bg-wrap nobg\">\r\n            <div class=\"sidebar-box\">\r\n                <h4>栏目导航</h4>\r\n                <ul class=\"navbar\">\r\n                    ");
	DataTable contentlist = get_article_list("content", 0, 0, "status=0");

	foreach(DataRow dr in contentlist.Rows)
	{

	templateBuilder.Append("\r\n                    <li>\r\n                        <h5><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("content",Utils.ObjectToStr(dr["call_index"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></h5>\r\n                    </li>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                    <li>\r\n                        <h5><a href=\"");
	templateBuilder.Append(linkurl("feedback"));

	templateBuilder.Append("\">留言反馈</a></h5>\r\n                    </li>\r\n                    <li>\r\n                        <h5><a href=\"");
	templateBuilder.Append(linkurl("link"));

	templateBuilder.Append("\">友情链接</a></h5>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            \r\n            <div class=\"sidebar-box\">\r\n                <h4>联系我们</h4>\r\n                <ul class=\"txt-list\">\r\n                    <li>");
	templateBuilder.Append(Utils.ObjectToStr(site.company));
	templateBuilder.Append("</li>\r\n                    <li>地址：");
	templateBuilder.Append(Utils.ObjectToStr(site.address));
	templateBuilder.Append("</li>\r\n                    <li>电话：");
	templateBuilder.Append(Utils.ObjectToStr(site.tel));
	templateBuilder.Append("</li>\r\n                    <li>E-mail：");
	templateBuilder.Append(Utils.ObjectToStr(site.email));
	templateBuilder.Append("</li>\r\n                    <li>微信公众号：动力启航</li>\r\n                </ul>\r\n            </div>\r\n            \r\n        </div>\r\n    </div>\r\n    <!--/页面右边-->\r\n    \r\n    <!--页面左边-->\r\n    <div class=\"left-auto\">\r\n        <div class=\"bg-wrap\">\r\n            <div class=\"meta\">\r\n                <h2>友情链接</h2>\r\n            </div>\r\n            \r\n            <div class=\"link-box\">\r\n                <div class=\"side-link clearfix\">\r\n                    <ul class=\"img\">\r\n                    ");
	DataTable imgList = new DTcms.Web.Plugin.Link.link().get_link_list(0, "is_image=1");

	foreach(DataRow dr in imgList.Rows)
	{

	templateBuilder.Append("\r\n                        <li>\r\n                            <a target=\"_blank\" href=\"" + Utils.ObjectToStr(dr["site_url"]) + "\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">\r\n                                <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n                            </a>\r\n                        </li>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                    \r\n                    <div class=\"txt\">\r\n                    ");
	DataTable txtList = new DTcms.Web.Plugin.Link.link().get_link_list(0, "is_image=0");

	foreach(DataRow dr in txtList.Rows)
	{

	templateBuilder.Append("\r\n                        <a target=\"_blank\" href=\"" + Utils.ObjectToStr(dr["site_url"]) + "\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a>\r\n                        <strong>|</strong>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                    </div>\r\n                </div>\r\n                \r\n                <h2 class=\"slide-tit\">\r\n                    <span>申请链接</span>\r\n                </h2>\r\n                \r\n                <form id=\"link_form\" name=\"link_form\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("plugins/link/ajax.ashx?action=add&site=");
	templateBuilder.Append(Utils.ObjectToStr(site.id));
	templateBuilder.Append("\">\r\n                <div class=\"form-box\" style=\"margin:0 20px;\">\r\n                    <dl class=\"form-group\">\r\n                        <dt>网站名称：</dt>\r\n                        <dd>\r\n                            <input id=\"txtTitle\" name=\"txtTitle\" type=\"text\" class=\"input\" datatype=\"*\" sucmsg=\" \" />\r\n                            <span class=\"Validform_checktip\">*需要申请友情链接的网站标题</span>\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>联 系 人：</dt>\r\n                        <dd>\r\n                            <input id=\"txtUserName\" name=\"txtUserName\" type=\"text\" class=\"input\" datatype=\"*\" sucmsg=\" \" />\r\n                            <span class=\"Validform_checktip\">*该网站联系人的姓名</span>\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>联系电话：</dt>\r\n                        <dd>\r\n                            <input id=\"txtUserTel\" name=\"txtUserTel\" type=\"text\" class=\"input\" />\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>电子邮箱：</dt>\r\n                        <dd>\r\n                            <input id=\"txtEmail\" name=\"txtEmail\" type=\"text\" class=\"input\" />\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>链接网址：</dt>\r\n                        <dd>\r\n                            <input id=\"txtSiteUrl\" name=\"txtSiteUrl\" type=\"text\" class=\"input\" datatype=\"url\" sucmsg=\" \" />\r\n                            <span class=\"Validform_checktip\">*申请友情链接的网址</span>\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>LOGO图片：</dt>\r\n                        <dd>\r\n                            <input id=\"txtImgUrl\" name=\"txtImgUrl\" type=\"text\" class=\"input\" />\r\n                            <span class=\"Validform_checktip\">网站链接的LOGO图片地址</span>\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>验 证 码：</dt>\r\n                        <dd>\r\n                            <input id=\"txtCode\" name=\"txtCode\" type=\"text\" class=\"input code\" placeholder=\"输入验证码\" datatype=\"s4-20\" nullmsg=\"请输入右边显示的验证码\" sucmsg=\" \" />\r\n                            <a href=\"javascript:;\" onclick=\"ToggleCode(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx');return false;\">\r\n                                <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx\" width=\"80\" height=\"22\" /> 看不清楚？\r\n                            </a>\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                      <dd>\r\n                          <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" value=\"提交申请\" class=\"submit\" />\r\n                      </dd>\r\n                    </dl>\r\n                    \r\n                </div>\r\n                </form>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--/页面左边-->\r\n</div>\r\n\r\n<!--页面底部-->\r\n");

	templateBuilder.Append("<div class=\"footer\">\r\n    <p>版权所有：华德石化有限公司 &nbsp &nbsp 技术支持：易隆软件</p>\r\n    <p>联系电话：0752-5599531 &nbsp &nbsp 地址：惠州市大亚湾澳头安惠大道5－2号</p>\r\n</div>\r\n<script>\r\n    //搜索查询\r\n    function SiteSearch(send_url, divTgs) {\r\n        var str = $.trim($(divTgs).val());\r\n        if (str.length > 0 && str != \"输入关健字\") {\r\n            window.location.href = send_url + \"?keyword=\" + encodeURI($(divTgs).val());\r\n        }\r\n        return false;\r\n    }\r\n    //日期判断\r\n    $(function(){\r\n        var d=new Date();\r\n        var year=d.getFullYear();\r\n        var month=d.getMonth()+1;\r\n        var day=d.getDate();\r\n        var w=d.getDay();\r\n        var week=[\"星期天\",\"星期一\",\"星期二\",\"星期三\",\"星期四\",\"星期五\",\"星期六\"];\r\n        var html=\"欢迎您！ 今天是\"+year+\"年\"+month+\"月\"+day+\"日 \"+week[w];\r\n        $(\"#tdate\").html(html);\r\n    })\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n<!--/页面底部-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
