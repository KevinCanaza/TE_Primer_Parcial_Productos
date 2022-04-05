
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listapro");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilo.css">
    </head>
    <body>
        
        <div style="align-items: center">

            <h3>PRIMER PARCIAL TEM-742</h3>
            <h3>Nombre: Kevin Canaza Sanga</h3>
            <h3>Carnet: 9994841</h3>

        </div>
        <h1 style="text-align: center">Productos</h1>
        <table border="1" style="margin: 0 auto;">
            <caption style="text-align:left"><a href="MainController?op=nuevo">Nuevo producto</a></caption>
            <tr>
                <th>Id</th>
                <th>Descripción</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoría</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <%
                if(lista != null){
                    for(Producto item : lista){
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getDescripcion()%></td>
                <td><%= item.getCantidad()%></td>
                <td><%= item.getPrecio()%></td>
                <td><%= item.getCategoria()%></td>
                <td><a href="MainController?op=editar&id=<%= item.getId()%>">Editar</a> </td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId()%>"
                       onclick = ' return confirm("Estas seguro de eliminar el producto ?");'>Eliminar</a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </body>
</html>
