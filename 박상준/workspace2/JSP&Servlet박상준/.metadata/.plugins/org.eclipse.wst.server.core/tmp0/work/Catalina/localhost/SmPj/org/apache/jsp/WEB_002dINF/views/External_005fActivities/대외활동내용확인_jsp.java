/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.37
 * Generated at: 2020-08-26 02:54:17 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.External_005fActivities;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class 대외활동내용확인_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/views/External_Activities/../Common/header.jsp", Long.valueOf(1598405748429L));
    _jspx_dependants.put("/WEB-INF/views/External_Activities/../Common/footer.jsp", Long.valueOf(1598347049535L));
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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <title>Layout01</title>\r\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/jquery-3.5.1.min.js\"></script> \r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/body.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/대외활동내용확인.css\">\r\n");
      out.write("\r\n");
      out.write("    <style>\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write(" <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write(" <script src=\"http://code.jquery.com/jquery-latest.min.js\"></script>\r\n");
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
      out.write("            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/myPage.me\" class=\"top_btn\"><b>마이페이지</b></a></li>\r\n");
      out.write("            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/loginPage.me\" class=\"top_btn\"><b>로그인</b></a></li>\r\n");
      out.write("         </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <nav class=\"navbar\">\r\n");
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
      out.write("            <li><a href=\"");
      out.print( request.getContextPath() );
      out.write("/main.cm\">커뮤니티</a></li>\r\n");
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
      out.write("        <div id=\"main_section\">\r\n");
      out.write("            <div id=\"contents\">\r\n");
      out.write("                <h2 id=\"ea_h21\">NO.01</h2>\r\n");
      out.write("                <h2 id=\"ea_h22\">대외활동</h2>\r\n");
      out.write("                <hr>\r\n");
      out.write("                <h1 style=\"text-align: center\">대외활동 제목</h1>\r\n");
      out.write("                <br>\r\n");
      out.write("                <text id=\"ea_text1\"> 백성강 <br>2020.08.07 14:47 조회수 1 댓글 2</text>\r\n");
      out.write("                <br>\r\n");
      out.write("                <div id=\"ea_buttons\">\r\n");
      out.write("                    <button class=\"ea_button1\"> &lt; 이전글</button>\r\n");
      out.write("                    <button class=\"ea_button1\">다음글 &gt;</button>\r\n");
      out.write("                    <button class=\"ea_button1\">목록</button><br>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <br clear=\"all\"><br> \r\n");
      out.write("\r\n");
      out.write("                <div id=\"ea_div1\">\r\n");
      out.write("                    <div id=\"ea_div2\">\r\n");
      out.write("                        <img src=\"../img/1.PNG\" id=\"ea_img1\" >\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div id=\"ea_div3\"> \r\n");
      out.write("                        <text><h2>2020 경기도 즐거운 체험 프로그램 공모</h2></text>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li class=\"ea_li\">모집일정 : 2020-08-01(토) ~ 2020-08-18(화) 18:00 까지</li>\r\n");
      out.write("                            <br>\r\n");
      out.write("                            <li class=\"ea_li\">활동기간 : 2020-09-01(토) ~ 2020-09-18(화) 18:00 까지</li>\r\n");
      out.write("                            <br>\r\n");
      out.write("                            <li class=\"ea_li\">활동장소 : kh정보교육원</li>\r\n");
      out.write("                            <br>\r\n");
      out.write("                            <li class=\"ea_li\">접수방법 : 이메일 접수</li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <button id=\"ea_button2\">홈페이지 바로가기</button>\r\n");
      out.write("                    \r\n");
      out.write("                    <br clear=\"all\"><br> \r\n");
      out.write("\r\n");
      out.write("                    <div class=\"ea_div4\"><a href=\"#ea_act_info\">상세정보</a></div>\r\n");
      out.write("                    <div class=\"ea_div4\"><a href=\"#ea_write_file\">참고자료</a></div>\r\n");
      out.write("                    <div class=\"ea_div4\"><a href=\"#ea_org_name\">기관명/연락처</a></div>\r\n");
      out.write("\r\n");
      out.write("                    <div id=\"ea_div5\">\r\n");
      out.write("                        <h2 style=\"text-align: center;\"  id=\"ea_act_info\">활동정보</h2>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li>대상 : 경기도내 소재한 민간 관광업체</li>\r\n");
      out.write("                            <li>신청기간 : 2020.07.29(수) ~ 2020.08.06(목) 까지</li>\r\n");
      out.write("                            <li>활동기간 : 2020.07.29(수) ~ 2020.08.06(목) 까지</li>\r\n");
      out.write("                            <li>신청방법 : <a href=\"#\" >이메일접수</a></li>\r\n");
      out.write("                            <li>상세페이지 : <button id=\"ea_button3\">홈페이지 바로가기</button> </button></li>\r\n");
      out.write("                            <li>담당자 이메일 : nandong@gto.or.kr</li>\r\n");
      out.write("                            <li>담당자 전화번호 : 031-259-4790</li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                공모개요\r\n");
      out.write("                                <ul>\r\n");
      out.write("                                    <li>공모명 : 경기도 즐거운 체험 프로그램 공모</li>\r\n");
      out.write("                                    <li>공모대상 : 경기도내 소재한 민간 관광업체가 운영하는 체험 프로그램<br>\r\n");
      out.write("                                        ※ 제외 : 공공(정부, 지자체 등이 운영)부문 및 대기업 계열사 관광시설, 여행사 상품, 단순관람 위주 프로그램, 축제/이벤트/행사, 기 인증 프로그램\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li>선정절차 : 접수 → 서류심사 → 선정 → 컨설팅 및 홍보 마케팅 지원</li>\r\n");
      out.write("                                    <li>선정규모 : 5개 체험 프로그램</li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <h2 style=\"text-align: center;\" id=\"ea_org_name\">기관명</h2>\r\n");
      out.write("                        <div id=\"ea_divtable\">\r\n");
      out.write("                            <table id=\"ea_table1\">\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td width=\"130px\">기관명</td>\r\n");
      out.write("                                    <td width=\"300px\">국립국제교육원</td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td>주소</td>\r\n");
      out.write("                                    <td>경기 성남시</td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td>전화번호</td>\r\n");
      out.write("                                    <td>02-545-4848</td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td>이메일</td>\r\n");
      out.write("                                    <td>sdjflksnf@naver.com</td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </table>\r\n");
      out.write("                        </div>       \r\n");
      out.write("                    </div>\r\n");
      out.write("                    \r\n");
      out.write("                    <div sytle=\"float:left; width:70%;\"><h2 id=\"참고자료\">참고자료</h2></div>\r\n");
      out.write("                    <input type=\"file\" id=\"ea_write_file\"><br><br>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    <br clear=\"all\"><br> \r\n");
      out.write("\r\n");
      out.write("                    <!-- 댓글 --> \r\n");
      out.write("\r\n");
      out.write("                    <div> <h2>댓글</h2> </div>\r\n");
      out.write("                    <hr><br>\r\n");
      out.write("\r\n");
      out.write("                    <div id=\"ea_comment\">\r\n");
      out.write("                        <img src=\"example/1.PNG\" id=\"ea_img2\">\r\n");
      out.write("                        <text id=\"ea_text4\"> 백성강 <p id=\"p1\">댓글입니다.댓글입니다.댓글입니다.댓글입니다.댓글입니다.댓글입니다.댓글입니다.\r\n");
      out.write("                            댓글입니다.댓글입니다.댓글입니다.댓글입니다.</p>\r\n");
      out.write("                        </text>\r\n");
      out.write("                        <text id=\"ea_text5\">\r\n");
      out.write("                            <a href> 답글 </a> <a href> 삭제 </a> <a href> 수정 </a>\r\n");
      out.write("                            <!-- 관리자랑 사용자랑 나눠서 사용해야한다. -->\r\n");
      out.write("                            <br>2020.08.07 14:47 \r\n");
      out.write("                        </text>\r\n");
      out.write("                    </div>\r\n");
      out.write("        \r\n");
      out.write("                    <div id=\"ea_comment\">\r\n");
      out.write("                        <img src=\"example/1.PNG\" id=\"ea_img2\">\r\n");
      out.write("                        <text id=\"ea_text4\"> 백성강 \r\n");
      out.write("                            <p id=\"ea_p1\">댓글입니다.댓글입니다.댓글입니다.댓글입니다.댓글입니다.댓글입니다.댓글입니다.\r\n");
      out.write("                                댓글입니다.댓글입니다.댓글입니다.댓글입니다.\r\n");
      out.write("                            </p>\r\n");
      out.write("                        </text>\r\n");
      out.write("                        <text id=\"ea_text5\">\r\n");
      out.write("                            <a href> 답글 </a> <a href> 삭제 </a> <a href> 수정 </a>\r\n");
      out.write("                            <!-- 관리자랑 사용자랑 나눠서 사용해야한다. -->\r\n");
      out.write("                            <br>2020.08.07 14:47 \r\n");
      out.write("                        </text>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <br clear=\"all\"><br>\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <textarea id=\"ea_textarea\" placeholder=\"댓글을 입력하세요.\"></textarea><br>\r\n");
      out.write("                        <button id=\"ea_button5\">등록</button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <br clear=\"all\"><br>\r\n");
      out.write("        ");
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
