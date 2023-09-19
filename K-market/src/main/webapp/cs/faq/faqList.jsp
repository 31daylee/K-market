<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<!-- 
	날짜 : 2023/09/17
	이름 : 윤경엽, 이현정
	내용 : FaqList 구현
 -->
<script>

		$(function(){
			const jsondata1 = {
					jsondatavalue: [] // cate2 값을 저장할 배열
					};

					// jsondata 객체를 출력하여 확인
					console.log(jsondata1);
					console.log(typeof JSON.stringify(jsondata1));
					const array =  [];
					<c:forEach var="cate" items="${cates}">
					  array.push("${cate.cate2}");
					</c:forEach>;
					console.log(typeof array);
					console.log(typeof JSON.stringify(array));
			$.ajax({
				url:'/K-market/cs/faq/faqList.do',
				type:'POST',
				traditional : true,
				data: {array:array},
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				dataType:'json',
				success:function(data){
					for (var i = 0; i < array.length; i++) {
						$(".catename").eq(i).text(data.result[i]);
						console.log("data = "+ data.result[i]);
					}
				}
			});
		});
	</script>
	<c:forEach var="cate" items="${cates}">
	
	</c:forEach>
<section id="cs">
  <div class="faq">
    <nav>
      <div>
        <p>
        	홈<span>></span>자주묻는 질문<span>></span>
        	<c:choose>
        		<c:when test="${param.cate1 == '10'}">회원</c:when>
			    <c:when test="${param.cate1 == '20'}">쿠폰/이벤트</c:when>
			    <c:when test="${param.cate1 == '30'}">주문/결제</c:when>
			    <c:when test="${param.cate1 == '40'}">배송</c:when>
			    <c:when test="${param.cate1 == '50'}">취소/반품/교환</c:when>
			    <c:when test="${param.cate1 == '60'}">여행/숙박/항공</c:when>
			    <c:when test="${param.cate1 == '70'}">안전거래</c:when>
			</c:choose>
        </p>
      </div>
    </nav>
    <section class="list">
	<jsp:include page="../_asideFaq.jsp"/>
     <article>   
        <nav>
          <c:choose>
       		<c:when test="${param.cate1 == '10'}">
       			<h1>회원</h1>
	    	</c:when>
		    <c:when test="${param.cate1 == '20'}">
		        <h1>쿠폰/이벤트</h1>
		    </c:when>
		    <c:when test="${param.cate1 == '30'}">
		        <h1>주문/결제</h1>
		    </c:when>
		    <c:when test="${param.cate1 == '40'}"> 
		        <h1>배송</h1>
		    </c:when>
		    <c:when test="${param.cate1 == '50'}">
		        <h1>취소/반품/교환</h1>
		    </c:when>
		    <c:when test="${param.cate1 == '60'}">
		        <h1>여행/숙박/항공</h1>
		    </c:when>
		    <c:when test="${param.cate1 == '70'}">
		        <h1>안전거래</h1>
		    </c:when>
		</c:choose>
          <h2>가장 자주 묻는 질문입니다.</h2>
        </nav>
        <div>
		<c:forEach var="cate" items="${cates}">
      	<h3 class="catename"></h3>
		    <ul>
		        <c:forEach var="faq" items="${faqs}">
		                <li>
		                	<a href="/K-market/cs/faq/faqView.do?cate1=${faq.cate1}&cate2=${faq.cate2}&faqNo=${faq.faqNo}">
		                    <span>Q.</span>${faq.title}</a>
		               	</li>
		        </c:forEach>
		        <li class="more"><a href="/K-market/cs/faq/faqView.do?cate1=${faq.cate1}">더보기</a></li>
		    </ul>
		</c:forEach>
        </div>
      </article>
    </section>
  </div>
</section>
<%@ include file="../../_footer.jsp" %>
      
