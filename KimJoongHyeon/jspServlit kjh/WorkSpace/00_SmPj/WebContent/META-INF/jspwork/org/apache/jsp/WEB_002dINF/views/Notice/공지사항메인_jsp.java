/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.37
 * Generated at: 2020-09-09 14:46:06 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.Notice;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import board.model.vo.Board;
import java.util.ArrayList;
import member.model.vo.Member;
import board.model.vo.PageInfo;

public final class 공지사항메인_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/WEB-INF/views/Notice/../Common/header.jsp", Long.valueOf(1599364317178L));
    _jspx_dependants.put("/WEB-INF/views/Notice/../Common/footer.jsp", Long.valueOf(1598887312249L));
    _jspx_dependants.put("/WEB-INF/views/Notice/../Common/page.jsp", Long.valueOf(1599662404446L));
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
    _jspx_imports_classes.add("board.model.vo.PageInfo");
    _jspx_imports_classes.add("board.model.vo.Board");
    _jspx_imports_classes.add("java.util.ArrayList");
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
 ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list"); 
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <title>Layout01</title>\r\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/jquery-3.5.1.min.js\"></script>\r\n");
      out.write(" \t<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/body.css\" />\r\n");
      out.write("</head>\r\n");
      out.write("<style>\r\n");
      out.write("    \r\n");
      out.write("</style>\r\n");
      out.write("<body>\r\n");
      out.write("\t ");
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
      out.write("  height: 300px;\r\n");
      out.write("}\r\n");
      out.write("a {\r\n");
      out.write("  text-decoration: none;\r\n");
      out.write("  color: black;\r\n");
      out.write("}\r\n");
      out.write(".header_top {\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  height: 50px;\r\n");
      out.write("  background-color: rgb(15, 76, 130);\r\n");
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
      out.write(".navbar {\r\n");
      out.write("  display: flex;\r\n");
      out.write("  width: 80%;\r\n");
      out.write("  margin: 0px auto;\r\n");
      out.write("  margin-top: 20px;\r\n");
      out.write("  justify-content: space-between;\r\n");
      out.write("  align-items: center;\r\n");
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
      out.write("header {\r\n");
      out.write("  height: auto;\r\n");
      out.write("}\r\n");
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
      out.write("         ");
 } else { 
      out.write("\r\n");
      out.write("         \t<li><label>");
      out.print( loginUser.getMemberName() );
      out.write("님의 방문을 환영합니다.</label></li>\r\n");
      out.write("         \t");
 if(loginUser.getMemberName().equals("관리자")) { 
      out.write("\r\n");
      out.write("         \t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/adminPage.ad\" class=\"top_btn\"><b>관리자 페이지</b></a></li>\r\n");
      out.write("         \t");
 } else { 
      out.write("\r\n");
      out.write("         \t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/myPage.me\" class=\"top_btn\"><b>마이페이지</b></a></li>\r\n");
      out.write("        \t ");
 } 
      out.write("\r\n");
      out.write("         \t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/logout.me\" class=\"top_btn\"><b>로그아웃</b></a></li>\r\n");
      out.write("         ");
 } 
      out.write("\r\n");
      out.write("         </div>\r\n");
      out.write("      </div>\r\n");
      out.write("     <nav class=\"navbar\">\r\n");
      out.write("         <div class=\"navbar_title\">\r\n");
      out.write("            <a href=\"");
      out.print( request.getContextPath() );
      out.write("/Main.mi\"><span class=\"lagefont\">정</span>부지원금<span class=\"lagefont\">바</span>로 지금</a>\r\n");
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
      out.write("    <section>\r\n");
      out.write("        <div id=\"main_section\">\r\n");
      out.write("            <h2 align=\"center\">공지사항</h2>\r\n");
      out.write("            <table class=\"contentsTable\" width=\"800px\" align=\"center\">\r\n");
      out.write("                <thead>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <th width= \"50px\">번호</th>\r\n");
      out.write("                        <th width= \"100px\">카테고리</th>\r\n");
      out.write("                        <th width= \"400px\">제목</th>\r\n");
      out.write("                        <th width= \"100px\">작성자</th>\r\n");
      out.write("                        <th width= \"100px\">날짜</th>\r\n");
      out.write("                        <th width= \"60px\">조회</th>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                </thead>\r\n");
      out.write("                <tbody>\r\n");
      out.write("                  ");
 if(list.isEmpty()){ 
      out.write("\r\n");
      out.write("\t            <tr>\r\n");
      out.write("\t               <td colspan=\"6\">글이 존재 하지 않습니다.</td>\r\n");
      out.write("\t            </tr>\r\n");
      out.write("            ");
 } else { 
      out.write("\r\n");
      out.write("            ");
 		for(Board b : list){ 
      out.write("\r\n");
      out.write("          \t<tr>\r\n");
      out.write("          \t\t<td>\r\n");
      out.write("          \t\t\t<input type=\"hidden\" value=\"");
      out.print( b.getBoardNo() );
      out.write("\">\r\n");
      out.write("          \t\t\t");
      out.print( b.getBoardNo() );
      out.write("\r\n");
      out.write("          \t\t</td>\r\n");
      out.write("          \t\t<td>");
      out.print( b.getCgName() );
      out.write("</td>\r\n");
      out.write("          \t\t<td>");
      out.print( b.getBoardTitle() );
      out.write("</td>\r\n");
      out.write("          \t\t<td>");
      out.print( b.getBoardWriter() );
      out.write("</td>\r\n");
      out.write("          \t\t<td>");
      out.print( b.getBoardCreateDate()  );
      out.write("</td>\r\n");
      out.write("          \t\t<td>");
      out.print( b.getBoardViewCount()  );
      out.write("</td>\r\n");
      out.write("          \t</tr>\r\n");
      out.write("            ");
 		} 
      out.write("\r\n");
      out.write("            ");
 } 
      out.write("\r\n");
      out.write("                </tbody>\r\n");
      out.write("                <tfoot>\r\n");
      out.write("\t                <tr>\r\n");
      out.write("\t                <td colspan=\"2\"></td>\r\n");
      out.write("\t                <td>\r\n");
      out.write("\t                <form action = \"");
      out.print( request.getContextPath() );
      out.write("/search.no\">\r\n");
      out.write("\t                \t<select name=\"opt\"> <!-- 검색 컬럼 -->\r\n");
      out.write("\t                \t\t<option value=\"all\">전체 목록</option>\r\n");
      out.write("\t                \t\t<option value=\"writer\">작성자</option>\r\n");
      out.write("\t                \t\t<option value=\"title\">제목</option>\r\n");
      out.write("\t                \t\t<option value=\"content\">내용</option>\r\n");
      out.write("\t                \t\t<option value=\"title_content\">제목+내용</option>\r\n");
      out.write("\t                \t\t<option value=\"category\">카테고리</option>\r\n");
      out.write("\t                \t</select>\r\n");
      out.write("\t                \t<input type=\"text\" name=\"word\" value=\"\" placeholder=\"검색어를 입력하세요\">\r\n");
      out.write("\t           \t\t\t<button type=\"submit\">검색</button>\r\n");
      out.write("\t           \t\t</form>\r\n");
      out.write("\t           \t\t</td>\r\n");
      out.write("\t           \t\t<td colspan=\"2\"></td>\r\n");
      out.write("\t                <td>\r\n");
      out.write("\t                \t");
 if(loginUser != null){ 
      out.write("\r\n");
      out.write("\t                    <button onclick=\"location.href='");
      out.print( request.getContextPath()  );
      out.write("/insertForm.no'\">글쓰기</button>\r\n");
      out.write("\t                    ");
 } 
      out.write("\r\n");
      out.write("\t                </td>\r\n");
      out.write("\t                </tr>\r\n");
      out.write("                </tfoot>\r\n");
      out.write("            </table>\r\n");
      out.write(" \t\t");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    ");
 
    
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();	
	String pageName = pi.getPageName();

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>정부 지원금 바로 지금</title>\r\n");
      out.write("<style>\r\n");
      out.write("    .pagingArea button{background: white; border: 0; outline: 0; margin: 1px;}\r\n");
      out.write("\tbutton:hover{cursor: pointer;}\r\n");
      out.write("\t#numBtn{background: rgb(15, 76, 130); color: white; border-radius: 7px; width: 40px; heigth: 40px; padding: 5px 0px;}\r\n");
      out.write("\t#choosen{background: skyblue; color: white; width: 40px; border-radius: 7px; padding: 5px 0px;}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<!--  페이징 -->\r\n");
      out.write("\t<div class=\"pagingArea\" align=\"center\">\r\n");
      out.write("\t\t<!-- 맨처음으로 -->\r\n");
      out.write("\t\t<button class=\"paginbtn\" onclick=\"location.href='");
      out.print( request.getContextPath()+pageName );
      out.write("?currentPage=1'\" id=\"firstBtn\">처음</button>\r\n");
      out.write("\t\t<script>\r\n");
      out.write("\t\t\tif(");
      out.print( currentPage );
      out.write(" <=1){\r\n");
      out.write("\t\t\t\tvar before = $('#firstBtn');\r\n");
      out.write("\t\t\t\tbefore.attr('disabled', 'true');\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\t\t<!-- 이전 페이지로 -->\r\n");
      out.write("\t\t<button class=\"paginbtn\" onclick=\"location.href='");
      out.print( request.getContextPath()+pageName );
      out.write("?currentPage=");
      out.print( currentPage - 1 );
      out.write("'\" id=\"beforeBtn\">이전</button>\r\n");
      out.write("\t\t<script>\r\n");
      out.write("\t\t\tif(");
      out.print( currentPage );
      out.write(" <=1){\r\n");
      out.write("\t\t\t\tvar before = $('#beforeBtn');\r\n");
      out.write("\t\t\t\tbefore.attr('disabled', 'true');\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\t\t<!-- 10개 페이지 목록 -->\r\n");
      out.write("\t\t");
 for(int p = startPage; p<= endPage; p++){ 
      out.write("\r\n");
      out.write("\t\t\t");
 if(p == currentPage){ 
      out.write("\r\n");
      out.write("\t\t\t<button id=\"choosen\" disabled>");
      out.print( p );
      out.write("</button>\r\n");
      out.write("\t\t\t");
 } else{ 
      out.write("\r\n");
      out.write("\t\t\t\t<button id=\"numBtn\" onclick=\"location.href='");
      out.print( request.getContextPath()+pageName );
      out.write("?currentPage=");
      out.print( p );
      out.write('\'');
      out.write('"');
      out.write('>');
      out.print( p );
      out.write("</button>\r\n");
      out.write("\t\t\t");
 } 
      out.write("\r\n");
      out.write("\t\t");
 } 
      out.write("\r\n");
      out.write("\t\t<!-- 다음 페이지로 -->\r\n");
      out.write("\t\t<button class=\"paginbtn\" onclick=\"location.href='");
      out.print( request.getContextPath()+pageName );
      out.write("?currentPage=");
      out.print( currentPage + 1 );
      out.write("'\" id=\"afterBtn\">다음</buuton>\r\n");
      out.write("\t\t<script>\r\n");
      out.write("\t\t\tif(");
      out.print( currentPage );
      out.write(" >= ");
      out.print( maxPage );
      out.write("){\r\n");
      out.write("\t\t\t\tvar after = $('#afterBtn');\r\n");
      out.write("\t\t\t\tafter.attr('disabled','true');\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<!-- 맨 끝으로 -->\r\n");
      out.write("\t\t<button class=\"paginbtn\" onclick=\"location.href='");
      out.print( request.getContextPath()+pageName );
      out.write("?currentPage=");
      out.print( maxPage );
      out.write("'\" id=\"lastBtn\">맨끝</button>\r\n");
      out.write("\t\t<script>\r\n");
      out.write("\t\t\tif(");
      out.print( currentPage );
      out.write(" >= ");
      out.print( maxPage );
      out.write("){\r\n");
      out.write("\t\t\t\tvar after = $('#lastBtn');\r\n");
      out.write("\t\t\t\tafter.attr('disabled','true');\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("        <script>\r\n");
      out.write("        $(function(){\r\n");
      out.write("        \t");
if(!list.isEmpty()){
      out.write(" \r\n");
      out.write("\t            $('tbody td').mouseenter(function(){\r\n");
      out.write("\t               $(this).parent().css({'background':'darkgray', 'cursor':'pointer'}); // 커서 올리면 흑색\r\n");
      out.write("\t            }).mouseout(function(){\r\n");
      out.write("\t               $(this).parent().css('background', 'none'); //벗어나면\r\n");
      out.write("\t            }).click(function(){\r\n");
      out.write("\t              var bId = $(this).parent().children().children('input').val(); // 버튼을 누르면 bId에 데이터 값 저장-> 값을 /q_detail.no에 보내줌\r\n");
      out.write("                  location.href = '");
      out.print( request.getContextPath() );
      out.write("/detail.no?bId=' + bId; \r\n");
      out.write("\t            });\r\n");
      out.write("\t        ");
 } 
      out.write("\r\n");
      out.write("         });\r\n");
      out.write("      </script>\r\n");
      out.write("    </section>\r\n");
      out.write("\t");
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
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" ");
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
