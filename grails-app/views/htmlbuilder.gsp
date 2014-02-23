<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.loonghymn.grails.samples.Book" %>

<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Sample title</title>
    </head>
    <body>

        <%
def book= new Book();
book.title="grails in action";
book.author="unknown";
book.publishDate=new Date();
book.save();
        %>
        <g:set var="book" value="${Book.get(1)}"/>



    <uix:portlet title="custom portlet" collapse="true" reload="true" remove="true" config="true">
        <uix:emoticon happy="true">John </uix:emoticon>
    </uix:portlet>

    <uix:portlet collapse="true" reload="true" remove="true" config="true">
        <div>
            <input>
        </div>
    </uix:portlet>

<!-- BEGIN PORTLET-->   
    <div class="portlet box blue">
        <div class="portlet-title">
            <div class="caption"><i class="icon-reorder"></i>Date Pickers</div>
            <div class="tools">
                <a href="javascript:;" class="collapse"></a>
                <a href="#portlet-config" data-toggle="modal" class="config"></a>
                <a href="javascript:;" class="reload"></a>
                <a href="javascript:;" class="remove"></a>
            </div>
        </div>
        <div class="portlet-body form">
<!-- BEGIN FORM-->
            <form action="#" class="form-horizontal form-bordered form-row-stripped">
                <f:all bean="book"/>
            </form>

            <form action="#" class="form-horizontal form-bordered form-row-stripped">
                <f:field bean="book" property="publishDate" input-optionValue="name" hint="This is help message" placeholder="input a date"/>
            </form>
           <!-- END FORM-->  

        </div>
    </div>
    <!-- END PORTLET-->
</body>
</html>
