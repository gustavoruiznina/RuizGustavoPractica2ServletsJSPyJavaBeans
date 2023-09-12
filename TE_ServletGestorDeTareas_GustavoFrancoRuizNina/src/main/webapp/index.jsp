<%@page import="com.emergentes.modelo.Tarea"%>
<%@page import="java.util.ArrayList"%>
<%
	if(session.getAttribute("listaper")==null){
		ArrayList<Tarea>lisaux=new ArrayList<Tarea>();
		session.setAttribute("listaper",lisaux);
	}
	ArrayList<Tarea>lista=(ArrayList<Tarea>)session.getAttribute("listaper");
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gestor de Tareas</h1>
        <h3>NOMBRE: GUSTAVO FRANCO RUIZ NINA</h3>
        <h4>MATERIA: TECNOLOGIAS EMERGENTES II</h4>
        <a href="MainServlet?op=nuevo">Nuevo</a>
		<table border="1">
			<tr>
				<th>Id</th>
				<th>Tarea</th>
				<th>Completado</th>
				<th></th>
				<th></th>
			</tr>

<%
    if(lista!=null){
    for(Tarea item:lista){
%>

                        <tr>
				<td><%= item.getId() %></td>
				<td><%= item.getNtarea() %></td>
                                <td><input type="checkbox" name="completado" value="true"></td>
				<td>
					<a href="MainServlet?op=editar&id=<%= item.getId() %>">Editar</a>

				</td>
				<td>
					<a href="MainServlet?op=eliminar&id=<%= item.getId() %>" onclick="return(confirm('Esta seguro de eliminar??'))">Eliminar</a>
				</td>
			</tr>
			<%
					}

				}
			%>
		</table>
        
    </body>
</html>
