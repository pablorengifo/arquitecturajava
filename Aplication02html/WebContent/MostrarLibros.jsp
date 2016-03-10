<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Libros</title>
</head>
<body>
<%
	Connection conexion=null;
	Statement sentencia=null;
	ResultSet rs=null;
	try {
			Class.forName("com.mysql.jdbc.Driver");
			//1 crea un objeto conexion y objeto sentencia
			conexion =
			DriverManager.getConnection("jdbc:mysql://localhost:3223/arquitecturajava","root","root");
			sentencia= conexion.createStatement();
			//2 crea una consulta sql de seleccion para todos los libros de la tabla
			String consultaSQL= "select isbn,titulo,categoria from Libros";
			//3 y 4 Ejecuta sentencia sql y devuelve un result set con todos los registros
			rs=sentencia.executeQuery(consultaSQL);
			//5 Recorre el resultset y lo imprime en html
			while(rs.next()) { %>
			<%=rs.getString("isbn")%>
			<%=rs.getString("titulo")%>
			<%=rs.getString("categoria")%>
			<br/>
	<% }
	}catch (ClassNotFoundException e) {
			System.out.println("Error en la carga del driver" + e.getMessage());
	}catch (SQLException e) {
			System.out.println("Error accediendo a la base de datos"
			+ e.getMessage());
	}
	finally {
			//6 cierra los recursos (conexion, sentencia, etc)
			if (rs != null) {
				try {rs.close();} catch (SQLException e)
					{System.out.println("Error cerrando el resultset" + e.getMessage());}
			}
			if (sentencia != null) {
				try {sentencia.close();} catch (SQLException e)
					{System.out.println("Error cerrando la sentencia" + e.getMessage());}
			}
			if (conexion != null) {
				try {conexion.close();} catch (SQLException e)
					{System.out.println("Error cerrando la conexion" + e.getMessage());}
			}
	}
%>
<a href="FormularioInsertarLibro.jsp">Insertar Libro</a>
</body></html>