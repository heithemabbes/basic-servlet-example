<%--
  Created by IntelliJ IDEA.
  User: Heithem
  Date: 2/8/22
  Time: 11:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<HTML>
<BODY>
<%
    if (request.getParameter("nom")==null
        && request.getParameter("email")== null) {
%>
<H2>Information utilisateur</H2>

<FORM method="GET" action="/exemple2/web/process.jsp">
        <P>Votre nom: <input type="text" name="nom" size=26>
        <P>Votre email: <input type="text" name="email" size=26>
        <P><input type="submit" value="Envoyer">
</FORM>

<%
    } else { %>
    <%! String nom, email; %>
    <%  nom = request.getParameter("nom");
        email = request.getParameter("email");
    %><P><B>Vous avez fourni les informations suivantes:</B>
    <P><B>Name</B>:
    <%= nom %><P><B>Email</B>: <%= email %>
            <% } %>
</BODY>
</HTML>

