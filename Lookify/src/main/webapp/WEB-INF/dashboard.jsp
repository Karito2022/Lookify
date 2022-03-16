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
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
   	<div class="container">
		<div class="row">
			<div class="col-12 d-flex justify-content-between align-items-center mb-5">
				<div>
					<a href="/songs/new" class="btn btn-primary">Add new</a>
					<a href="/search/topTen" class="btn btn-primary">Top Songs</a>
				</div>
				<form action="/songs/searchbytitle" method="POST" class="d-flex align-items-center">
					<div>
						<input type="text" class="form-control" name="artist">
					</div>
					<button type="submit" class="btn btn-primary">Search artist</button>
				</form>
				<a class="btn btn-primary" href="/dashboard">Dashboard</a>
			</div>
			<div class="col-6">
				<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">Title</th>
				      <th scope="col">Rating</th>
				      <th scope="col">Actions</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<c:forEach var="song" items="${songs}">
				  		<tr>
					      <td><a href="/songs/${song.id}"><c:out value="${song.title}"/></a></td>
					      <td><c:out value="${song.rating}"/></td>
					      <td>
					      	<form action="/songs/delete" method="POST">
					      		<input type="hidden" name="id" value="${song.id}"/>
					      		<button class="btn btn-primary" type="submit">Delete</button>
					      	</form>
					      </td>
					    </tr>
				  	</c:forEach>
				  </tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>