<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <!--<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/img/favicon.png">-->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
            Login Page
        </title>
        <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
        <!--     Fonts and icons     -->
        <link href="${pageContext.request.contextPath}/assets/css/material-icons.css" rel="stylesheet" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css">
        <!-- CSS Files -->
        <link href="${pageContext.request.contextPath}/assets/css/material-kit.css?v=2.0.7" rel="stylesheet" />
        <!-- CSS Just for demo purpose, don't include it in your project -->
        <link href="${pageContext.request.contextPath}/assets/demo/demo.css" rel="stylesheet" />
    </head>
    <body class="login-page sidebar-collapse" onload='document.loginForm.username.focus();'>
        <div class="page-header header-filter" style="background-image: url('../assets/img/login_bg_5.jpg'); background-size: cover; background-position: top center;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 ml-auto mr-auto">
                        <div class="card card-login">
                            <form class="form" name='loginForm' action="<c:url value='/security_check' />" method='POST'>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                <div class="footer">
                                    <div class="card-body">
    
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">
                                                    <i class="material-icons" style="color: #ccc;">mail</i>
                                                </span>
                                            </div>
                                            <input type="text" class="form-control" placeholder="E-mail..." name="username">
                                        </div>

                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">
                                                    <i class="material-icons" style="color: #ccc;">lock_outline</i>
                                                </span>
                                            </div>
                                            <input type="password" class="form-control" placeholder="Password..." name="password">
                                        </div>

                                    </div>

                                    <div class="text-center">
                                        <a href="javascript:;" class="btn btn-info btn-sm btn-wd btn-lg" onclick="document.loginForm.submit();">Войти</a>
                                    </div>
                                    <div class="text-center mt-2 mb-2">
                                      <a href="${pageContext.request.contextPath}/assets/demo_app.apk" class="btn btn-sm btn-link btn-wd btn-lg">
                                        скачать приложение
                                      </a>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer">

            </footer>
        </div>
        <!--   Core JS Files   -->
        <script src="<c:url value='/assets/js/core/jquery.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/assets/js/core/popper.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/assets/js/core/bootstrap-material-design.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/assets/js/plugins/moment.min.js'/>"></script>
        <!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
        <script src="<c:url value='/assets/js/material-kit.js?v=2.0.7'/>" type="text/javascript"></script>
    </body>
</html>