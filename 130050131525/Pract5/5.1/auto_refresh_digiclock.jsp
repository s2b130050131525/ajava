<%@ page import="java.io.*,java.util.*" %>
<html>
<head>
<title>Auto Refresh Header Example</title>
</head>
<body>
<center>
<h2>Digital Clock</h2>
<%
    //converting double to int value
    //milliseconds to seconds
    double doub = 0.001;
    int Int = (int) doub;
   // Set refresh, autoload time as 1 seconds
   response.setIntHeader("Refresh",Int);
   // Get current time
   Calendar calendar = new GregorianCalendar();
   String am_pm;
   int hour = calendar.get(Calendar.HOUR);
   int minute = calendar.get(Calendar.MINUTE);
   int second = calendar.get(Calendar.SECOND);
   int miliseconds = calendar.get(Calendar.MILLISECOND);
   if(calendar.get(Calendar.AM_PM) == 0)
      am_pm = "AM";
   else
      am_pm = "PM";
   String CT = hour+":"+ minute +":"+ second +":"+miliseconds+" "+ am_pm;
   out.println("Current Time: " + CT + "\n");
%>
</center>
</body>
</html>