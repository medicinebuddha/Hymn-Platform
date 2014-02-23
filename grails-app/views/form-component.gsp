<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Sample title</title>
    </head>
    <body>
    <uix:portlet  title ="custom portlet">
        <form action="#" class="form-horizontal form-bordered form-row-stripped">           
            <uix:dateField id="date1" label='Date Field' placeholder="input a date" hint="Hello" value="12/04/2012"/> 
            <uix:dateTimeField id="datetime1" label='DateTime Field' placeholder="input a datetime" hint="Hello" value="27 December 2012 - 18:30"/>
            <uix:timeField id="time1" label='Time Field' placeholder="input a Time" hint="Hello" value="23:45:45"/> 
        </form>
    </uix:portlet>



</body>
</html>
