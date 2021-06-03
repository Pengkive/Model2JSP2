<%@page import="com.admin.goods.db.GoodsDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

  <h1>WebContent/goods/goods_list.jsp</h1>
  
  <%
    // request.setAttribute("goodsList", gdao.getGoodsList());
    List goodsList = (List) request.getAttribute("goodsList");
  %>
  
  
  <table border="1">
    <tr>
      <td>전체</td>
      <td>베스트상품</td>
      <td>외투</td>
      <td>정장/신사복</td>
      <td>티셔츠</td>
      <td>와이셔츠</td>
      <td>바지</td>
      <td>신발</td>
    </tr>
    
    <tr>
      <% for(int i=0;i<goodsList.size();i++){
    	  GoodsDTO dto = (GoodsDTO) goodsList.get(i);
    	  %>
       <td>
	           <img src="./upload/<%=dto.getImage().split(",")[0]%>"
	              width="120" height="120"
	           ><br>
	           <%=dto.getName() %><br>
	           <%=dto.getPrice() %>원  <br>
       </td>
      <%} %>   
    
    </tr>
  
  </table>
  
  
  
  

</body>
</html>