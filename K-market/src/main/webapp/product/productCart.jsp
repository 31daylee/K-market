<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>
<main id="product">
    <aside>
        <ul class="category">
            <li><i class="fa fa-bars" aria-hidden="true"></i>카테고리</li>
            <li>
                <a href="#"><i class="fas fa-tshirt" aria-hidden="true"></i>패션·의류·뷰티</a>
                <ol>
                    <li><a href="/K-market/product/productlist.do">남성의류</a></li>
                    <li><a href="/K-market/product/productlist.do">여성의류</a></li>
                    <li><a href="/K-market/product/productlist.do">잡화</a></li>
                    <li><a href="/K-market/product/productlist.do">뷰티</a></li>
                </ol>
            </li>
            <li>
                <a href="/K-market/product/productlist.do"><i class="fas fa-laptop" aria-hidden="true"></i>가전·디지털</a>
                <ol>
                    <li><a href="/K-market/product/productlist.do">노트북</a></li>
                    <li><a href="/K-market/product/productlist.do">가전</a></li>
                    <li><a href="/K-market/product/productlist.do">휴대폰</a></li>
                    <li><a href="/K-market/product/productlist.do">기타</a></li>
                </ol>
            </li>
            <li>
                <a href="/K-market/product/productlist.do"><i class="fas fa-utensils" aria-hidden="true"></i>식품·생필품</a>
                <ol>
                    <li><a href="/K-market/product/productlist.do">신선식품</a></li>
                    <li><a href="/K-market/product/productlist.do">가공식품</a></li>
                    <li><a href="/K-market/product/productlist.do">건강식품</a></li>
                    <li><a href="/K-market/product/productlist.do">생필품</a></li>
                </ol>
            </li>
            <li>
                <a href="#"><i class="fas fa-home" aria-hidden="true"></i>홈·문구·취미</a>
                <ol>
                    <li><a href="/K-market/product/productlist.do">가구/DIY</a></li>
                    <li><a href="/K-market/product/productlist.do">침구·커튼</a></li>
                    <li><a href="/K-market/product/productlist.do">생활용품</a></li>
                    <li><a href="/K-market/product/productlist.do">사무용품</a></li>
                </ol>
            </li>
        </ul>
    </aside>
    <!-- 장바구니 페이지 시작 -->
    <section class="cart">
      
      <!-- 제목, 페이지 네비게이션 -->
      <nav>
        <h1>장바구니</h1>
        <p>
          HOME > <span>패션·의류·뷰티</span> > <strong>장바구니</strong>
        </p>
      </nav>
                    
      <form action="#">
        <!-- 장바구니 목록 -->
        <table>
          <thead>
            <tr>
              <th><input type="checkbox" name="all"></th>
              <th>상품명</th>
              <th>총수량</th>
              <th>판매가</th>
              <th>할인</th>
              <th>포인트</th>
              <th>배송비</th>
              <th>소계</th>
            </tr>
          </thead>
          <tbody>
            <tr class="empty">
              <td colspan="7">장바구니에 상품이 없습니다.</td>
            </tr>
            <tr>
              <td><input type="checkbox" name=""></td>
              <td>
                <article>
                  <a href="/K-market/product/"><img src="https://via.placeholder.com/80x80" alt=""></a>
                  <div>
                    <h2><a href="/K-market/product/">상품명</a></h2>
                    <p>상품설명</p>
                  </div>
                </article>
              </td>
              <td>1</td>
              <td>27,000</td>
              <td>5%</td>
              <td>270</td>
              <td>무료배송</td>
              <td>27,000</td>
            </tr>
            <tr>
              <td><input type="checkbox" name=""></td>
              <td>
                <article>
                  <a href="/K-market/product/"><img src="https://via.placeholder.com/80x80" alt=""></a>
                  <div>
                    <h2><a href="/K-market/product/">상품명</a></h2>
                    <p>상품설명</p>
                  </div>
                </article>
              </td>
              <td>1</td>
              <td>27,000</td>
              <td>5%</td>
              <td>270</td>
              <td>무료배송</td>
              <td>27,000</td>
            </tr>
            <tr>
              <td><input type="checkbox" name=""></td>
              <td>
                <article>
                  <a href="/K-market/product/"><img src="https://via.placeholder.com/80x80" alt=""></a>
                  <div>
                    <h2><a href="/K-market/product/">상품명</a></h2>
                    <p>상품설명</p>
                  </div>
                </article>
              </td>
              <td>1</td>
              <td>27,000</td>
              <td>5%</td>
              <td>270</td>
              <td>무료배송</td>
              <td>27,000</td>
            </tr>
            
          </tbody>
        </table>
        <input type="button" name="del" value="선택삭제">

        <!-- 장바구니 전체합계 -->
        <div class="total">
          <h2>전체합계</h2>
          <table border="0">
            <tr>
              <td>상품수</td>
              <td>1</td>
            </tr>
            <tr>
              <td>상품금액</td>
              <td>27,000</td>
            </tr>
            <tr>
              <td>할인금액</td>
              <td>-1,000</td>
            </tr>
            <tr>
              <td>배송비</td>
              <td>0</td>
            </tr>              
            <tr>
              <td>포인트</td>
              <td>260</td>
            </tr>
            <tr>
              <td>전체주문금액</td>
              <td>26,000</td>
            </tr>
          </table>
          <input type="submit" name="" value="주문하기">    
        </div>
      </form>
    </section>
    <!-- 장바구니 페이지 끝 -->
</main>
<%@ include file="../_footer.jsp" %>