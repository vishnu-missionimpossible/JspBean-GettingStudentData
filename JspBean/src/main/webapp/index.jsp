<%!
Integer id;
String name;
String address;
Integer age;
%>

<%
id=Integer.parseInt(request.getParameter("id"));
name=request.getParameter("name");
address=request.getParameter("address");
age=Integer.parseInt(request.getParameter("age"));
%>


    <jsp:useBean id="student" class="in.ineuron.bean.Student" scope="page">
   	  <jsp:setProperty property="id" name="student" value='<%= id%>'/>
      <jsp:setProperty property="name" name="student" value='<%= name%>'/>
      <jsp:setProperty property="address" name="student" value='<%= address%>'/>
      <jsp:setProperty property="age" name="student" value='<%= age%>'/>
    </jsp:useBean>
    
    <%--Above code can be written is single line 
        if we have the same name in the form and Student class 
        and you no need to set the value. It will bind directly
      
        
        <jsp:setProperty property="*" name="student" />
     --%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>STUDENT DETAILS</h1>

	
    <table border="2">
      <tr>
         <th>ID</th>
         <td>
        	 <jsp:getProperty property="id" name="student"/>
         </td>
      </tr>
      
        <tr>
         <th>NAME</th>
         <td>
        	 <jsp:getProperty property="name" name="student"/>
         </td>
      </tr>
      
        <tr>
         <th>ADDRESS</th>
         <td>
        	 <jsp:getProperty property="address" name="student"/>
         </td>
      </tr>
      
        <tr>
         <th>AGE</th>
         <td>
        	 <jsp:getProperty property="age" name="student"/>
         </td>
      </tr>
    </table>
    </center>
</body>
</html>