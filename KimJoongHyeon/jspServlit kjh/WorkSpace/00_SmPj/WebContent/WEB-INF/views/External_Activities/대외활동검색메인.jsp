<%@page import="board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list"); %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 기본틀</title>
        <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">
  
</head>
<style>
 section{
        display: block;
    }

  .writertext{
      line-height: 70px;
      list-style: none;
  }
    .serach_box{
    	float:rights;
        background-color: RGB(248,248,248);
        display: flex;
    }
    .select_box{
        margin: 16px;
        line-height: 70px;
    }
    .select_btn{
        height: 50px;
        width: 100px;
        background-color:  RGB(221,228,236);
    }
    .categoty_select{
        height: 40px;
    }
    .result_btn{
        height: 50px;
        width: 100px;
        margin-top: 30px;
        margin-right: 30px;
    }
}
</style>
<body>
   <%@ include file="../Common/header.jsp" %> 
 <!----------------------------------------header------------------------------------------->
    <section>
            <h1 align="center">대외활동 검색</h1>
	<div class="serach_box">
      <ul class="writertext">
          <th>
              <li><h3>카테고리</h3></li>
              <li><h3>대상</h3></li>
              <li><h3>지역</h3></li>
          </th>
      </ul>
      <!-- 대외활동 글쓰기 카테고리,대상,지역별 선택 -->
      <div class="select_box">
          <h6>
              <select class="categoty_select" name="ea_category">
                  <option value="선택" selected disabled hidden >선택</option>
                  <option value="공모전">공모전</option>
                  <option value="채용박람회/취업박람회">채용박람회/취업박람회</option>
                  <option value="경진대회">경진대회</option>
                  <option value="봉사활동">봉사활동</option>
                  <option value="서포터즈">서포터즈</option>
                  <option value="관람/전시/체험">관람/전시/체험</option>
              </select>
          </h6>
          <h6>
              <div>
                  <button type="button"class="select_btn" id="ea_age_18">청년<br>(18~34세) </button>
                  <button type="button"class="select_btn" id="ea_age_35">중년<br>(35~49세) </button>
                  <button type="button"class="select_btn" id="ea_age_50">장년<br>(50~64세) </button>
                  <button type="button"class="select_btn" id="ea_age_65">어르신<br>(65세 이상) </button>
              </div>
              <div id="ck_ea_age">
				<input type="checkbox" name="ck_ea_age" id="ck_ea_age_18" value="청년"">
				<input type="checkbox" name="ck_ea_age" id="ck_ea_age_35" value="중년">
				<input type="checkbox" name="ck_ea_age" id="ck_ea_age_50" value="장년">
				<input type="checkbox" name="ck_ea_age" id="ck_ea_age_65" value="어르신">
            </div>
            <script>
               $(function(){
                  $("#ck_ea_age").hide();
                  $("#ea_age_18").click(function(){
                     $("#ck_ea_age_18").click();
                     if($("#ck_ea_age_18").is(":checked") == true){
                    	 $(this).css({'background':'darkgray'});
                     }else{
                    	 $(this).css('background', 'RGB(221,228,236)');
                     }
                  });
                  $("#ea_age_35").click(function(){
                     $("#ck_ea_age_35").click();
                     if($("#ck_ea_age_35").is(":checked") == true){
                    	 $(this).css({'background':'darkgray'});
                     }else{
                    	 $(this).css('background', 'RGB(221,228,236)');
                     }
                  });
                  $("#ea_age_50").click(function(){
                     $("#ck_ea_age_50").click();
                     if($("#ck_ea_age_50").is(":checked") == true){
                    	 $(this).css({'background':'darkgray'});
                     }else{
                    	 $(this).css('background', 'RGB(221,228,236)');
                     }
                  });
                  $("#ea_age_65").click(function(){
                     $("#ck_ea_age_65").click();
                     if($("#ck_ea_age_65").is(":checked") == true){
                    	 $(this).css({'background':'darkgray'});
                     }else{
                    	 $(this).css('background', 'RGB(221,228,236)');
                     }
                  });
               });
           </script>
          </h6>
          <h6 id = "ea_areatable_div">
              <div id= "ea_areatable">
	              <button type="button" class = "select_btn" id= "GP">가평군</button>
	              <button type="button" class = "select_btn" id= "GY">고양시</button>
	              <button type="button" class = "select_btn" id= "GC">과천시</button>
	              <button type="button" class = "select_btn" id= "GM">광명시</button>
	              <button type="button" class = "select_btn" id= "GJ">광주시</button>
	              <button type="button" class = "select_btn" id= "GL">구리시</button>
	              <button type="button" class = "select_btn" id= "GP2">군포시</button>
	              <br>
	              <button type="button" class = "select_btn" id= "GP3">김포시</button>
	              <button type="button" class = "select_btn" id= "NYJ">남양주시</button>
	              <button type="button" class = "select_btn" id= "DDC">동두천시</button>
	              <button type="button" class = "select_btn" id= "BC">부천시</button>
	              <button type="button" class = "select_btn" id= "SN">성남시</button>
	              <button type="button" class = "select_btn" id= "SW">수원시</button>
	              <button type="button" class = "select_btn" id= "SH">시흥시</button>
	              <br>
	              <button type="button" class = "select_btn" id= "AS">안산시</button>
	              <button type="button" class = "select_btn" id= "AY">안양시</button>
	              <button type="button" class = "select_btn" id= "PJ">파주시</button>
	              <button type="button" class = "select_btn" id= "PT">평택시</button>
	              <button type="button" class = "select_btn" id= "PC">포천시</button>
	              <button type="button" class = "select_btn" id= "HN">하남시</button>
	              <button type="button" class = "select_btn" id= "HS">화성시</button>
              </div>
              <div id="ck_ea_areatable">
             	<input type="checkbox" name="ck_lc" id="ck_GP" value="가평군">
				<input type="checkbox" name="ck_lc" id="ck_GY" value="고양시">
				<input type="checkbox" name="ck_lc" id="ck_GC" value="과천시">
				<input type="checkbox" name="ck_lc" id="ck_GM" value="광명시">
				<input type="checkbox" name="ck_lc" id="ck_GJ" value="광주시">
				<input type="checkbox" name="ck_lc" id="ck_GL" value="구리시">
				<input type="checkbox" name="ck_lc" id="ck_GP2" value="군포시">
              	<input type="checkbox" name="ck_lc" id="ck_GP3" value="김포시">
				<input type="checkbox" name="ck_lc" id="ck_NYJ" value="남양주시">
				<input type="checkbox" name="ck_lc" id="ck_DDC" value="동두천시">
				<input type="checkbox" name="ck_lc" id="ck_BC" value="부천시">
				<input type="checkbox" name="ck_lc" id="ck_SN" value="성남시">
				<input type="checkbox" name="ck_lc" id="ck_SW" value="수원시">
				<input type="checkbox" name="ck_lc" id="ck_SH" value="시흥시">
				<input type="checkbox" name="ck_lc" id="ck_AS" value="안산시"">
				<input type="checkbox" name="ck_lc" id="ck_AY" value="안양시">
				<input type="checkbox" name="ck_lc" id="ck_PJ" value="파주시">
				<input type="checkbox" name="ck_lc" id="ck_PT" value="평택시">
				<input type="checkbox" name="ck_lc" id="ck_PC" value="포천시">
				<input type="checkbox" name="ck_lc" id="ck_HN" value="하남시">
				<input type="checkbox" name="ck_lc" id="ck_HS" value="화성시">
            </div>
             <script>
               $(function(){
                  $("#ck_ea_areatable").hide();
                  $("#GP").click(function(){
                     $("#ck_GP").click();
                     if($("#ck_GP").is(":checked") == true){
                    	 $(this).css({'background':'darkgray'});
                     }else{
                    	 $(this).css('background', 'RGB(221,228,236)');
                     }
                  });
                  $("#GY").click(function(){
                      $("#ck_GY").click();
                      if($("#ck_GY").is(":checked") == true){
                     	 $(this).css({'background':'darkgray'});
                      }else{
                     	 $(this).css('background', 'RGB(221,228,236)');
                      }
                   });
                  $("#GC").click(function(){
                      $("#ck_GC").click();
                      if($("#ck_GC").is(":checked") == true){
                     	 $(this).css({'background':'darkgray'});
                      }else{
                     	 $(this).css('background', 'RGB(221,228,236)');
                      }
                   });
                  $("#GM").click(function(){
                      $("#ck_GM").click();
                      if($("#ck_GM").is(":checked") == true){
                     	 $(this).css({'background':'darkgray'});
                      }else{
                     	 $(this).css('background', 'RGB(221,228,236)');
                      }
                   });
                  $("#GJ").click(function(){
                      $("#ck_GJ").click();
                      if($("#ck_GJ").is(":checked") == true){
                     	 $(this).css({'background':'darkgray'});
                      }else{
                     	 $(this).css('background', 'RGB(221,228,236)');
                      }
                   });
                  $("#GL").click(function(){
                      $("#ck_GL").click();
                      if($("#ck_GL").is(":checked") == true){
                     	 $(this).css({'background':'darkgray'});
                      }else{
                     	 $(this).css('background', 'RGB(221,228,236)');
                      }
                   });
                  $("#GP2").click(function(){
                      $("#ck_GP2").click();
                      if($("#ck_GP2").is(":checked") == true){
                     	 $(this).css({'background':'darkgray'});
                      }else{
                     	 $(this).css('background', 'RGB(221,228,236)');
                      }
                   });
                  $("#GP3").click(function(){
                      $("#ck_GP3").click();
                      if($("#ck_GP3").is(":checked") == true){
                     	 $(this).css({'background':'darkgray'});
                      }else{
                     	 $(this).css('background', 'RGB(221,228,236)');
                      }
                   });
                   $("#NYJ").click(function(){
                       $("#ck_NYJ").click();
                       if($("#ck_NYJ").is(":checked") == true){
                      	 $(this).css({'background':'darkgray'});
                       }else{
                      	 $(this).css('background', 'RGB(221,228,236)');
                       }
                    });
                   $("#DDC").click(function(){
                       $("#ck_DDC").click();
                       if($("#ck_DDC").is(":checked") == true){
                      	 $(this).css({'background':'darkgray'});
                       }else{
                      	 $(this).css('background', 'RGB(221,228,236)');
                       }
                    });
                   $("#BC").click(function(){
                       $("#ck_BC").click();
                       if($("#ck_BC").is(":checked") == true){
                      	 $(this).css({'background':'darkgray'});
                       }else{
                      	 $(this).css('background', 'RGB(221,228,236)');
                       }
                    });
                   $("#SN").click(function(){
                       $("#ck_SN").click();
                       if($("#ck_SN").is(":checked") == true){
                      	 $(this).css({'background':'darkgray'});
                       }else{
                      	 $(this).css('background', 'RGB(221,228,236)');
                       }
                    });
                   $("#SW").click(function(){
                       $("#ck_SW").click();
                       if($("#ck_SW").is(":checked") == true){
                      	 $(this).css({'background':'darkgray'});
                       }else{
                      	 $(this).css('background', 'RGB(221,228,236)');
                       }
                    });
                   $("#SH").click(function(){
                       $("#ck_SH").click();
                       if($("#ck_SH").is(":checked") == true){
                      	 $(this).css({'background':'darkgray'});
                       }else{
                      	 $(this).css('background', 'RGB(221,228,236)');
                       }
                    });
                   $("#AS").click(function(){
                       $("#ck_AS").click();
                       if($("#ck_AS").is(":checked") == true){
                      	 $(this).css({'background':'darkgray'});
                       }else{
                      	 $(this).css('background', 'RGB(221,228,236)');
                       }
                    });
                    $("#AY").click(function(){
                        $("#ck_AY").click();
                        if($("#ck_AY").is(":checked") == true){
                       	 $(this).css({'background':'darkgray'});
                        }else{
                       	 $(this).css('background', 'RGB(221,228,236)');
                        }
                     });
                    $("#PJ").click(function(){
                        $("#ck_PJ").click();
                        if($("#ck_PJ").is(":checked") == true){
                       	 $(this).css({'background':'darkgray'});
                        }else{
                       	 $(this).css('background', 'RGB(221,228,236)');
                        }
                     });
                    $("#PT").click(function(){
                        $("#ck_PT").click();
                        if($("#ck_PT").is(":checked") == true){
                       	 $(this).css({'background':'darkgray'});
                        }else{
                       	 $(this).css('background', 'RGB(221,228,236)');
                        }
                     });
                    $("#PC").click(function(){
                        $("#ck_PC").click();
                        if($("#ck_PC").is(":checked") == true){
                       	 $(this).css({'background':'darkgray'});
                        }else{
                       	 $(this).css('background', 'RGB(221,228,236)');
                        }
                     });
                    $("#HN").click(function(){
                        $("#ck_HN").click();
                        if($("#ck_HN").is(":checked") == true){
                       	 $(this).css({'background':'darkgray'});
                        }else{
                       	 $(this).css('background', 'RGB(221,228,236)');
                        }
                     });
                    $("#HS").click(function(){
                        $("#ck_HS").click();
                        if($("#ck_HS").is(":checked") == true){
                       	 $(this).css({'background':'darkgray'});
                        }else{
                       	 $(this).css('background', 'RGB(221,228,236)');
                        }
                     });
               });
           </script>
          </h6>
      </div>
	</div>
	<br clear="all">	    
      <div class = "sp_button">
		<input type='button' class='result_btn' name='btn' value='초기화' style="float: right;" id="p_sp_search_reset">
		<input type='button' class='result_btn' id='btnSearch' name='btn' value='검색' style="float: right;" id="p_sp_search_submit" onclick="location.href='<%= request.getContextPath()  %>/search.ea'">
	</div>  
                    <!-- 대외활동 글쓰기 카테고리,대상,지역별 선택 -->
	
	<div id="result_table">
	
	</div>
	
	
	
	<%@ include file="../Common/page.jsp"%>
        </section>
    <%@ include file="../Common/footer.jsp" %>
</body>
</html>



 