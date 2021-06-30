<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page import="com.teau.biz.member.MemberVO" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
        <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

          <% String boardId=request.getParameter("boardId"); String boardImgm=request.getParameter("boardImgm");
            MemberVO member=(MemberVO)request.getAttribute("member"); String memberId="" ; if(member !=null)
            memberId=member.getMemberId(); %>
            <!doctype html>
            <html lang="en">

            <head>

              <meta charset="utf-8">
              <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
              <meta http-equiv="x-ua-compatible" content="ie=edge">

              <title>board_viewer</title>
              <link rel="shortcut icon" href="assets/images/feature/11.jpg">

              <!-- fraimwork - css include -->
              <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

              <!-- icon font - css include -->
              <link rel="stylesheet" type="text/css" href="assets/css/fontawesome.css">

              <!-- animation - css include -->
              <link rel="stylesheet" type="text/css" href="assets/css/animate.css">

              <!-- carousel - css include -->
              <link rel="stylesheet" type="text/css" href="assets/css/slick.css">
              <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">

              <!-- popup - css include -->
              <link rel="stylesheet" type="text/css" href="assets/css/magnific-popup.css">

              <!-- jquery-ui - css include -->
              <link rel="stylesheet" type="text/css" href="assets/css/jquery-ui.css">

              <!-- custom - css include -->
              <link rel="stylesheet" type="text/css" href="assets/css/style.css">
              <style>
                .header_section {
                  background-color: white;
                }
              </style>

              <script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
              <script>
                $(document).ready(function () {

                  selectReviewDetail();

                });



                function nullvaluealert() {
                  if (!document.replysubmit.replyContent.value || document.replysubmit.replyContent.value.trim() == "") {
                    alert("댓글 내용을 입력하세요");

                    return false;
                  }
                }


                function selectReviewDetail() {
                  var boardId = <%=boardId%>;
                  var memberId = '<%=memberId%>';


                  $.ajax({
                    type: 'POST',
                    url: 'getReviewDetail.do',
                    dataType: 'json',
                    data: { 'boardId': boardId },
                    success: function (data) {

                      $('#boardId').text(data['board'].boardId);
                      $('#boardTitle').text(data['board'].boardTitle);
                      $('#boardCate').text(data['board'].boardCate);
                      $('#boardWriter').text(data['board'].boardWriter);
                      $('#boardRegdate').text(data['board'].boardRegdate);
                      $('#boardContent').text(data['board'].boardContent);
                      $('#boardImgm').text(data['board'].boardImgm);
                      if (memberId != null && memberId == data['board'].boardWriter) {
                        $('#btnDel').show();
                        $('#btnUp').show();
                      } else {
                        $('#btnDel').hide();
                        $('#btnUp').hide();
                      }

                      if (data['board'].boardCate == 1) {
                        $('#goListO').show();
                        $('#goListB').hide();
                        $('#goListR').hide();
                      } else if (data['board'].boardCate == 2) {
                        $('#goListO').hide();
                        $('#goListB').show();
                        $('#goListR').hide();
                      } else {
                        $('#goListO').hide();
                        $('#goListB').hide();
                        $('#goListR').show();
                      }

                    },
                    error: function (e) {
                      console.log(e);
                    }
                  });

                }

              </script>
            </head>

            <body>
              <%@include file="header.jsp" %>

                <!-- details_section - start
        ================================================== -->
                <section class="details_section blog_details sec_ptb_120 bg_default_gray">
                  <div class="container">
                    <div class="row justify-content-lg-between justify-content-md-center justify-content-sm-center">

                      <div class="col-lg-1 col-md-1"></div>
                      <div class="col-lg-10 col-md-10">
                        <div class="details_content mb-0">
                          <div class="details_image wow fadeInUp" data-wow-delay=".1s">
                            <!--   <img src="assets/images/details/img_01.jpg" alt="image_not_found">  -->
                            <img src="resource/imgUpload/<%=boardImgm%>" alt="image_not_found" style="height:400px">

                          </div>
                          <div class="wrap_space">

                            <h2 id="boardTitle" class="details_title text-uppercase wow fadeInUp" data-wow-delay=".1s">
                            </h2>
                            <ul class="post_meta ul_li wow fadeInUp" data-wow-delay=".1s">
                              <li><a href="#!"><i class="fal fa-user"></i><span id="boardWriter"></span></a></li>
                              <li><i class="fal fa-calendar-alt"></i><span id="boardRegdate"></span></li>

                            </ul>
                            <p class="wow fadeInUp" data-wow-delay=".1s">
                              <span id="boardContent"></span>
                            </p>

                            <div class="container">

                              <div class="row">
                                <div class="col" style="text-align: right;">
                                  <a id="btnUp" class="btn btn_primary text-uppercase"
                                    href="boardUpdateMove.do?boardId=<%=boardId%>&boardImgm=<%=boardImgm%>"
                                    style="margin-top: 2.5%;">게시글 수정</a>&nbsp;&nbsp;&nbsp;&nbsp;

                                  <a id="btnDel" class="btn btn_primary text-uppercase"
                                    href="boardDelete.do?boardId=<%=boardId%>" style="margin-top: 2.5%;">게시글
                                    삭제</a>&nbsp;&nbsp;&nbsp;&nbsp;

                                  <a id="goListO" class="btn btn_primary text-uppercase" href="toBoard.do"
                                    style="margin-top: 2.5%;">게시글 목록</a>
                                  <a id="goListB" class="btn btn_primary text-uppercase" href="tbBoard.do"
                                    style="margin-top: 2.5%;">게시글 목록</a>
                                  <a id="goListR" class="btn btn_primary text-uppercase" href="rankBoard.do"
                                    style="margin-top: 2.5%;">게시글 목록</a>
                                </div>
                              </div>

                            </div>
                            <br />
                            <br />
                            <br />
                            <div>
                              <hr style="height: 1px; background-color: black;">

                              <form action="replyDelete.do" method="post">
                                <c:forEach items="${reply}" var="reply">
                                  <div>
                                    <p style="font-weight: bold;">${reply.replyWriter} / ${reply.replyRegdate}</p>
                                    <p>${reply.replyContent }</p>

                                    <input type="hidden" name="boardId" value="<%=boardId%>">
                                    <input type="hidden" name="boardImgm" value="<%=boardImgm%>">
                                    <input type="hidden" name="replyId" value="${reply.replyId}">

                                    <c:if test="${member.memberId !=null and member.memberId eq reply.replyWriter}">
                                      <button class="btn btn_primary text-uppercase" type="submit"
                                        name="commentInsertBtn">댓글삭제</button>
                                    </c:if>
                                    <hr style="height: 1px; background-color: black;">
                                  </div>
                                </c:forEach>
                              </form>

                            </div>
                            <!--  댓글  -->
                            <c:if test="${member.memberId !=null }">
                              <div>
                                <form method="post" action="replyCreate.do" name="replysubmit"
                                  onsubmit="return nullvaluealert()">
                                  <div>
                                    <div class="col-md-2">
                                      댓글 작성자 :
                                    </div>
                                    <div class="col-md-10">
                                      <input type="text" name="replyWriter" value="${member.memberId }" readonly>
                                    </div>
                                  </div>
                                  <div>
                                    <div class="col-md-2">
                                      댓글 내용 :
                                    </div>
                                    <div class="col-md-8">
                                      <textarea rows="5" cols="50" name="replyContent"></textarea>
                                    </div>
                                  </div>
                                  <p>
                                    <input type="hidden" name="boardId" value="<%=boardId%>">
                                    <input type="hidden" name="boardImgm" value="<%=boardImgm%>">
                                    <button class="btn btn_primary text-uppercase" type="submit"
                                      name="commentInsertBtn">댓글등록</button>
                                  </p>
                                </form>
                              </div>
                            </c:if>
                            <c:if test="${member.memberId == null }">
                              <div>
                              </div>
                            </c:if>

                            <!--    댓글  
                          <div class="container">
                            <form name="commentInsertForm">
                              <div class="input-group">
                                <input type="text" class="form-control" id="content" name="content"
                                  placeholder="댓글을 입력하세요.">
                                <button class="btn btn_primary text-uppercase" type="submit"
                                  name="commentInsertBtn">댓글등록</button>
                              </div>
                            </form>
                          </div>
                          
                          <div class="container">
                            <div class="commentList"></div>
                          </div> -->

                          </div>
                        </div>
                      </div>

                      <div class="col-lg-1 col-md-1"></div>

                    </div>
                  </div>
                </section>
                <!-- details_section - end
        ================================================== -->

                </main>
                <!-- main body - end
      ================================================== -->
                <%@include file="footer.jsp" %>

            </body>

            </html>