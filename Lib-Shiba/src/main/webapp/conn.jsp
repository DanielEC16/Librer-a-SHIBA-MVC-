<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista de Clientes</title>
</head>
<body>
    <h1>Lista de Clientes</h1>

    <%
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        String url = "jdbc:mysql://localhost:3306/shiba_lib";
        String user = "root";
        String pass = "";

        try {
            // Cargar el driver de MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establecer conexión a la base de datos
            con = DriverManager.getConnection(url, user, pass);

            // Crear la consulta
            stmt = con.createStatement();
            String sql = "SELECT * FROM clientes"; // Cambia "clientes" por el nombre de tu tabla
            rs = stmt.executeQuery(sql);

            // Comenzar la tabla
            out.println("<table border='1'>");
            out.println("<tr><th>ID</th><th>Nombre</th><th>Apellido</th></tr>");

            // Mostrar los resultados
            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getInt("id") + "</td>");
                out.println("<td>" + rs.getString("nombre") + "</td>");
                out.println("<td>" + rs.getString("apellido") + "</td>");
                out.println("</tr>");
            }

            // Cerrar la tabla
            out.println("</table>");

        } catch (ClassNotFoundException e) {
            out.println("Error al cargar el driver: " + e.getMessage());
        } catch (SQLException e) {
            out.println("Error en la conexión: " + e.getMessage());
        } finally {
            // Cerrar recursos
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                out.println("Error al cerrar recursos: " + e.getMessage());
            }
        }
    %>
</body>
</html>
