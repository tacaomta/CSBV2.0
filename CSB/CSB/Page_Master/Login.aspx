﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CSB.Page_Master.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="~/Content/bootstrap.min.css" />
    <link href="../css/login.css" rel="stylesheet" />

</head>
<body>

    <div id="form1">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-md-4 login-box col-md-offset-4">
                        <div class="col-lg-12 login-key">
                            <img class="ship-key" src="../Image/ic-login.png" />
                        </div>
                        <div class="col-lg-12 login-title">
                            ĐĂNG NHẬP
                        </div>

                        <div class="col-lg-12 login-form">
                            <div class="col-lg-12 login-form">
                                <div class="form-group">
                                    <i class="glyphicon glyphicon-lock icon-name"></i>
                                    <input type="text" class="form-control" name="tentaikhoan" placeholder="Tài khoản" />
                                </div>
                                <div class="form-group">
                                    <i class="glyphicon glyphicon-user icon-name"></i>
                                    <input type="password" pattern=".{6,}" title="Mật khẩu tối thiểu 6 kí tự" class="form-control" name="matkhau" placeholder="Mật khẩu" />
                                </div>

                                <div class="col-md-12 loginbttm">
                                    <div class="col-md-12 login-btm login-text">
                                        <p>Mật khẩu không chính xác</p>
                                    </div>
                                    <div class="col-md-12 login-btm login-button">
                                        <button type="submit" class="btn btn-outline-primary">Đăng nhập</button>
                                    </div>
                                    <div class="col-md-12 login-button forgot-password">
                                        <a>Quên mật khẩu?</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-2"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="loader" class="lds-dual-ring overlay"></div>

    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/js/Login.js"></script>
</body>
</html>


