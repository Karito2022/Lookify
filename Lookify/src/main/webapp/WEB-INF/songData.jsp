<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Song data</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
   	<div class="container">
		<div class="row">
			<div class="col-12 d-flex justify-content-between align-items-center mb-5">
				<h1>Song data:</h1>
				<a class="btn btn-primary" href="/dashboard">Dashboard</a>
			</div>
			<div class="col-6">
				<div class="row mb-3">
					<label class="col-sm-4">Title</label>
					<div class="col-sm-8">
						<c:out value="${song.title}"></c:out>
					</div>
				</div>
				<div class="row mb-3">
					<label class="col-sm-4">Artist</label>
					<div class="col-sm-8">
						<c:out value="${song.artist}"></c:out>
					</div>
				</div>
				<div class="row mb-3">
					<label class="col-sm-4">Rating</label>
					<div class="col-sm-8">
						<c:out value="${song.rating}"></c:out>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>