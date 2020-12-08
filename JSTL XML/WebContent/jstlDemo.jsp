<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>
	<c:import url="/users.xml" var="XMLFile"></c:import>
	<x:parse xml="${XMLFile}" var="XMLDoc"> </x:parse>
	<table border="1">
	<x:forEach select="$XMLDoc/users/user">
	<tr>
	<x:choose>
			<x:when select="gender='female'">
		
	 	<td><x:out select="name"/></td>
		<td><x:out select="gender"/></td>
		<td><x:out select="age"/> </td>
		
		</x:when>
		<x:otherwise>
		<td><i><b><x:out select="name"/></b></i></td>
		<td><i><b><x:out select="gender"/></b></i></td>
		<td><i><b><x:out select="age"/></b></i> </td>
		</x:otherwise>
	</x:choose>
	</tr>
	</x:forEach>
	</table>
</body>
</html>