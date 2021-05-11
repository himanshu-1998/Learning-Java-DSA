<%@ page import='java.sql.*' language="java" contentType="text/html;
charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Insert title here</title>
  </head>
  <body>
    <% RequestDispatcher rd = request.getRequestDispatcher("page.jsp");
    rd.include(request,response); %>
    <table border="1">
      <tr>
        <th>Roll</th>
        >
        <th>Name</th>
        <th>course</th>
        >
      </tr>
      > <% String roll=request.getParameter("troll"); try{ int
      roll1=Integer.parseInt(roll); Class.forName("com.mysql.jdbc.Driver");
      Connection
      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/himanshu","root","pass");
      PreparedStatement ps=con.prepareStatement("select id,name,class from res
      where id=?"); ps.setInt(1,roll1); ResultSet rs=ps.executeQuery();
      while(rs.next()) {%>

      <tr>
        <td><%=rs.getInt(1) %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
      </tr>

      <% } } catch(SQLException e) { System.out.println(e+" jsp with db"); }
      catch(NumberFormatException e){ out.println("<font color="red"
        >Please enter a valid roll: </font
      >"); } %>
    </table>
  </body>
</html>
