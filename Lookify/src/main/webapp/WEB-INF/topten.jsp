<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
   	<div class="container">
		<div class="row">
			<div class="col-12 d-flex justify-content-between align-items-center mb-5">
				<h4>Top ten songs</h4>
				<a class="btn btn-primary" href="/dashboard">Dashboard</a>
			</div>
			<div class="col-6">
				<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">Rating</th>
				      <th scope="col">Title</th>
				      <th scope="col">Artist</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<c:forEach var="song" items="${topten}">
				  		<tr>
					      <td><c:out value="${song.rating}"/></td>
					      <td><c:out value="${song.title}"/></td>
					      <td><c:out value="${song.artist}"/></td>
					    </tr>
				  	</c:forEach>
				  </tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>