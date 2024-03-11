<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1> Clientes </h1>
	
	<form action="add" method="POST">
		
		 idCliente
		 <input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}">
		 <br/><br/>
		 nombre
		 <input type="text" id="nombre" name="nombre" value="${cliente.nombre}">
		 <br/><br/>
		 apellido
		 <input type="text" id="apellido" name="apellido" value="${cliente.apellido}">
		 <br/><br/>
		 cedula
		 <input type="number" id="cedula" name="cedula" value="${cliente.cedula}">
		 <br/><br/>
		 telefono
		 <input type="number" id="telefono" name="telefono" value="${cliente.telefono}">
		 <br/><br/>
		 correo
		 <input type="email" id="correo" name="correo" value="${cliente.correo}">
		 <br/><br/>
		 direccion
		 <input type="text" id="direccion" name="direccion" value="${cliente.direccion}">
		 <br/><br/>
		 genero
		 <input type="text" id="genero" name="genero" value="${cliente.genero}">
		 <br/><br/>
		 fechadenacimiento
		 <input type="date" id="fechadenacimiento" name="fechadenacimiento" value="${fn:substring(item.fechadenacimiento,0,10)}">
		 <br/><br/>	 
		 
		 	 		  		 		 
		 	 TipoUsuario
			 <select id="idtipoUs" name="idtipoUs">	 	
			 	<c:forEach var="item" items="${tipousuarios}" >
			 		<option value="${item.idtipoUs}">${item.tipodeUser}</option>	
			 	</c:forEach>	 		 		 		 
			 </select>
			 <br/><br/>
		 
		 <button type="submit">Guardar</button>	
		 <button type="button" onclick="window.location.href='/ismac-emprendimientos-web/clientes/findAll'; return false;">Cancelar</button>
	</form>

</body>
</html>