/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.68
 * Generated at: 2022-10-31 02:48:14 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Manager;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class managerMain_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("file:/Users/usonihs/Documents/Development/tomcat/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1664823970000L));
    _jspx_dependants.put("jar:file:/Users/usonihs/Documents/Development/tomcat/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
    _jspx_dependants.put("/Manager/managerHeader.jsp", Long.valueOf(1667184490000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta name=\"description\" content=\"\">\n");
      out.write("<meta name=\"author\"\n");
      out.write("	content=\"Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들\">\n");
      out.write("<meta name=\"generator\" content=\"Hugo 0.104.2\">\n");
      out.write("\n");
      out.write("<title>HOME</title>\n");
      out.write("\n");
      out.write("<link rel=\"canonical\"\n");
      out.write("	href=\"https://getbootstrap.kr/docs/5.2/examples/product/\">\n");
      out.write("	\n");
      out.write("<link href=\"/docs/5.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\n");
      out.write("	integrity=\"sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi\"\n");
      out.write("	crossorigin=\"anonymous\">\n");
      out.write("	\n");
      out.write("<link rel=\"shortcut icon\" href=\"sport-shoe.png\" sizes=\"180x180\">\n");
      out.write("\n");
      out.write("<link\n");
      out.write("	href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css\"\n");
      out.write("	rel=\"stylesheet\"\n");
      out.write("	integrity=\"sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi\"\n");
      out.write("	crossorigin=\"anonymous\">\n");
      out.write("	\n");
      out.write("\n");
      out.write("<style>\n");
      out.write(".bd-placeholder-img {\n");
      out.write("	font-size: 1.125rem;\n");
      out.write("	text-anchor: middle;\n");
      out.write("	-webkit-user-select: none;\n");
      out.write("	-moz-user-select: none;\n");
      out.write("	user-select: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media ( min-width : 768px) {\n");
      out.write("	.bd-placeholder-img-lg {\n");
      out.write("		font-size: 3.5rem;\n");
      out.write("	}\n");
      out.write("}\n");
      out.write("\n");
      out.write(".b-example-divider {\n");
      out.write("	height: 3rem;\n");
      out.write("	background-color: rgba(0, 0, 0, .1);\n");
      out.write("	border: solid rgba(0, 0, 0, .15);\n");
      out.write("	border-width: 1px 0;\n");
      out.write("	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em\n");
      out.write("		rgba(0, 0, 0, .15);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".b-example-vr {\n");
      out.write("	flex-shrink: 0;\n");
      out.write("	width: 1.5rem;\n");
      out.write("	height: 100vh;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".bi {\n");
      out.write("	vertical-align: -.125em;\n");
      out.write("	fill: currentColor;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".nav-scroller {\n");
      out.write("	position: relative;\n");
      out.write("	z-index: 2;\n");
      out.write("	height: 2.75rem;\n");
      out.write("	overflow-y: hidden;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".nav-scroller .nav {\n");
      out.write("	display: flex;\n");
      out.write("	flex-wrap: nowrap;\n");
      out.write("	padding-bottom: 1rem;\n");
      out.write("	margin-top: -1px;\n");
      out.write("	overflow-x: auto;\n");
      out.write("	text-align: center;\n");
      out.write("	white-space: nowrap;\n");
      out.write("	-webkit-overflow-scrolling: touch;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("	");
      out.write("\n");
      out.write("<header\n");
      out.write("	class=\"d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom\">\n");
      out.write("	\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("	function logout() {\n");
      out.write("		var form = document.loginokay;\n");
      out.write("		form.action = \"http://localhost:8080/All100Shoes/Customer/main.jsp?id=null\";\n");
      out.write("		sessionStorage.clear();\n");
      out.write("		form.submit();\n");
      out.write("		\n");
      out.write("	}\n");
      out.write("	\n");
      out.write("	function mypage(){\n");
      out.write("		var form=document.loginokay;\n");
      out.write("		form.action=\"mypage.do\";\n");
      out.write("		form.submit();\n");
      out.write("	}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<img src=\"sport-shoe.png\" style=\"width: 80px; margin-left: 30px;\">\n");
      out.write("	<ul class=\"nav col-12 col-md-auto mb-2 justify-content-center mb-md-10\">\n");
      out.write("		<li><a href=\"managermain.do\" class=\"nav-link px-2 link-secondary\">HOME</a></li>\n");
      out.write("		<li><a href=\"userlist.do\" class=\"nav-link px-2 link-secondary\">USERS</a></li>\n");
      out.write("		<li><a href=\"productlist.do\" class=\"nav-link px-2 link-secondary\">PRODUCTS</a></li>\n");
      out.write("		<li><a href=\"sales.do\" class=\"nav-link px-2 link-secondary\">SALES</a></li>\n");
      out.write("		<li><a href=\"history.do\" class=\"nav-link px-2 link-secondary\">HISTORY</a></li>\n");
      out.write("	</ul>\n");
      out.write(" \n");
      out.write("	<div class=\"col-md-4 text-end\" style=\"margin-right: 30px;\">\n");
      out.write("			<form name=\"loginokay\" method=\"post\">\n");
      out.write("				");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${MANAGERNAME}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("님, 안녕하세요! <input type=\"button\" class=\"btn btn-dark\"\n");
      out.write("					onclick=\"mypage()\" value=\"마이페이지\"> <input type=\"button\"\n");
      out.write("					class=\"btn btn-outline-dark me-2\" onclick=\"logout()\" value=\"로그아웃\">\n");
      out.write("			</form>\n");
      out.write("	</div>\n");
      out.write("	\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3\" crossorigin=\"anonymous\"></script>\n");
      out.write("	\n");
      out.write("</header>");
      out.write("\n");
      out.write("	\n");
      out.write("	<main>\n");
      out.write("	\n");
      out.write("	<form action=\"managermain.do\" name=\"main\" method=\"post\">\n");
      out.write("		<div class=\"row\">\n");
      out.write("		<div class=\"col-4\" align=\"center\">\n");
      out.write("			<div class=\"card text-bg-light mb-3\" style=\"width: 450px; height:500px;\">\n");
      out.write("			<!-- <div class=\"card-header\">Header</div> -->\n");
      out.write("				<div class=\"card-body\">\n");
      out.write("					<h1 class=\"card-title\" align=\"center\">오늘 가입한 고객 수</h1>\n");
      out.write("					<br><br><br><br><br><br>\n");
      out.write("					<h2 class=\"card-text\" align=\"center\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${SIGNTODAY}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("명</h2>\n");
      out.write("				</div>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("			<div class=\"col-4\" align=\"center\">\n");
      out.write("			<div class=\"card text-bg-light mb-3\" style=\"width: 450px; height:500px;\">\n");
      out.write("			<!-- <div class=\"card-header\">Header</div> -->\n");
      out.write("				<div class=\"card-body\">\n");
      out.write("					<h1 class=\"card-title\" align=\"center\">오늘 판매 건수</h1>\n");
      out.write("					<br><br><br><br><br><br>\n");
      out.write("					<h2 class=\"card-text\" align=\"center\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ORDERSTODAY}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("건</h2>\n");
      out.write("				</div>\n");
      out.write("			</div>\n");
      out.write("			</div>\n");
      out.write("\n");
      out.write("			<div class=\"col-4\" align=\"center\">\n");
      out.write("			<div class=\"card text-bg-light mb-3\" style=\"width: 450px; height:500px;\">\n");
      out.write("			<!-- <div class=\"card-header\">Header</div> -->\n");
      out.write("				<div class=\"card-body\">\n");
      out.write("					<h1 class=\"card-title\" align=\"center\">오늘 매출</h1>\n");
      out.write("					<br><br><br><br><br><br>\n");
      out.write("					<h2 class=\"card-text\" align=\"center\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${SALESTODAY}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("원</h2>\n");
      out.write("				</div>\n");
      out.write("			</div>\n");
      out.write("			</div>\n");
      out.write("			\n");
      out.write("		</div>\n");
      out.write("	</form>\n");
      out.write("	\n");
      out.write("	\n");
      out.write("\n");
      out.write("		\n");
      out.write("	</main>\n");
      out.write("	\n");
      out.write("	<script\n");
      out.write("		src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js\"\n");
      out.write("		integrity=\"sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3\"\n");
      out.write("		crossorigin=\"anonymous\"></script>\n");
      out.write("	<script\n");
      out.write("		src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js\"\n");
      out.write("		integrity=\"sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3\"\n");
      out.write("		crossorigin=\"anonymous\"></script>\n");
      out.write("	<script\n");
      out.write("		src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js\"\n");
      out.write("		integrity=\"sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk\"\n");
      out.write("		crossorigin=\"anonymous\"></script>\n");
      out.write("	\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
