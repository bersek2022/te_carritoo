

<%@page import="java.util.ArrayList"%>
<%
    
    if (session.getAttribute("lista") == null){
        ArrayList<String> lis = new ArrayList<String>();
        
        session.setAttribute("lista" , lis ); 
    }
    
ArrayList<String> lista = (ArrayList<String>)session.getAttribute("lista");
    %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Carrito de Compras</h1>
        <p>Inserte los Productos que desea</p>
        <form action="ProcesaServlet" method="post">
            producto: <input type="test" name="producto">
            <input type="submit" value="Enviar">
        </form>
        <br>
        <a href="ProcesaServlet">Vaciar Carrito</a>
        <h3>Contenido del Carrito</h3>
        <ul>
            
            <% 
            if ( lista != null){
                for(String item : lista){
               
                
               out.print("<li>" +item+ "</li>"); 
               
                 }
                }
            
            
             %>
        </ul>
    </body>
</html>
