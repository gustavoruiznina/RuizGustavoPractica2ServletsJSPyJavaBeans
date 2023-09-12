<%@page import="com.emergentes.modelo.Tarea"%>
<%
 Tarea reg=(Tarea) request.getAttribute("miobjper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Registro de Tarea</h1>
        
        <form action="MainServlet" method="post">
		<table>
			<tr>
				<td>ID</td>
				<td><input type="text" name="id" value="<%=reg.getId()%>" size="2" readonly></td>
			</tr>
			<tr>
				<td>Tarea</td>
				<td><input type="text" name="nombres" value="<%=reg.getNtarea()%>"></td>
			</tr>
                        
                        <tr>
                            
                            </tr>
			<tr>
				<td></td>
				<td><input type="submit" name="completado" value="ENVIAR"></td>
			</tr>
		</table>
    </body>
</html>
