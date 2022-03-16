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
				<div>
					<h4>Song by artist: ${name}</h4>
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
				      <th scope="col">Artist</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<c:forEach var="song" items="${artistObject}">
				  		<tr>
					      <td><c:out value="${song.title}"/></td>
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