<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.DAO.BookDAOImpl"%>
<%@ page import="com.entity.BookDtls"%>
<%@ page import="java.util.List"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
	
	

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Recent Book</title>
<%@include file="all_component/allCss.jsp"%>

<style type="text/css">


.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>

</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-3">
			
			
			<%
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list = dao.getAlloldBook();
				for (BookDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="cord crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 250px; height: 350px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>

						<p>
							Categories:<%=b.getBookCategory()%></p>

						<div class="row">
							<a href="" class="btn btn-danger btn-sm mL-2">Add Cart</a> <a
								href="" class="btn btn-success btn-sm mL-1">View Details</a> <a
								href="" class="btn btn-danger btn-sm mL-1"><%=b.getPrice()%>
								<i class="fas fa-rupee-sign"></i></a>
						</div>

					</div>
				</div>
			</div>
			<%
				}
			%>

			
			
		
		</div>
	</div>
</body>
</html>