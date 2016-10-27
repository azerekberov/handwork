<%-- 
    Document   : register
    Created on : Oct 26, 2016, 2:39:00 PM
    Author     : Mobby
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<div id="signupbox" style="display:none; margin-top:15%" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <div class="panel-title">Sign Up</div>
            <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" style="color: white;font-weight: bold;" onclick="$('#signupbox').hide();
                    $('#loginbox').show()">Sign In</a></div>
        </div>  


        <div  class="panel-body" >
            <form:form id="signupform" class="form-horizontal"  method="post" modelAttribute="userReg" action="${registerUrl}">

                <div id="signupalert" style="display:none" class="alert alert-danger">
                    <p>Error:</p>
                    <span></span>
                </div>

                <spring:bind path="email">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <label for="email" class="col-md-3 control-label">Email</label>
                        <div class="col-md-9">
                            <form:input path="email" type="text"  class="form-control "  placeholder="Email Address" />
                            <form:errors path="email" class="control-label" />
                        </div>
                    </div>
                </spring:bind>



                <spring:bind path="firstName">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <label for="firstName" class="col-md-3 control-label">FirstName</label>
                        <div class="col-md-9">
                            <form:input path="firstName" type="text"  class="form-control "  placeholder="FirstName" />
                            <form:errors path="firstName" class="control-label" />
                        </div>
                    </div>
                </spring:bind>

                <spring:bind path="lastName">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <label for="lastName" class="col-md-3 control-label">LastName</label>
                        <div class="col-md-9">
                            <form:input path="lastName" type="text"  class="form-control "  placeholder="LastName" />
                            <form:errors path="lastName" class="control-label" />
                        </div>
                    </div>
                </spring:bind>

                <spring:bind path="passwd">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <label for="passwd" class="col-md-3 control-label">Password</label>
                        <div class="col-md-9">
                            <form:input path="passwd" type="password"  class="form-control "  placeholder="Password" />
                            <form:errors path="passwd" class="control-label" />
                        </div>
                    </div>
                </spring:bind>

                <spring:bind path="repasswd">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <label for="repasswd" class="col-md-3 control-label">Re Password</label>
                        <div class="col-md-9">
                            <form:input path="repasswd" type="password"  class="form-control "  placeholder="Re Password" />
                            <form:errors path="repasswd" class="control-label" />
                        </div>
                    </div>
                </spring:bind>

                <spring:bind path="phoneno">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <label for="phoneno" class="col-md-3 control-label">Mobile</label>
                        <div class="col-md-9">
                            <form:input path="phoneno" type="text"  class="form-control "  placeholder="Mobile" />
                            <form:errors path="phoneno" class="control-label" />
                        </div>
                    </div>
                </spring:bind>


                <div class="form-group">
                    <!-- Button -->                                        
                    <div class="col-md-offset-3 col-md-9">
                        <button id="btn-signup" type="submit" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp Sign Up</button>
                        <span style="margin-left:8px;">or</span>  
                    </div>
                </div>

                <div style="border-top: 1px solid #999; padding-top:20px"  class="form-group">

                    <div class="col-md-offset-3 col-md-9">
                        <!--<button id="btn-fbsignup" type="button"  class="btn btn-primary"><i class="icon-facebook"></i>   Sign Up with Facebook</button>-->
                        <a id="btn-fblogin" href="<c:url value="/facebook/signin"/>" class="btn btn-primary">
                           Sign Up  with Facebook
                    </a>
                </div>    
            </div>
        </form:form>
    </div>
</div>
</div>
