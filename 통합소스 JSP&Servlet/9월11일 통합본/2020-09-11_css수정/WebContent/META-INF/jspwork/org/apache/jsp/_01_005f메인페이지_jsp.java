/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.37
 * Generated at: 2020-08-27 11:49:01 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import member.model.vo.Member;

public final class _01_005f메인페이지_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/views/Common/header.jsp", Long.valueOf(1598525945748L));
    _jspx_dependants.put("/WEB-INF/views/Common/footer.jsp", Long.valueOf(1598268603797L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("member.model.vo.Member");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write(" <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write(" <link rel=\"stylesheet\" type=\"text/css\" href=\"resources/css/body.css\">\r\n");
      out.write("<style>\r\n");
      out.write("section{display: block;}\r\n");
      out.write(".mySerach {\r\n");
      out.write("  width: 100px;\r\n");
      out.write("  height: 30px;\r\n");
      out.write("  margin-left: 100px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#mySerach {\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  height: 80px;\r\n");
      out.write("  margin-left: 20px;\r\n");
      out.write("  background-color: #efefef;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* 이미지 슬라이더 */\r\n");
      out.write(".swiper-container {\r\n");
      out.write("  height: 420px;\r\n");
      out.write("  border: 1px solid silver;\r\n");
      out.write("  border-radius: 7px;\r\n");
      out.write("  box-shadow: 0 0 20px #ccc inset;\r\n");
      out.write("}\r\n");
      out.write(".swiper-slide {\r\n");
      out.write("  text-align: center;\r\n");
      out.write("  display: flex; /* 내용을 중앙정렬 하기위해 flex 사용 */\r\n");
      out.write("  align-items: center; /* 위아래 기준 중앙정렬 */\r\n");
      out.write("  justify-content: center; /* 좌우 기준 중앙정렬 */\r\n");
      out.write("}\r\n");
      out.write(".swiper-slide img {\r\n");
      out.write("  box-shadow: 0 0 5px #555;\r\n");
      out.write("  max-width: 100%; /* 이미지 최대너비를 제한, 슬라이드에 이미지가 여러개가 보여질때 필요 */\r\n");
      out.write("  /* 이 예제에서 필요해서 설정했습니다. 상황에따라 다를 수 있습니다. */\r\n");
      out.write("}\r\n");
      out.write("/* 이미지 슬라이더 */\r\n");
      out.write(".notice_util_area {\r\n");
      out.write("  padding: 24px 14px 0px 20px;\r\n");
      out.write("  /* float: left; */\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".policy_util_area {\r\n");
      out.write("  /* float: left; */\r\n");
      out.write("  padding: 24px 14px 0px 20px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".community_util_area {\r\n");
      out.write("  padding: 24px 14px 0px 20px;\r\n");
      out.write("  /* float: left; */\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".external_util_area {\r\n");
      out.write("  /* float: left; */\r\n");
      out.write("  padding: 24px 14px 0px 20px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* .list_type_a {\r\n");
      out.write("  display: inline;\r\n");
      out.write("} */\r\n");
      out.write("\r\n");
      out.write(".util_area {\r\n");
      out.write("  display: flex;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".notice_util_area {\r\n");
      out.write("  padding: 0px;\r\n");
      out.write("  padding-top: 24px;\r\n");
      out.write("  width: 50%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".policy_util_area {\r\n");
      out.write("  padding: 0px;\r\n");
      out.write("  padding-top: 24px;\r\n");
      out.write("  width: 50%;\r\n");
      out.write("}\r\n");
      out.write(".list_type_a ul {\r\n");
      out.write("  padding: 0px;\r\n");
      out.write("  padding-top: 20px;\r\n");
      out.write("  margin: 0px;\r\n");
      out.write("  list-style: none;\r\n");
      out.write("  font-family: \"돋움\";\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* external_util_area\r\n");
      out.write("community_util_area */\r\n");
      out.write(".community_util_area {\r\n");
      out.write("  padding: 0px;\r\n");
      out.write("  padding-top: 24px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".external_util_area {\r\n");
      out.write("  padding: 0px;\r\n");
      out.write("  padding-top: 24px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".list_type_a li {\r\n");
      out.write("  line-height: 30px;\r\n");
      out.write("  margin: 0px 15px;\r\n");
      out.write("}\r\n");
      out.write(".list_type_a li:hover {\r\n");
      out.write("  font-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".list_type_b {\r\n");
      out.write("  padding: 0px;\r\n");
      out.write("  /* border: 1pxblack; */\r\n");
      out.write("  /* width: 80%; */\r\n");
      out.write("  font-size: 14px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".list_type_b ul {\r\n");
      out.write("  padding: 0px;\r\n");
      out.write("  padding-top: 20px;\r\n");
      out.write("  margin: 0px;\r\n");
      out.write("  list-style: none;\r\n");
      out.write("  column-count: 2;\r\n");
      out.write("  font-family: \"돋움\";\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".list_type_b li {\r\n");
      out.write("  line-height: 30px;\r\n");
      out.write("  margin: 0px 15px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".list_type_b li:hover {\r\n");
      out.write("  font-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".area_title {\r\n");
      out.write("  display: flex;\r\n");
      out.write("  align-items: center;\r\n");
      out.write("  padding-left: 20px;\r\n");
      out.write("  margin-bottom: 0px;\r\n");
      out.write("  height: 40px;\r\n");
      out.write("  background-color: rgb(15, 76, 130);\r\n");
      out.write("  border-radius: 7px;\r\n");
      out.write("  color: rgb(255, 213, 0);\r\n");
      out.write("}\r\n");
      out.write(".area_title a {\r\n");
      out.write("  text-decoration: none;\r\n");
      out.write("  color: white;\r\n");
      out.write("}\r\n");
      out.write(".area_title a:hover {\r\n");
      out.write("  color: black;\r\n");
      out.write("  font-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".all_link_area {\r\n");
      out.write("  margin-left: 40px;\r\n");
      out.write("  font-size: 12px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write(" \r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/jquery-3.5.1.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	Member loginUser = (Member)session.getAttribute("loginUser");
	String msg = (String)session.getAttribute("msg");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write(" <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write(" <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/jquery-3.5.1.min.js\"></script> \r\n");
      out.write(" \r\n");
      out.write(" <style>\r\n");
      out.write("header {\r\n");
      out.write("  top: 0;\r\n");
      out.write("  left: 0;\r\n");
      out.write("  right: 0;\r\n");
      out.write("  height: 250px;\r\n");
      out.write("  /* background-color: #2979ff; */\r\n");
      out.write("}\r\n");
      out.write("a {\r\n");
      out.write("  text-decoration: none;\r\n");
      out.write("  color: black;\r\n");
      out.write("}\r\n");
      out.write(".header_top {\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  height: 30px;\r\n");
      out.write("  background-color: rgb(15, 76, 130);\r\n");
      out.write("  /* background-color: #c48b9f; */\r\n");
      out.write("}\r\n");
      out.write(".top {\r\n");
      out.write("  display: flex;\r\n");
      out.write("  float: right;\r\n");
      out.write("  padding-right: 10%;\r\n");
      out.write("  list-style: none;\r\n");
      out.write("  padding-top: 4px;\r\n");
      out.write("}\r\n");
      out.write(".top_btn {\r\n");
      out.write("  margin: 1px;\r\n");
      out.write("  padding: 4px;\r\n");
      out.write("  border-radius: 4px;\r\n");
      out.write("  color: white;\r\n");
      out.write("}\r\n");
      out.write(".top_btn:hover {\r\n");
      out.write("  border-radius: 4px;\r\n");
      out.write("  color: black;\r\n");
      out.write("}\r\n");
      out.write(".lagefont {\r\n");
      out.write("  font-size: 60px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".navbar {\r\n");
      out.write("  padding-top: 50px;\r\n");
      out.write("  display: flex;\r\n");
      out.write("  width: 80%;\r\n");
      out.write("  margin: 0px auto;\r\n");
      out.write("  justify-content: space-between;\r\n");
      out.write("  align-items: center;\r\n");
      out.write("  /* background-color: #f8bbd0; */\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".navbar_dropdown:hover .navbar_dropdown-content {\r\n");
      out.write("\tbackground-color: white;\r\n");
      out.write("\tdisplay: block;\r\n");
      out.write("}\r\n");
      out.write(".navbar_dropdown-content {\r\n");
      out.write("  display: none;\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  background-color: #f9f9f9;\r\n");
      out.write("  min-width: 100px;\r\n");
      out.write("  max-width: 100px;\r\n");
      out.write("  box-shadow: 0px 0px 0px 2px rgba(0,0,0,0.2);\r\n");
      out.write("  text-align: center;\r\n");
      out.write("  font-size: 12px;\r\n");
      out.write("}\r\n");
      out.write(".navbar_dropdown-content a {\r\n");
      out.write("  color: black;\r\n");
      out.write("  padding: 5px 6px;\r\n");
      out.write("  text-decoration: none;\r\n");
      out.write("  display: inline-table;\r\n");
      out.write("  \r\n");
      out.write("}\r\n");
      out.write(".navbar_dropdown-content a:hover{\r\n");
      out.write("\t background-color: #f5f5f5;\r\n");
      out.write("  \tfont-weight: bold;\r\n");
      out.write("  \tborder-radius: 4px;\r\n");
      out.write("}\r\n");
      out.write(".navbar_menu {\r\n");
      out.write("  display: flex;\r\n");
      out.write("  list-style: none;\r\n");
      out.write("  padding: 40px 0px;\r\n");
      out.write("  padding-right: 150px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".navbar_menu li {\r\n");
      out.write("  border-right: 1px solid silver;\r\n");
      out.write("  padding: 8px 12px; /* 마우스 선택영역이 넓어짐 */\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".navbar_menu li:hover {\r\n");
      out.write("  background-color: #f5f5f5;\r\n");
      out.write("  font-weight: bold;\r\n");
      out.write("  border-radius: 4px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("@media screen and (max-width: 768px) {\r\n");
      out.write("  header {\r\n");
      out.write("    top: 0;\r\n");
      out.write("    left: 0;\r\n");
      out.write("    right: 0;\r\n");
      out.write("    height: 250px;\r\n");
      out.write("    /* background-color: #2979ff; */\r\n");
      out.write("  }\r\n");
      out.write("  .navbar {\r\n");
      out.write("    flex-direction: column;\r\n");
      out.write("    align-items: center;\r\n");
      out.write("    padding: 0px;\r\n");
      out.write("  }\r\n");
      out.write("\r\n");
      out.write("  .navbar_title {\r\n");
      out.write("    width: 100%;\r\n");
      out.write("    font-size: 0px;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    padding: 0px;\r\n");
      out.write("  }\r\n");
      out.write("  .navbar_menu {\r\n");
      out.write("    flex-direction: column;\r\n");
      out.write("    width: 100%;\r\n");
      out.write("    padding: 0px;\r\n");
      out.write("  }\r\n");
      out.write("  .navbar_menu li {\r\n");
      out.write("    border-right: 0px solid silver;\r\n");
      out.write("    width: 100%;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    font-size: 12px;\r\n");
      out.write("    padding: 8px 0px;\r\n");
      out.write("  }\r\n");
      out.write("  .top {\r\n");
      out.write("    position: absolute;\r\n");
      out.write("    right: 0px;\r\n");
      out.write("    padding: 0px;\r\n");
      out.write("  }\r\n");
      out.write("  .navbar_logo img {\r\n");
      out.write("    display: none;\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write(" </style>\r\n");
      out.write(" \r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("   <header>\r\n");
      out.write("      <div class=\"header_top\">\r\n");
      out.write("         <div class=\"top\">\r\n");
      out.write("         ");
 if(loginUser == null) { 
      out.write("\r\n");
      out.write("            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/insertForm.me\" class=\"top_btn\"><b>회원가입</b></a></li>\r\n");
      out.write("            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/loginPage.me\" class=\"top_btn\"><b>로그인</b></a></li>\r\n");
      out.write("         </div>\r\n");
      out.write("         ");
 } else { 
      out.write("\r\n");
      out.write("         \t<li><label>");
      out.print( loginUser.getMemberName() );
      out.write("님의 방문을 환영합니다.</label></li>\r\n");
      out.write("         \t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/myPage.me\" class=\"top_btn\"><b>마이페이지</b></a></li>\r\n");
      out.write("         \t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/logout.me\" class=\"top_btn\"><b>로그아웃</b></a></li>\r\n");
      out.write("         ");
 } 
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("     <nav class=\"navbar\">\r\n");
      out.write("         <div class=\"navbar_title\">\r\n");
      out.write("            <a href=\"");
      out.print( request.getContextPath() );
      out.write("\"><span class=\"lagefont\">정</span>부지원금<span class=\"lagefont\">바</span>로 지금</a>\r\n");
      out.write("         </div>\r\n");
      out.write("         <div class=\"navbar_menu\">\r\n");
      out.write("            <li><a href=\"");
      out.print( request.getContextPath() );
      out.write("/main.no\">공지사항</a></li>\r\n");
      out.write("            <li><a href=\"");
      out.print( request.getContextPath() );
      out.write("/main.sp\">지원정책</a></li>\r\n");
      out.write("             <li class=\"navbar_dropdown\">\r\n");
      out.write("               <a href=\"");
      out.print( request.getContextPath() );
      out.write("/fMain.cm\" class=\"navbar_dropbtn\">커뮤니티</a>\r\n");
      out.write("             <div class='navbar_dropdown-content'>\r\n");
      out.write("                 <a href=\"");
      out.print( request.getContextPath() );
      out.write("/fMain.cm\">자유게시판</a><br>\r\n");
      out.write("                 <a href=\"");
      out.print( request.getContextPath() );
      out.write("/spMain.cm\">지원정책</a><br>\r\n");
      out.write("                 <a href=\"");
      out.print( request.getContextPath() );
      out.write("/eaMain.cm\">대외활동</a>\r\n");
      out.write("             </div>\r\n");
      out.write("           </li>\r\n");
      out.write("            <li><a href=\"");
      out.print( request.getContextPath() );
      out.write("/main.ea\">대외활동</a></li>\r\n");
      out.write("            <li><a href=\"");
      out.print( request.getContextPath() );
      out.write("/main.fa\">묻고 답하기</a></li>\r\n");
      out.write("         </div>\r\n");
      out.write("         <div class=\"navbar_logo\">\r\n");
      out.write("            <img id=\"logo\" src=\"Media/logo.png\" width = \"80px\" height = \"80px\">\r\n");
      out.write("         </div>\r\n");
      out.write("      </nav>\r\n");
      out.write("   </header> \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("<section>\r\n");
      out.write("\t<!-- 이미지 슬라이더 -->\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css\">\r\n");
      out.write("\t<script src=\"https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js\"></script>\r\n");
      out.write("\t<div class=\"swiper-container\">\r\n");
      out.write("\t\t<div class=\"swiper-wrapper\">\r\n");
      out.write("\t\t<div class=\"swiper-slide\" ><img src=\"http://oldmidi.cdn3.cafe24.com/p/0315.jpg\"></div>\r\n");
      out.write("\t\t<div class=\"swiper-slide\"><img src=\"http://ktsmemo.cdn3.cafe24.com/p/0316.jpg\"></div>\r\n");
      out.write("\t\t<div class=\"swiper-slide\"><img src=\"http://ktsmemo.cdn3.cafe24.com/p/0067.jpg\"></div>\r\n");
      out.write("\t\t<div class=\"swiper-slide\"><img src=\"http://ktsmemo.cdn3.cafe24.com/p/0423.jpg\"></div>\r\n");
      out.write("\t\t<div class=\"swiper-slide\"><img src=\"https://ktsmemo.cafe24.com/p/0074.jpg\"></div>\r\n");
      out.write("\t\t<div class=\"swiper-slide\"><img src=\"http://ktsmemo.cdn3.cafe24.com/p/0637.jpg\"></div>\r\n");
      out.write("\t\t<div class=\"swiper-slide\"><img src=\"http://ktsmemo.cdn3.cafe24.com/p/0348.jpg\"></div>\r\n");
      out.write("\t\t<div class=\"swiper-slide\"><img src=\"http://ktsmemo.cdn3.cafe24.com/p/0824.jpg\"></div>\r\n");
      out.write("\t\t<div class=\"swiper-slide\"><img src=\"http://ktsmemo.cdn3.cafe24.com/p/0764.jpg\"></div>\r\n");
      out.write("\t\t<div class=\"swiper-slide\"><img src=\"http://ktsmemo.cdn3.cafe24.com/p/0239.jpg\"></div>\r\n");
      out.write("\t\t<div class=\"swiper-slide\"><img src=\"http://ktsmemo.cdn3.cafe24.com/p/0804.jpg\"></div>\r\n");
      out.write("\t\t<div class=\"swiper-slide\"><img src=\"http://oldmidi.cdn3.cafe24.com/p/0441.jpg\"></div>\r\n");
      out.write("\t\t<div class=\"swiper-slide\"><img src=\"http://ktsmemo.cdn3.cafe24.com/p/0178.jpg\"></div>\r\n");
      out.write("\t\t<div class=\"swiper-slide\"><img src=\"https://ktsmemo.cafe24.com/p/0454.jpg\"></div>\r\n");
      out.write("\t\t<div class=\"swiper-slide\"><img src=\"https://ktsmemo.cafe24.com/p/0187.jpg\"></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("      \r\n");
      out.write("\t    <!-- 네비게이션 -->\r\n");
      out.write("\t    <div class=\"swiper-button-next\"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->\r\n");
      out.write("\t    <div class=\"swiper-button-prev\"></div><!-- 이전 버튼 -->\r\n");
      out.write("   \r\n");
      out.write("\t    <!-- 페이징 -->\r\n");
      out.write("\t    <div class=\"swiper-pagination\"></div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- 이미지 슬라이더 -->\r\n");
      out.write("\t<div class=\"util_area\">\r\n");
      out.write("\t\t<div class=\"notice_util_area\" >\r\n");
      out.write("\t\t\t<div class=\"list_type_a\">\r\n");
      out.write("\t\t\t\t<div class=\"area_title\">\r\n");
      out.write("\t\t\t\t\t<a href=\"#\"><h3>공지사항</h3></a>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                <ul>\r\n");
      out.write("                   <li>\r\n");
      out.write("                      <a href=\"#\">공지사항 최신글1</a>\r\n");
      out.write("                   </li>\r\n");
      out.write("                   <li>\r\n");
      out.write("                      <a href=\"#\">공지사항 최신글2</a>\r\n");
      out.write("                   </li>\r\n");
      out.write("                   <li>\r\n");
      out.write("                      <a href=\"#\">공지사항 최신글3</a>\r\n");
      out.write("                   </li>\r\n");
      out.write("                   <li>\r\n");
      out.write("                      <a href=\"#\">공지사항 최신글4</a>\r\n");
      out.write("                   </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("         </div>\r\n");
      out.write("   \r\n");
      out.write("\t<div class=\"policy_util_area\" >\r\n");
      out.write(" \t\t<div class=\"list_type_a\">\r\n");
      out.write("\t\t\t<div class=\"area_title\">\r\n");
      out.write("\t\t\t\t<a href=\"#\"><h3>지원정책</h3></a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("            <ul>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">지원정책 최신글1</a>\r\n");
      out.write("               </li>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">지원정책 최신글2</a>\r\n");
      out.write("               </li>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">지원정책 최신글3</a>\r\n");
      out.write("               </li>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">지원정책 최신글4</a>\r\n");
      out.write("               </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("           </div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("   \r\n");
      out.write(" \t<div class=\"community_util_area\" >\r\n");
      out.write("\t\t<div class=\"list_type_b\">\r\n");
      out.write(" \t\t\t<div class=\"area_title\">\r\n");
      out.write("\t\t\t\t<a href=\"#\"><h3>커뮤니티</h3></a>\r\n");
      out.write("                <div class=\"all_link_area\">\r\n");
      out.write("                   <a href=\"#\">커뮤니티1</a>\r\n");
      out.write("                   <span class=\"text_bar\">|</span>\r\n");
      out.write("                   <a href=\"#\">커뮤니티2</a>\r\n");
      out.write("                   <span class=\"text_bar\">|</span>\r\n");
      out.write("                   <a href=\"#\">커뮤니티3</a>\r\n");
      out.write("                   <span class=\"text_bar\">|</span>\r\n");
      out.write("                   <a href=\"#\">커뮤니티4</a>\r\n");
      out.write("                </div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("            <ul>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">커뮤니티 최신글1</a>\r\n");
      out.write("               </li>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">커뮤니티 최신글2</a>\r\n");
      out.write("               </li>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">커뮤니티 최신글3</a>\r\n");
      out.write("               </li>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">커뮤니티 최신글4</a>\r\n");
      out.write("               </li>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">커뮤니티 최신글5</a>\r\n");
      out.write("               </li>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">커뮤니티 최신글6</a>\r\n");
      out.write("               </li>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">커뮤니티 최신글7</a>\r\n");
      out.write("               </li>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">커뮤니티 최신글8</a>\r\n");
      out.write("               </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("   \r\n");
      out.write("\t<div class=\"external_util_area\" >\r\n");
      out.write("\t\t<div class=\"list_type_b\">\r\n");
      out.write("\t\t\t<div class=\"area_title\">\r\n");
      out.write("\t            <a href=\"#\"><h3>대외활동</h3></a>\r\n");
      out.write("\t            <div class=\"all_link_area\">\r\n");
      out.write("\t               <a href=\"#\">대외활동</a>\r\n");
      out.write("\t               <span class=\"text_bar\">|</span>\r\n");
      out.write("\t               <a href=\"#\">대외활동</a>\r\n");
      out.write("\t               <span class=\"text_bar\">|</span>\r\n");
      out.write("\t               <a href=\"#\">대외활동</a>\r\n");
      out.write("\t               <span class=\"text_bar\">|</span>\r\n");
      out.write("\t               <a href=\"#\">대외활동</a>\r\n");
      out.write("\t            </div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("            <ul>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">대외활동 최신글1</a>\r\n");
      out.write("               </li>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">대외활동 최신글2</a>\r\n");
      out.write("               </li>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">대외활동 최신글3</a>\r\n");
      out.write("               </li>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">대외활동 최신글4</a>\r\n");
      out.write("               </li>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">대외활동 최신글5</a>\r\n");
      out.write("               </li>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">대외활동 최신글6</a>\r\n");
      out.write("               </li>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">대외활동 최신글7</a>\r\n");
      out.write("               </li>\r\n");
      out.write("               <li>\r\n");
      out.write("                  <a href=\"#\">대외활동 최신글8</a>\r\n");
      out.write("               </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</section>\r\n");
      out.write("<br>\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write(" <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write(" <script src=\"http://code.jquery.com/jquery-latest.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("hr {\r\n");
      out.write("  color: black;\r\n");
      out.write("  background-color: black;\r\n");
      out.write("  height: 1px;\r\n");
      out.write("  margin: 0px;\r\n");
      out.write("  border: 1px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("footer {\r\n");
      out.write("  display: block;\r\n");
      out.write("  padding-top: 10px;\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  height: 3%;\r\n");
      out.write("  padding-top: 3%;\r\n");
      out.write("  background-color: rgb(15, 76, 130);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".footer_box {\r\n");
      out.write("  width: 80%;\r\n");
      out.write("  color: rgb(255, 213, 0);\r\n");
      out.write("  margin: 0px auto;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<hr>\r\n");
      out.write("<footer>\r\n");
      out.write("   <div class=\"footer_box\">\r\n");
      out.write("      Copyrightⓒ2020 Flower than java Project All Rights Reserved.\r\n");
      out.write("   </div>\r\n");
      out.write("</footer>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("// 이미지 슬라이더\r\n");
      out.write("   new Swiper('.swiper-container', {\r\n");
      out.write("   \r\n");
      out.write("      slidesPerView : 3, // 동시에 보여줄 슬라이드 갯수\r\n");
      out.write("      spaceBetween : 30, // 슬라이드간 간격\r\n");
      out.write("      slidesPerGroup : 3, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음\r\n");
      out.write("   \r\n");
      out.write("      // 그룹수가 맞지 않을 경우 빈칸으로 메우기\r\n");
      out.write("      // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬\r\n");
      out.write("      loopFillGroupWithBlank : true,\r\n");
      out.write("   \r\n");
      out.write("      loop : true, // 무한 반복\r\n");
      out.write("   \r\n");
      out.write("      pagination : { // 페이징\r\n");
      out.write("         el : '.swiper-pagination',\r\n");
      out.write("         clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동\r\n");
      out.write("      },\r\n");
      out.write("      navigation : { // 네비게이션\r\n");
      out.write("         nextEl : '.swiper-button-next', // 다음 버튼 클래스명\r\n");
      out.write("         prevEl : '.swiper-button-prev', // 이번 버튼 클래스명\r\n");
      out.write("      },\r\n");
      out.write("   });\r\n");
      out.write("// 이미지 슬라이더\r\n");
      out.write("   \r\n");
      out.write("</script>\r\n");
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
