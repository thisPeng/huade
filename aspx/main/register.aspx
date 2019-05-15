<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.register" ValidateRequest="false" %>
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

	templateBuilder.Append("<!doctype html>\r\n<html>\r\n<head>\r\n<meta charset=\"utf-8\">\r\n<title>会员注册 - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/ui-dialog.css\" />\r\n<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/base.css\">\r\n<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/css.css\">\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/dialog-plus-min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
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


	templateBuilder.Append("\r\n<!--/页面头部-->\r\n\r\n<!--当前位置-->\r\n<div class=\"section\">\r\n    <div class=\"location\">\r\n        <span>当前位置：</span>\r\n        <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a> &gt;\r\n        <a href=\"javascript:;\">会员注册</a>\r\n    </div>\r\n</div>\r\n<!--/当前位置-->\r\n\r\n<!--导航推荐-->\r\n<div class=\"section\">\r\n    <div class=\"wrapper\">\r\n        <div class=\"bg-wrap\">\r\n            \r\n            ");
	if (action=="")
	{

	templateBuilder.Append("\r\n            <!--会员注册-->\r\n            <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n            <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n            <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n            <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/register-validate.js\"></");
	templateBuilder.Append("script>\r\n            <div class=\"nav-tit\">\r\n                <a class=\"selected\" href=\"javascript:;\">会员注册</a>\r\n                <i>|</i>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\">账户登录</a>\r\n            </div>\r\n            <form id=\"regform\" name=\"regform\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_register&site_id=");
	templateBuilder.Append(Utils.ObjectToStr(site.id));
	templateBuilder.Append("\">\r\n                <div class=\"form-box full\">\r\n                    <dl class=\"form-group\">\r\n                        <dt>用 户 名：</dt>\r\n                        <dd>\r\n                            <input id=\"txtUserName\" name=\"txtUserName\" type=\"text\" class=\"input\" placeholder=\"输入登录用户名\" datatype=\"s3-50\" nullmsg=\"请输入登录的用户名\" sucmsg=\" \" ajaxurl=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=validate_username\" />\r\n                            <span class=\"Validform_checktip\">请输入登录的用户名</span>\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</dt>\r\n                        <dd>\r\n                            <input id=\"txtPassword\" name=\"txtPassword\" type=\"password\" class=\"input\" placeholder=\"输入登录密码\" datatype=\"*6-20\" nullmsg=\"请输入登录密码\" errormsg=\"密码范围在6-20位之间\" sucmsg=\" \" />\r\n                            <span class=\"Validform_checktip\">请输入6-20位的登录密码</span>\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>确认密码：</dt>\r\n                        <dd>\r\n                            <input id=\"txtPassword1\" name=\"txtPassword1\" type=\"password\" class=\"input\" placeholder=\"请再次输入密码\" datatype=\"*\" recheck=\"txtPassword\" nullmsg=\"请再输入一次密码\" errormsg=\"两次输入的密码不一致\" sucmsg=\" \" />\r\n                            <span class=\"Validform_checktip\">请再次输入登录密码</span>\r\n                        </dd>\r\n                    </dl>\r\n                    ");
	if (uconfig.regstatus==1||uconfig.regstatus==2)
	{

	templateBuilder.Append("\r\n                    <!--开放注册及手机注册-->\r\n                    <dl class=\"form-group\">\r\n                        <dt>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</dt>\r\n                        <dd>\r\n                            <input id=\"txtMobile\" name=\"txtMobile\" type=\"text\" class=\"input\" placeholder=\"输入手机号码\" datatype=\"m\" nullmsg=\"请输入手机号码\" sucmsg=\" \" />\r\n                            <span class=\"Validform_checktip\">请输入手机号码</span>\r\n                        </dd>\r\n                    </dl>\r\n                    <!--/开放注册及手机注册-->\r\n                    ");
	}	//end for if

	if (uconfig.regstatus==2)
	{

	templateBuilder.Append("\r\n                    <!--开启手机注册-->\r\n                    <dl class=\"form-group\">\r\n                        <dt>确 认 码：</dt>\r\n                        <dd>\r\n                            <input id=\"txtCode\" name=\"txtCode\" type=\"text\" class=\"input code\" placeholder=\"输入手机验证码\"  datatype=\"s4-20\" nullmsg=\"请输入手机收到的验证码\" sucmsg=\" \" />\r\n                            <a class=\"send\" href=\"javascript:;\" onclick=\"sendSMS(this,'#txtMobile','");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("');\">获取验证码</a>\r\n                            <span class=\"Validform_checktip\">请手机短信收到的验证码</span>\r\n                        </dd>\r\n                    </dl>\r\n                    <!--/开启手机注册-->\r\n                    ");
	}	//end for if

	if (uconfig.regstatus==1||uconfig.regstatus==3||uconfig.regstatus==4)
	{

	templateBuilder.Append("\r\n                    <!--开放注册及邮箱邀请注册-->\r\n                    <dl class=\"form-group\">\r\n                        <dt>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</dt>\r\n                        <dd>\r\n                            <input id=\"txtEmail\" name=\"txtEmail\" type=\"text\" class=\"input\" placeholder=\"输入邮箱账号\" datatype=\"e\" nullmsg=\"请输入电子邮箱账号\" sucmsg=\" \" />\r\n                            <span class=\"Validform_checktip\">请输入电子邮箱账号</span>\r\n                        </dd>\r\n                    </dl>\r\n                    <!--/开放注册及邮箱邀请注册-->\r\n                    ");
	}	//end for if

	if (uconfig.regstatus==4)
	{

	templateBuilder.Append("\r\n                    <!--开启邀请注册-->\r\n                    <dl class=\"form-group\">\r\n                        <dt>邀 请 码：</dt>\r\n                        <dd>\r\n                            <input id=\"txtCode\" name=\"txtCode\" type=\"text\" class=\"input\" placeholder=\"输入好友提供的邀请码\" datatype=\"s2-20\" nullmsg=\"请输入注册邀请码\" sucmsg=\" \" />\r\n                            <span class=\"Validform_checktip\">输入好友提供的邀请码</span>\r\n                        </dd>\r\n                    </dl>\r\n                    <!--/开启邀请注册-->\r\n                    ");
	}	//end for if

	if (uconfig.regstatus==1)
	{

	templateBuilder.Append("\r\n                    <!--开放注册-->\r\n                    <dl class=\"form-group\">\r\n                        <dt>验 证 码：</dt>\r\n                        <dd>\r\n                            <input id=\"txtCode\" name=\"txtCode\" type=\"text\" class=\"input code\" placeholder=\"输入验证码\" datatype=\"s4-20\" nullmsg=\"请输入右边显示的验证码\" sucmsg=\" \" />\r\n                            <a class=\"send\" href=\"javascript:;\" onclick=\"ToggleCode(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx');return false;\">\r\n                              <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx\" width=\"80\" height=\"22\" />\r\n                            </a>\r\n                        </dd>\r\n                    </dl>\r\n                    <!--/开放注册-->\r\n                    ");
	}	//end for if

	if (uconfig.regrules==1)
	{

	templateBuilder.Append("\r\n                    <!--开启注册协议-->\r\n                    <dl class=\"form-group\">\r\n                        <dd>\r\n                            <input id=\"chkAgree\" name=\"chkAgree\" type=\"checkbox\" value=\"1\">\r\n                            <label for=\"chkAgree\">我已仔细阅读并接受 <a href=\"javascript:;\" onclick=\"showWindow('#regrules');\">注册许可协议</a></label>\r\n                            <div id=\"regrules\" title=\"注册许可协议\" style=\"display:none;\">");
	templateBuilder.Append(Utils.ObjectToStr(uconfig.regrulestxt));
	templateBuilder.Append("</div>\r\n                        </dd>\r\n                    </dl>\r\n                    <!--/开启注册协议-->\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                    \r\n                    <dl class=\"form-group\">\r\n                        <dd>\r\n                        ");
	if (uconfig.regrules==1)
	{

	templateBuilder.Append("\r\n                            <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" value=\"立即注册\" class=\"submit\" disabled=\"disabled\" />\r\n                        ");
	}
	else
	{

	templateBuilder.Append("\r\n                            <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" value=\"立即注册\" class=\"submit\" />\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                        </dd>\r\n                    </dl>\r\n                </div>\r\n            </form>\r\n            <!--/会员注册-->\r\n            ");
	}	//end for if

	if (action=="close")
	{

	templateBuilder.Append("\r\n            <!--关闭会员注册-->\r\n            <div class=\"nav-tit\">\r\n                <a class=\"selected\" href=\"javascript:;\">温馨提示</a>\r\n            </div>\r\n            <div class=\"msg-tips\">\r\n                <div class=\"icon warning\">\r\n                    <i class=\"iconfont icon-tip\"></i>\r\n                </div>\r\n                <div class=\"info\">\r\n                    <strong>非常抱歉，系统暂停注册会员服务！</strong>\r\n                    <p>由于某些原因，系统暂停注册会员，如对您造成不便之处，我们深感遗憾！</p>\r\n                    <p>如需了解开放时间，请联系本站客服或管理员。</p>\r\n                    <p>您可以点击这里<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">返回网站首页</a></p>\r\n                </div>\r\n            </div>\r\n            <!--/关闭会员注册-->\r\n            ");
	}	//end for if

	if (action=="sendmail")
	{

	templateBuilder.Append("\r\n            <!--发送邮箱验证-->\r\n            <div class=\"nav-tit\">\r\n                <a class=\"selected\" href=\"javascript:;\">温馨提示</a>\r\n            </div>\r\n            <div class=\"msg-tips\">\r\n                <div class=\"icon warning\">\r\n                    <i class=\"iconfont icon-tip\"></i>\r\n                </div>\r\n                <div class=\"info\">\r\n                    <strong>注册成功，但需要邮箱验证后方可使用！</strong>\r\n                    <p>欢迎您成为本站会员，您的账户目前处于未验证状态，请尽快登录您的注册邮箱激活该会员账户。</p>\r\n                    <p>系统已经自动为您发送了一封验证邮件，如果您长时间未收到邮件，请点击这里<a href=\"javascript:;\" onclick=\"sendEmail('");
	templateBuilder.Append(Utils.ObjectToStr(username));
	templateBuilder.Append("', '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_verify_email&site=");
	templateBuilder.Append(Utils.ObjectToStr(site.build_path));
	templateBuilder.Append("');\">重新发送邮件</a>！</p>\r\n                    <p>\r\n                        温馨提示：邮件验证有效期为\r\n                        ");
	if (uconfig.regemailexpired>0)
	{

	templateBuilder.Append("\r\n                            ");
	templateBuilder.Append(Utils.ObjectToStr(uconfig.regemailexpired));
	templateBuilder.Append("天\r\n                        ");
	}
	else
	{

	templateBuilder.Append("\r\n                            无限制\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </p>\r\n                </div>\r\n            </div>\r\n            <!--/发送邮箱验证-->\r\n            ");
	}	//end for if

	if (action=="checkmail")
	{

	templateBuilder.Append("\r\n            <!--邮箱验证成功-->\r\n            <div class=\"nav-tit\">\r\n                <a class=\"selected\" href=\"javascript:;\">温馨提示</a>\r\n            </div>\r\n            <div class=\"msg-tips\">\r\n                <div class=\"icon\">\r\n                    <i class=\"iconfont icon-check\"></i>\r\n                </div>\r\n                <div class=\"info\">\r\n                    <strong>恭喜您");
	templateBuilder.Append(Utils.ObjectToStr(username));
	templateBuilder.Append("，已通过邮件激活会员账户</strong>\r\n                    <p>会员账户已经激活，从现在起您可以享受更多的会员服务。</p>\r\n                    <p>赶快点击这里返回<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a>，点击这里<a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">进入会员中心</a></p>\r\n                </div>\r\n            </div>\r\n            <!--/邮箱验证成功-->\r\n            ");
	}	//end for if

	if (action=="checkerror")
	{

	templateBuilder.Append("\r\n            <!--注册验证失败-->\r\n            <div class=\"nav-tit\">\r\n                <a class=\"selected\" href=\"javascript:;\">温馨提示</a>\r\n            </div>\r\n            <div class=\"msg-tips\">\r\n                <div class=\"icon error\">\r\n                    <i class=\"iconfont icon-error\"></i>\r\n                </div>\r\n                <div class=\"info\">\r\n                    <strong>出错了，该用户不存在或验证已过期！</strong>\r\n                    <p>无法验证你的账户，可能是你的用户名不存在或者验证码已经过期！</p>\r\n                    <p>不过别担心，可以联系本站客服处理，点击这里<a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\">进入会员中心</a></p>\r\n                </div>\r\n            </div>\r\n            <!--/注册验证失败-->\r\n            ");
	}	//end for if

	if (action=="verify")
	{

	templateBuilder.Append("\r\n            <!--人工审核-->\r\n            <div class=\"nav-tit\">\r\n                <a class=\"selected\" href=\"javascript:;\">温馨提示</a>\r\n            </div>\r\n            <div class=\"msg-tips\">\r\n                <div class=\"icon warning\">\r\n                    <i class=\"iconfont icon-tip\"></i>\r\n                </div>\r\n                <div class=\"info\">\r\n                    <strong>账户未审核状态，请等待人工审核通过！</strong>\r\n                    <p>您的会员账户还没有审核通过，等不及的话请联系本站客服！</p>\r\n                    <p>由于种种原因，本站不得以暂时开启人工审核，如对您造成不便敬请原谅。</p>\r\n                    <p>您可以点击这里<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">返回网站首页</a></p>\r\n                </div>\r\n            </div>\r\n            <!--/人工审核-->\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n            \r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<!--页面底部-->\r\n");

	templateBuilder.Append("<div class=\"footer\">\r\n    <p>版权所有：华德石化有限公司 &nbsp &nbsp 技术支持：易隆软件</p>\r\n    <p>联系电话：0752-5599531 &nbsp &nbsp 地址：惠州市大亚湾澳头安惠大道5－2号</p>\r\n</div>\r\n<script>\r\n    //搜索查询\r\n    function SiteSearch(send_url, divTgs) {\r\n        var str = $.trim($(divTgs).val());\r\n        if (str.length > 0 && str != \"输入关健字\") {\r\n            window.location.href = send_url + \"?keyword=\" + encodeURI($(divTgs).val());\r\n        }\r\n        return false;\r\n    }\r\n    //日期判断\r\n    $(function(){\r\n        var d=new Date();\r\n        var year=d.getFullYear();\r\n        var month=d.getMonth()+1;\r\n        var day=d.getDate();\r\n        var w=d.getDay();\r\n        var week=[\"星期天\",\"星期一\",\"星期二\",\"星期三\",\"星期四\",\"星期五\",\"星期六\"];\r\n        var html=\"欢迎您！ 今天是\"+year+\"年\"+month+\"月\"+day+\"日 \"+week[w];\r\n        $(\"#tdate\").html(html);\r\n    })\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n<!--/页面底部-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
