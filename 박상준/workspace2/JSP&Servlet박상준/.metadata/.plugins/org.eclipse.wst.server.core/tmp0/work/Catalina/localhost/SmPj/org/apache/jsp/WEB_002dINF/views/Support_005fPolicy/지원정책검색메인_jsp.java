/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.37
 * Generated at: 2020-08-26 01:37:06 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.Support_005fPolicy;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class 지원정책검색메인_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/views/Support_Policy/../Common/footer.jsp", Long.valueOf(1598347049535L));
    _jspx_dependants.put("/WEB-INF/views/Support_Policy/../Common/header.jsp", Long.valueOf(1598405748429L));
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
      out.write("    <title>게시판 기본틀</title>\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/SP_search.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/body.css\">\r\n");
      out.write("  \r\n");
      out.write("</head>\r\n");
      out.write("<style>\r\n");
      out.write(" section{\r\n");
      out.write("        display: block;\r\n");
      out.write("    }\r\n");
      out.write("    .serach_box{\r\n");
      out.write("        background-color: RGB(248,248,248);\r\n");
      out.write("        display: flex;\r\n");
      out.write("    }\r\n");
      out.write("    .writertext{\r\n");
      out.write("        list-style: none;\r\n");
      out.write("        line-height: 70px;\r\n");
      out.write("    }\r\n");
      out.write("    .select_box{\r\n");
      out.write("        margin: 16px;\r\n");
      out.write("        line-height: 70px;\r\n");
      out.write("    }\r\n");
      out.write("    .select_btn{\r\n");
      out.write("        height: 50px;\r\n");
      out.write("        width: 100px;\r\n");
      out.write("        background-color:  RGB(221,228,236);\r\n");
      out.write("    }\r\n");
      out.write("    .categoty_select{\r\n");
      out.write("        height: 40px;\r\n");
      out.write("    }\r\n");
      out.write("    .result_btn{\r\n");
      out.write("        height: 50px;\r\n");
      out.write("        width: 100px;\r\n");
      out.write("        margin-top: 30px;\r\n");
      out.write("        margin-right: 30px;\r\n");
      out.write("    }\r\n");
      out.write("    .sp_search_result_table{\r\n");
      out.write("        text-align: center;\r\n");
      out.write("    }\r\n");
      out.write("    .sp_search_result_table table{\r\n");
      out.write("        margin: 0px auto;\r\n");
      out.write("    }\r\n");
      out.write("    .sp_search_result_table table tr{\r\n");
      out.write("        Font-size: 20px\r\n");
      out.write("       }\r\n");
      out.write("        \r\n");
      out.write("       .sp_search_result_table_title{width:600px;\r\n");
      out.write("        \r\n");
      out.write("       }\r\n");
      out.write("       \r\n");
      out.write("       \r\n");
      out.write("       .sp_search_result_table_tr td{\r\n");
      out.write("        border-bottom: 1px solid #444444;\r\n");
      out.write("           \r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<body>\r\n");
      out.write("   ");
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
      out.write(" \r\n");
      out.write(" <!----------------------------------------header------------------------------------------->\r\n");
      out.write("    <section>\r\n");
      out.write("        <!-- <from> -->\r\n");
      out.write("            <h1 align=\"center\">지원정책 검색</h1>\r\n");
      out.write("            <!-- <div id=External_mainbox> -->\r\n");
      out.write("                <div class=\"serach_box\">\r\n");
      out.write("                    <ul class=\"writertext\">\r\n");
      out.write("                        <th>\r\n");
      out.write("                            <li class=\"infomation-item\"><h3>카테고리:</h3></li>\r\n");
      out.write("                            <li class=\"infomation-item\"><h3>접수상태:</h3></li>\r\n");
      out.write("                            <li class=\"infomation-item\"><h3>취업상태:</h3></li>\r\n");
      out.write("                            <li class=\"infomation-item\"><h3>대상별:</h3></li>\r\n");
      out.write("                            <li class=\"infomation-item\"><h3>지역별:</h3></li>\r\n");
      out.write("                        </th>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    <!-- 대외활동 글쓰기 카테고리,대상,지역별 선택 -->\r\n");
      out.write("                    <!-- <div class=\"writertext-answer\"> -->\r\n");
      out.write("                    <div class=\"select_box\">\r\n");
      out.write("                        <h3>\r\n");
      out.write("                            <select class=\"categoty_select\" id=\"sp_category\">\r\n");
      out.write("                                <option value=\"\" selected disabled hidden >선택해주세요.</option>\r\n");
      out.write("                                <option value=\"1\">재직지원</option>\r\n");
      out.write("                                <option value=\"2\">취업지원</option>\r\n");
      out.write("                                <option value=\"3\">기업지원</option>\r\n");
      out.write("                                <option value=\"4\">창업지원</option>\r\n");
      out.write("                                <option value=\"5\">생활/금융</option>\r\n");
      out.write("                                <option value=\"6\">교통/주거</option>\r\n");
      out.write("                            </select>\r\n");
      out.write("                        </h3>\r\n");
      out.write("                        <h3 class=\"sp_Receipt_status\">\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <button class = \"select_btn\" >접수중</button>\r\n");
      out.write("                                <button class = \"select_btn\" >마감</button>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </h3>\r\n");
      out.write("                        <h3 class=\"sp_Employment_status\">\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <button class = \"select_btn\" >구직중</button>\r\n");
      out.write("                                <button class = \"select_btn\" >재직중</button>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </h3>\r\n");
      out.write("                        <h3>\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <button class=\"select_btn\" id=\"ea_age_18\">청년<br>(18~34세) </button>\r\n");
      out.write("                                <button class=\"select_btn\" id=\"ea_age_35\">중년<br>(35~49세) </button>\r\n");
      out.write("                                <button class=\"select_btn\" id=\"ea_age_50\">장년<br>(50~64세) </button>\r\n");
      out.write("                                <button class=\"select_btn\" id=\"ea_age_65\">어르신<br>(65세 이상) </button>\r\n");
      out.write("                                    <!-- 나이 카테고리\r\n");
      out.write("                                    청년  ea_age_18\r\n");
      out.write("                                    중년  ea_age_35\r\n");
      out.write("                                    장년  ea_age_50\r\n");
      out.write("                                    어르신 ea_age_65 \r\n");
      out.write("                                    -->\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </h3>\r\n");
      out.write("                        <h3 id = \"ea_areatable_div\">\r\n");
      out.write("                            <div id= \"ea_areatable\">\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"GP\">가평군</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"GY\">고양시</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"GC\">과천시</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"GM\">광명시</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"GJ\">광주시</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"GL\">구리시</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"GP2\">군포시</button>\r\n");
      out.write("                                    <br>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"GP3\">김포시</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"NYJ\">남양주시</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"DDC\">동두천시</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"BC\">부천시</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"SN\">성남시</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"SW\">수원시</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"SH\">시흥시</button>\r\n");
      out.write("                                    <br>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"AS\">안산시</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"AY\">안양시</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"PJ\">파주시</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"PT\">평택시</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"PC\">포천시</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"HN\">하남시</button>\r\n");
      out.write("                                    <button class = \"select_btn\" id= \"HS\">화성시</button>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </h3>\r\n");
      out.write("                    </div>  \r\n");
      out.write("                    <!-- </div> -->\r\n");
      out.write("                </div>\r\n");
      out.write("                    <!-- 대외활동 글쓰기 카테고리,대상,지역별 선택 -->\r\n");
      out.write("                    <div class = \"sp_button\">\r\n");
      out.write("                    <input type='button' class='result_btn' name='btn' value='초기화' style=\"float: right;\" id=\"p_sp_search_reset\">\r\n");
      out.write("                    <input type='button' class='result_btn' name='btn' value='검색' style=\"float: right;\" id=\"p_sp_search_submit\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                   <br><br><br>\r\n");
      out.write("                   <!-- </div> -->\r\n");
      out.write("                   <div class=\"sp_search_result_table\">\r\n");
      out.write("                        <h1>N건이 검색되었습니다.</h1><br>\r\n");
      out.write("                        <table>\r\n");
      out.write("                            <tr class=\"sp_search_result_table_tr\">\r\n");
      out.write("                                <td class=sp_search_result_table_title>\r\n");
      out.write("                                    <a href=\"#\">[오산시] KH정보교육원 점심값 지원<br></a>\r\n");
      out.write("                                    2020-08-16 ~ 2020-09-16</td>\r\n");
      out.write("                                <td>추천 수 : 5</td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr class=\"sp_search_result_table_tr\">\r\n");
      out.write("                                <td class=sp_search_result_table_title>\r\n");
      out.write("                                    <a href=\"#\">[오산시] KH정보교육원 점심값 지원<br></a>\r\n");
      out.write("                                    2020-08-16 ~ 2020-09-16</td>\r\n");
      out.write("                                <td>추천 수 : 4</td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr class=\"sp_search_result_table_tr\">\r\n");
      out.write("                                <td class=sp_search_result_table_title>\r\n");
      out.write("                                    <a href=\"#\">[오산시] KH정보교육원 점심값 지원<br></a>\r\n");
      out.write("                                    2020-08-16 ~ 2020-09-16</td>\r\n");
      out.write("                                <td>추천 수 : 1 </td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr class=\"sp_search_result_table_tr\">\r\n");
      out.write("                                <td class=sp_search_result_table_title>\r\n");
      out.write("                                    <a href=\"#\">[오산시] KH정보교육원 점심값 지원<br></a>\r\n");
      out.write("                                    2020-08-16 ~ 2020-09-16</td>\r\n");
      out.write("                                <td>추천 수 : 2</td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr class=\"sp_search_result_table_tr\">\r\n");
      out.write("                                <td class=sp_search_result_table_title>\r\n");
      out.write("                                    <a href=\"#\">[오산시] KH정보교육원 점심값 지원<br></a>\r\n");
      out.write("                                    2020-08-16 ~ 2020-09-16</td>\r\n");
      out.write("                                <td>추천 수 : 3</td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </table>\r\n");
      out.write("                    </div>\r\n");
      out.write("            <ul align=\"center\">\r\n");
      out.write("                <div class = \"pagination\">\r\n");
      out.write("                    <a href=\"#\" title = \"이전\" class=\"pre\"><</a>\r\n");
      out.write("                    <a href=\"#\" class=\"active\">1</a>\r\n");
      out.write("                    <a href=\"#\">2</a>\r\n");
      out.write("                    <a href=\"#\">3</a>\r\n");
      out.write("                    <a href=\"#\">4</a>\r\n");
      out.write("                    <a href=\"#\">5</a>\r\n");
      out.write("                    <a href=\"#\" title = \"다음\" class=\"next\">></a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </section>\r\n");
      out.write("    ");
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
