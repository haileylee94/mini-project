/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.65
 * Generated at: 2022-11-18 23:52:54 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import DBPKG.Util;
import java.sql.Statement;
import java.sql.Connection;

public final class join_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("DBPKG.Util");
    _jspx_imports_classes.add("java.sql.Connection");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("java.sql.Statement");
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>join</title>\r\n");
      out.write("<script src=\"check.js\"></script>\r\n");
      out.write("<!-- \r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function check(f){\r\n");
      out.write("	if(f.custname.value.length == 0){\r\n");
      out.write("		alert(\"회원성명이 입력되지 않았습니다.\");\r\n");
      out.write("		f.custname.focus();\r\n");
      out.write("		return false;\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	if(f.phone.value.length == 0){\r\n");
      out.write("		alert(\"회원 전화번호가 입력되지 않았습니다.\");\r\n");
      out.write("		f.phone.focus();\r\n");
      out.write("		return false;\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	if(f.address.value.length == 0){\r\n");
      out.write("		alert(\"회원 주소가 입력되지 않았습니다.\");\r\n");
      out.write("		f.address.focus();\r\n");
      out.write("		return false;\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	if(f.joindate.value.length == 0){\r\n");
      out.write("		alert(\"가입 날짜가 입력되지 않았습니다.\");\r\n");
      out.write("		f.joindate.focus();\r\n");
      out.write("		return false;\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	if(f.grade.value.length == 0){\r\n");
      out.write("		alert(\"회원 등급이 입력되지 않았습니다.\");\r\n");
      out.write("		f.grade.focus();\r\n");
      out.write("		return false;\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	if(f.city.value.length == 0){\r\n");
      out.write("		alert(\"도시코드가 입력되지 않았습니다.\");\r\n");
      out.write("		f.city.focus();\r\n");
      out.write("		return false;\r\n");
      out.write("	}\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("onsubmit에는 return check(this)를 해줘야 한다.\r\n");
      out.write(" -->\r\n");
      out.write("<style>\r\n");
      out.write("table {\r\n");
      out.write("	margin: auto;\r\n");
      out.write("}\r\n");
      out.write("/*\r\n");
      out.write("		form{\r\n");
      out.write("			display: flex; \r\n");
      out.write("			align-items: center; 수직정렬\r\n");
      out.write("			justify-content: center; 수평정렬\r\n");
      out.write("			text-align:center;\r\n");
      out.write("		}\r\n");
      out.write("	*/\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<section\r\n");
      out.write("		style=\"position: fixed; top: 100px; background-color: lightgray; height: 100%; width: 100%; padding-left: 20px\">\r\n");
      out.write("		<h1 style=\"text-align: center;\">\r\n");
      out.write("			<b>쇼핑몰 회원 등록</b><br>\r\n");
      out.write("		</h1>\r\n");
      out.write("\r\n");
      out.write("		<form name=\"f\" method=\"post\" onsubmit=\"return check()\" action=\"action.jsp\">\r\n");
      out.write("		<input type=\"hidden\" name=\"mode\" value=\"insert\">\r\n");
      out.write("			<table border=\"1\">\r\n");
      out.write("\r\n");
      out.write("	");

	
		request.setCharacterEncoding("UTF-8");
	
		Connection con =null;
		Statement stmt =null;
		String custno="";
		
		try{
			con = Util.getConnection(); //db연결
			stmt = con.createStatement(); //sql 실행하기 위한 변수 생성
			String sql = "select max(custno)+1 custno from member_tbl_02";
			ResultSet rs =stmt.executeQuery(sql);//stmt를 통해서 sql 실행 결과
			rs.next();//1개의 결과물을 출력
			custno = rs.getString("custno");
			
		}catch(Exception e){
			e.printStackTrace();
		}
	
      out.write("\r\n");
      out.write("				<tr>\r\n");
      out.write("					<th>회원번호(자동발생)</th>\r\n");
      out.write("					<td><input name=custno size=14 value=\"");
      out.print(custno);
      out.write("\" readonly></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<th>회원성명</th>\r\n");
      out.write("					<td><input name=\"custname\" size=14></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<th>회원전화</th>\r\n");
      out.write("					<td><input name=\"phone\" size=20></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<th>회원주소</th>\r\n");
      out.write("					<td><input name=\"address\" size=30></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<th>가입일자</th>\r\n");
      out.write("					<td><input name=\"joindate\" size=14></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<th>고객등급[A:VIP,B:일반,C:직원]</th>\r\n");
      out.write("					<td><input name=\"grade\" size=14></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<th>도시코드</th>\r\n");
      out.write("					<td><input name=\"city\" size=14></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td colspan=\"2\" style=\"text-align: center;\"><input\r\n");
      out.write("						type=\"submit\" value=\"등록\"> <input type=\"button\" value=\"조회\"\r\n");
      out.write("						onclick=\"return search()\"> <!-- onclick=\"location.href='memberList.jsp'\"이렇게 해도 됨 -->\r\n");
      out.write("					</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("			</table>\r\n");
      out.write("		</form>\r\n");
      out.write("	</section>\r\n");
      out.write("	");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("</body>\r\n");
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