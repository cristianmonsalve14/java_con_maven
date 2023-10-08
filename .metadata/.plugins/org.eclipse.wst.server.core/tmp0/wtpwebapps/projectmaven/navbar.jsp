<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page session="true" %>
<nav class="navbar navbar-expand-lg bg-dark" data-bs-theme="dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="ServletIndex">Mi Aplicacion</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" 
		aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="ServletContacto">Contacto</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="ServletRegisterStudent">Register Student</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Dropdown</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="ServletContacto">Contacto</a></li>
						<li><a class="dropdown-item" href="ServletRegisterStudent">Register Student</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">Something else here</a></li>
					</ul>
				</li>
				<li class="nav-item"><a class="nav-link disabled">Disabled</a>
				</li>
			</ul>
			<c:if test="${not empty sessionScope.usuario}">
				<p class="text-white-50 mx-3 my-2">Bienvenido <span class="fw-bold text-capitalize">${sessionScope.usuario}</span></p>
				<form class="form-inline" action="ServletLogout" method="post">
					<button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Cerrar Sesion</button>
				</form>
			</c:if>
		</div>
		
	</div>
</nav>