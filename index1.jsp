<%-- 
    Document   : index
    Created on : Sep 20, 2018, 4:28:26 PM
    Author     : RIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>    <%-- start web service invocation --%><hr/>
    <%
    try {
	mypack.FactorialService service = new mypack.FactorialService();
	mypack.Factorial port = service.getFactorialPort();
	 // TODO initialize WS operation arguments here
	int a = 7;
	// TODO process result here
	java.lang.String result = port.factor(a);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

    </body>
</html>
