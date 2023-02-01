# JspBean-GettingStudentData

JspBean- Geting the data from the form using the JSP and setting it to the bean class and the displayig.
1. Create a class named Student with attributes id, name, age, address and get the setters and getters.
2. Create a registration form with the above files  and map it it index.jsp
3. Create a index.jsp and using the <jsp:useBean/> tags set the propery using request.getParameter and then get the property to display it.
4. If the Registration form field names and Student filed names are same then in that case with single line we can set all the properties.
<jsp:useBean property="*" name="student" /> 
5. No need to mention the value, It will directly bind itself.
