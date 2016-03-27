<%@page language="java" import="java.util.*"  %>
<html>
    <body>
        130050131525
        <h1>Displaying current date and time in following two ways:</h1>
        
        <table border="10">
            <tr>
                <td>
                    <h3>using java code </h3>
                </td>
                <td>
                    <h3><% Date d = new Date();
                        out.println(d);
                        %></h3>
                </td>

            </tr>
            <tr>
                <td>
                    <h3>using jsp expression </h3>
                </td>
                <td>
                    <h3><%=d%></h3>    
                <td>
            </tr>
        </table>

    </body>
</html>