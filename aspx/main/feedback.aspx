<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.feedback" ValidateRequest="false" %>
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

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n    ");
	if (action=="ldxx")
	{

	templateBuilder.Append("\r\n    <title>领导信箱 - ");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("</title>\r\n    ");
	}
	else
	{

	templateBuilder.Append("\r\n    <title>员工小诉求 - ");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("</title>\r\n    ");
	}	//end for if


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


	templateBuilder.Append("\r\n    <link type=\"text/css\" rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n    <link type=\"text/css\" rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/ui-dialog.css\" />\r\n    <script type=\"text/javascript\" src=\"");
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
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n$(function(){\r\n	//初始化发表评论表单\r\n	AjaxInitForm('#feedback_form', '#btnSubmit', 1);\r\n});\r\n</");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n    ");

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


	templateBuilder.Append("\r\n    <div class=\"bc\">\r\n\r\n        <div class=\"w\">\r\n            <div class=\"banner\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/banner.jpg\" alt=\"\">\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"w\">\r\n            <div class=\"box\">\r\n                <!--内容栏目-->\r\n                <div class=\"lmy_main\">\r\n                    <div class=\"left\">\r\n                        <div class=\"l_top\">\r\n                            留言管理\r\n                        </div>\r\n                    </div>\r\n                    ");
	if (action=="ldxx")
	{

	templateBuilder.Append("\r\n                    <div class=\"right\">\r\n                        <div class=\"r_top\">\r\n                            <div class=\"r_t_left\">领导信箱</div>\r\n                        </div>\r\n                        <form id=\"feedback_form\" name=\"feedback_form\" url=\"/plugins/feedback/ajax.ashx?action=add&amp;site=1\">\r\n                <div class=\"form-box\" style=\"margin:0 20px;\">\r\n                    <dl class=\"form-group\">\r\n                        <dt>用户昵称：</dt>\r\n                        <dd>\r\n                            <input id=\"txtUserName\" name=\"txtUserName\" type=\"text\" class=\"input\" datatype=\"*\" sucmsg=\" \">\r\n                        <span class=\"Validform_checktip\"></span></dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>联系电话：</dt>\r\n                        <dd>\r\n                            <input id=\"txtUserTel\" name=\"txtUserTel\" type=\"text\" class=\"input\" datatype=\"*0-20\" sucmsg=\" \">\r\n                        <span class=\"Validform_checktip\"></span></dd>\r\n                    </dl>\r\n                    <input id=\"txtUserQQ\" name=\"txtUserQQ\" type=\"hidden\" class=\"input\" value=\"领导信箱\">\r\n                    <dl class=\"form-group\">\r\n                        <dt>电子邮箱：</dt>\r\n                        <dd>\r\n                            <input id=\"txtUserEmail\" name=\"txtUserEmail\" type=\"text\" class=\"input\">\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>留言标题：</dt>\r\n                        <dd>\r\n                            <input id=\"txtTitle\" name=\"txtTitle\" type=\"text\" class=\"input txt\" datatype=\"*2-100\" sucmsg=\" \">\r\n                        <span class=\"Validform_checktip\"></span></dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>留言内容：</dt>\r\n                        <dd>\r\n                            <textarea id=\"txtContent\" name=\"txtContent\" class=\"textarea\" datatype=\"*\" sucmsg=\" \" style=\"height:80px;\"></textarea>\r\n                        <span class=\"Validform_checktip\"></span></dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>验 证 码：</dt>\r\n                        <dd>\r\n                            <input id=\"txtCode\" name=\"txtCode\" type=\"text\" class=\"input code\" placeholder=\"输入验证码\" datatype=\"s4-20\" nullmsg=\"请输入右边显示的验证码\" sucmsg=\" \">\r\n                            <a href=\"javascript:;\" onclick=\"ToggleCode(this, '/tools/verify_code.ashx');return false;\">\r\n                                <img src=\"/tools/verify_code.ashx\" width=\"80\" height=\"22\"> 看不清楚？\r\n                            </a>\r\n                        <span class=\"Validform_checktip\"></span></dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                      <dd>\r\n                          <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" value=\"发表留言\" class=\"submit\">\r\n                      </dd>\r\n                    </dl>\r\n                </div>\r\n                </form>\r\n               </div>\r\n\r\n               ");
	}
	else
	{

	templateBuilder.Append("\r\n               <div class=\"right\">\r\n                    <div class=\"r_top\">\r\n                        <div class=\"r_t_left\">领导信箱</div>\r\n                    </div>\r\n                    <form id=\"feedback_form\" name=\"feedback_form\" url=\"/plugins/feedback/ajax.ashx?action=add&amp;site=1\">\r\n            <div class=\"form-box\" style=\"margin:0 20px;\">\r\n                <dl class=\"form-group\">\r\n                    <dt>用户昵称：</dt>\r\n                    <dd>\r\n                        <input id=\"txtUserName\" name=\"txtUserName\" type=\"text\" class=\"input\" datatype=\"*\" sucmsg=\" \">\r\n                    <span class=\"Validform_checktip\"></span></dd>\r\n                </dl>\r\n                <dl class=\"form-group\">\r\n                    <dt>联系电话：</dt>\r\n                    <dd>\r\n                        <input id=\"txtUserTel\" name=\"txtUserTel\" type=\"text\" class=\"input\" datatype=\"*0-20\" sucmsg=\" \">\r\n                    <span class=\"Validform_checktip\"></span></dd>\r\n                </dl>\r\n                <input id=\"txtUserQQ\" name=\"txtUserQQ\" type=\"hidden\" class=\"input\" value=\"员工'小诉求'\">\r\n                <dl class=\"form-group\">\r\n                    <dt>电子邮箱：</dt>\r\n                    <dd>\r\n                        <input id=\"txtUserEmail\" name=\"txtUserEmail\" type=\"text\" class=\"input\">\r\n                    </dd>\r\n                </dl>\r\n                <dl class=\"form-group\">\r\n                    <dt>小诉求标题：</dt>\r\n                    <dd>\r\n                        <input id=\"txtTitle\" name=\"txtTitle\" type=\"text\" class=\"input txt\" datatype=\"*2-100\" sucmsg=\" \">\r\n                    <span class=\"Validform_checktip\"></span></dd>\r\n                </dl>\r\n                <dl class=\"form-group\">\r\n                    <dt>小诉求内容：</dt>\r\n                    <dd>\r\n                        <textarea id=\"txtContent\" name=\"txtContent\" class=\"textarea\" datatype=\"*\" sucmsg=\" \" style=\"height:80px;\"></textarea>\r\n                    <span class=\"Validform_checktip\"></span></dd>\r\n                </dl>\r\n                <dl class=\"form-group\">\r\n                    <dt>验 证 码：</dt>\r\n                    <dd>\r\n                        <input id=\"txtCode\" name=\"txtCode\" type=\"text\" class=\"input code\" placeholder=\"输入验证码\" datatype=\"s4-20\" nullmsg=\"请输入右边显示的验证码\" sucmsg=\" \">\r\n                        <a href=\"javascript:;\" onclick=\"ToggleCode(this, '/tools/verify_code.ashx');return false;\">\r\n                            <img src=\"/tools/verify_code.ashx\" width=\"80\" height=\"22\"> 看不清楚？\r\n                        </a>\r\n                    <span class=\"Validform_checktip\"></span></dd>\r\n                </dl>\r\n                <dl class=\"form-group\">\r\n                  <dd>\r\n                      <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" value=\"发表留言\" class=\"submit\">\r\n                  </dd>\r\n                </dl>\r\n            </div>\r\n            </form>\r\n           </div>\r\n               ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n                </div>\r\n                ");

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


	templateBuilder.Append("\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n    \r\n    ");

	templateBuilder.Append("<div class=\"footer\">\r\n    <p>版权所有：华德石化有限公司 &nbsp &nbsp 技术支持：易隆软件</p>\r\n    <p>联系电话：0752-5599531 &nbsp &nbsp 地址：惠州市大亚湾澳头安惠大道5－2号</p>\r\n</div>\r\n<script>\r\n    //搜索查询\r\n    function SiteSearch(send_url, divTgs) {\r\n        var str = $.trim($(divTgs).val());\r\n        if (str.length > 0 && str != \"输入关健字\") {\r\n            window.location.href = send_url + \"?keyword=\" + encodeURI($(divTgs).val());\r\n        }\r\n        return false;\r\n    }\r\n    //日期判断\r\n    $(function(){\r\n        var d=new Date();\r\n        var year=d.getFullYear();\r\n        var month=d.getMonth()+1;\r\n        var day=d.getDate();\r\n        var w=d.getDay();\r\n        var week=[\"星期天\",\"星期一\",\"星期二\",\"星期三\",\"星期四\",\"星期五\",\"星期六\"];\r\n        var html=\"欢迎您！ 今天是\"+year+\"年\"+month+\"月\"+day+\"日 \"+week[w];\r\n        $(\"#tdate\").html(html);\r\n    })\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
