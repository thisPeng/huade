<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.index" ValidateRequest="false" %>
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

	DTcms.Model.article m1 = get_model(5);

	DTcms.Model.article m2 = get_model(6);

	templateBuilder.Append("<!DOCTYPE html>\r\n<html style=\"height: 100%\">\r\n   <head>\r\n       <meta charset=\"utf-8\">\r\n   </head>\r\n   <body style=\"height: 100%; margin: 0\">\r\n        <div id=\"container\" style=\"width:457px;height:208px;\"></div>\r\n       <script type=\"text/javascript\" src=\"http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js\"></");
	templateBuilder.Append("script>\r\n       <script type=\"text/javascript\" src=\"http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js\"></");
	templateBuilder.Append("script>\r\n       <script type=\"text/javascript\" src=\"http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js\"></");
	templateBuilder.Append("script>\r\n       <script type=\"text/javascript\" src=\"http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js\"></");
	templateBuilder.Append("script>\r\n       <script type=\"text/javascript\" src=\"http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js\"></");
	templateBuilder.Append("script>\r\n       <script type=\"text/javascript\" src=\"http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js\"></");
	templateBuilder.Append("script>\r\n     <!--  <script type=\"text/javascript\" src=\"https://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM\"></");
	templateBuilder.Append("script> -->\r\n       <script type=\"text/javascript\" src=\"http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js\"></");
	templateBuilder.Append("script>\r\n       <script type=\"text/javascript\" src=\"http://echarts.baidu.com/gallery/vendors/simplex.js\"></");
	templateBuilder.Append("script>\r\n       <script type=\"text/javascript\">\r\nvar dom = document.getElementById(\"container\");\r\nvar myChart = echarts.init(dom);\r\nvar app = {};\r\noption = null;\r\noption = {\r\n    tooltip: {\r\n        trigger: 'axis'\r\n    },\r\n    legend: {\r\n        data:['当月途耗','累计']\r\n    },\r\n    xAxis:  {\r\n        type: 'category',\r\n        boundaryGap: false,\r\n        data: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']\r\n    },\r\n    yAxis: {\r\n        type: 'value'\r\n    },\r\n    series: [\r\n        {\r\n            name:'当月途耗',\r\n            type:'line',\r\n            color:'#00BBFF',\r\n            data: ['" + Utils.ObjectToStr(m1.fields["d1"]) + "','" + Utils.ObjectToStr(m1.fields["d2"]) + "','" + Utils.ObjectToStr(m1.fields["d3"]) + "','" + Utils.ObjectToStr(m1.fields["d4"]) + "','" + Utils.ObjectToStr(m1.fields["d5"]) + "','" + Utils.ObjectToStr(m1.fields["d6"]) + "','" + Utils.ObjectToStr(m1.fields["d7"]) + "','" + Utils.ObjectToStr(m1.fields["d8"]) + "','" + Utils.ObjectToStr(m1.fields["d9"]) + "','" + Utils.ObjectToStr(m1.fields["d10"]) + "','" + Utils.ObjectToStr(m1.fields["d11"]) + "','" + Utils.ObjectToStr(m1.fields["d12"]) + "']\r\n        },\r\n        {\r\n            name:'累计',\r\n            type:'line',\r\n            color:'#f90',\r\n            data: ['" + Utils.ObjectToStr(m2.fields["d1"]) + "','" + Utils.ObjectToStr(m2.fields["d2"]) + "','" + Utils.ObjectToStr(m2.fields["d3"]) + "','" + Utils.ObjectToStr(m2.fields["d4"]) + "','" + Utils.ObjectToStr(m2.fields["d5"]) + "','" + Utils.ObjectToStr(m2.fields["d6"]) + "','" + Utils.ObjectToStr(m2.fields["d7"]) + "','" + Utils.ObjectToStr(m2.fields["d8"]) + "','" + Utils.ObjectToStr(m2.fields["d9"]) + "','" + Utils.ObjectToStr(m2.fields["d10"]) + "','" + Utils.ObjectToStr(m2.fields["d11"]) + "','" + Utils.ObjectToStr(m2.fields["d12"]) + "']\r\n        }\r\n    ]\r\n};\r\n;\r\nif (option && typeof option === \"object\") {\r\n    myChart.setOption(option, true);\r\n}\r\n       </");
	templateBuilder.Append("script>\r\n   </body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
