<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create new Song</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
   	<div class="container">
		<div class="row">
			<div class="col-12 d-flex justify-content-between align-items-center mb-5">
				<h1>Create a new Song</h1>
				<a class="btn btn-primary" href="/dashboard">Dashboard</a>
			</div>
			<div class="col-6">
				<form action="/songs/create" method="POST">
					<div class="form-group row mb-3">
						<label class="col-sm-4 col-form-label">Title</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="title">
						</div>
					</div>
					<div class="form-group row mb-3">
						<label class="col-sm-4 col-form-label">Artist</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="artist">
						</div>
					</div>
					<div class="form-group row mb-3">
						<label class="col-sm-4 col-form-label">Rating(1-10)</label>
						<div class="col-sm-8">
							<select name="rating" class="form-control">
						        <option value="1">1</option>
						        <option value="2">2</option>
						        <option value="3">3</option>
						        <option value="4">4</option>
						        <option value="5">5</option>
						        <option value="6">6</option>
						        <option value="7">7</option>
						        <option value="8">8</option>
						        <option value="9">9</option>
						    </select>
						</div>
					</div>
					<button type="submit" class="btn btn-primary">Add Song</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>