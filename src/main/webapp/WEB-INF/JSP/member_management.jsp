<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>Member_Managepage</title>
<link rel="shortcut icon" href="assets/images/feature/11.jpg">

<!-- fraimwork - css include -->
<link rel="stylesheet" type="text/css"
   href="assets/css/bootstrap.min.css">

<!-- icon font - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/fontawesome.css">

<!-- animation - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/animate.css">

<!-- carousel - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/slick.css">
<link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">

<!-- popup - css include -->
<link rel="stylesheet" type="text/css"
   href="assets/css/magnific-popup.css">

<!-- jquery-ui - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/jquery-ui.css">

<!-- custom - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/style.css">
<link rel="stylesheet" type="text/css" href="assets/css/teau.css">
<link rel="stylesheet" type="text/css">
</head>
<script type="text/javascript"
   src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<style>
.table {
   border: 2px solid black;
   width: 1100px;
}

thead {
   border-bottom: 1px solid black;
}

.member {
   border: 1px solid black;
}

.member:hover {
   transition: all 0.3s;
   background: #DED369;
}

#search {
   border: 1px solid black;
}

.container {
   display: flex;
   justify-content: center;
}

.memberCenter {
   text-align: center;
}

.button {
   background-color: #fd6744;
   border: none;
   color: white;
   padding: 10px 20px;
   text-align: center;
   text-decoration: none;
   display: inline-block;
   font-size: 16px;
   margin: 4px 2px;
   cursor: pointer;
}

.button {
   border-radius: 5px;
}

.button {
   -webkit-transition-duration: 0.4s; /* Safari */
   transition-duration: 0.4s;
}

.button:hover {
   background: tomato;
   color: white;
}
</style>

<body>

   <jsp:include page="header.jsp"></jsp:include>
   <script type="text/javascript">
      $(document).ready(function() {

         //????????? ?????? ??????
         $('#pagingDiv a').click(function(e) {
            e.preventDefault();
            $('#pageNum').val($(this).attr("href"));
            pagingForm.submit();

         });

      });
   </script>
   <script type="text/javascript">


   
   function rollChange() {
      if (role == '0' || '1' || '2') {
         console.log('??????????????????');
         alert("??????????????? ?????????????????????")
         location.href = "member_management.do";
      } 
   }
</script>
   
   <!-- contact_section - start
        ================================================== -->
   <section class="contact_section sec_ptb_120 bg_default_gray">
      <!--????????????&?????????-->
      <div class="container">
         <div class="contact_form" style="height: 100px; background-color:#white;">
            <h3>????????????</h3>
            <div class="row">
               <!-- <div class="offset-md-5 col-md-5">
                  <div class="item_content img-fluid">
                     <h3>
                        <i class="fas fa-user"></i>????????????
                     </h3>
                  </div>
               </div>
               <div class="offset-md-3 col-md-5">
                  <div class="item_content">
                     <h4 class="item_title text-uppercase">????????? ??????</h4>
                     <br>
                  </div>
               </div>-->
            </div>
         </div>
      </div>
      <br>

      <!--    <div class="container">
         <div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s"> -->
      <!-- ?????? ?????? ???????????? -->
      <!-- <form action="#"> -->

      <div class="hi container">

         <br>
         <hr>
         <!-- ????????? ?????? ?????? -->
         <table>
            <thead>
               <tr>
                  <th style="text-align: center; font-color: black;">?????????</th>
                  <th style="text-align: center">??????</th>
                  <th style="text-align: center">?????????</th>
                  <th style="text-align: center">??????</th>
                  <th style="text-align: center">????????????</th>
               </tr>
               </tr>
            </thead>
            <tbody>
               <c:forEach items="${memberList }" var="member">
                  <form method="post" action="updateAdmin.do">
                     <tr>
                        <td><input name="memberId" value="${member.memberId }"
                           readonly style="text-align: center"></input></td>
                        <td><input name="memberName" value="${member.memberName }"
                           readonly style="text-align: center"></input></td>
                        <td><input name="memberEmail"
                           value="${member.memberEmail }" readonly
                           style="text-align: center"></input></td>
                        <td><c:set var="memberRole" value="????????????" /> <c:choose>
                              <c:when test="${member.memberRole eq '0'}">
                                       ????????????
                                        </c:when>
                              <c:when test="${member.memberRole eq '1'}">
                                        ?????????
                                        </c:when>
                              <c:when test="${member.memberRole eq '2'}">
                                                                                          ????????????
                                        </c:when>
                           </c:choose></td>
                        <td><select class="memberRole" name="memberRole">
                              <option value="0">??????</option>
                              <option value="1">?????????</option>
                              <option value="2">??????</option>
                        </select>

                           <button name="" type="submit" class="button"
                              onclick="rollChange()">??????</button></td>
                     </tr>
                  </form>
               </c:forEach>
            </tbody>
         </table>
      </div>
      <div id="pagingDiv" style="text-align: center">
         <c:if test="${pagingM.prev}">
            <a href="${pagingM.startPage - 1 }">???</a>
         </c:if>
         <c:forEach var="num" begin="${pagingM.startPage}"
            end="${pagingM.endPage }">
            <c:if test="${pagingM.cri.pageNum == num }">
               <a href="${num }"
                  style="background-color: #fd6c44; color: black; font-weight: bold;">${num }</a>
            </c:if>
            <c:if test="${pagingM.cri.pageNum != num }">
               <a href="${num }">${num }</a>
            </c:if>
         </c:forEach>
         <c:if test="${pagingM.next}">
            <a id="next" href="${pagingM.endPage + 1 }">???</a>
         </c:if>
      </div>

      <form id="pagingFrm" name="pagingForm" action="getMemberList.do"
         method="get">
         <input type="hidden" id="pageNum" name="pageNum"
            value="${pagingM.cri.pageNum }"> <input type="hidden"
            id="amount" name="amount" value="${pagingM.cri.amount }">
      </form>



      <!-- <div class="text-center">
                  <button type="submit" class="btn btn_primary text-uppercase">Send massage</button>
                </div> -->
      <!-- </form> -->
      </div>
      </div>

   </section>
   <!-- contact_section - end
        ================================================== -->

   </main>
   <!-- main body - end
      ================================================== -->

   <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>