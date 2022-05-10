﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Change_Password.aspx.cs" Inherits="CSB.Page_Master.Change_Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentAdmin" runat="server">
     <div id="form1">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-md-4 login-box col-md-offset-4 offset-md-4">
                        <div class="col-lg-12 login-key">
                            <img class="ship-key" src="../Image/ic-login.png" />
                        </div>
                        <div class="col-lg-12 login-title">
                            ĐỔI MẬT KHẨU
                        </div>

                        <div class="col-lg-12 login-form">
                            <div class="col-lg-12 login-form">
                                <div class="form-group">
                                    <i class="material-icons icon-name">lock</i >
                                    <input type="password" pattern=".{6,}" title="Mật khẩu tối thiểu 6 kí tự" class="form-control" id="password_old" placeholder="Mật khẩu cũ" />
                                </div>
                               <div class="form-group">
                                    <i class="material-icons icon-name">lock</i >
                                    <input type="password" pattern=".{6,}" title="Mật khẩu tối thiểu 6 kí tự" class="form-control" id="password_new" placeholder="Mật khẩu mới" />
                                </div>
                                <div class="form-group">
                                    <i class="material-icons icon-name">lock</i >
                                    <input type="password" pattern=".{6,}" title="Mật khẩu tối thiểu 6 kí tự" class="form-control" id="password_confirm" placeholder="Xác nhận mật khẩu" />
                                </div>
                                <div class="col-md-12 loginbttm">
                                    <div class="col-md-12 login-btm login-text">
                                        <p hidden="hidden" id="error-login-text">Đổi mật khẩu không thành công!</p>
                                    </div>
                                    <div class="col-md-12 login-btm login-button">
                                        <button class="btn btn-outline-primary" onclick="Save_Change()">Lưu thay đổi</button>
                                    </div>
                                    <div class="col-md-12 login-btm forgot-password">
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
    <script>
        $(document).ready(function () {
            
        });
        function Save_Change() {
            $('#error-login-text').attr('hidden', '');
            if ($('#password_old').val() == '') {
                $('#error-login-text').text('Chưa nhập mật khẩu cũ');
                $('#error-login-text').removeAttr('hidden');
                return;
            }
            else if ($('#password_new').val() == '') {
                $('#error-login-text').text('Chưa nhập mật khẩu mới');
                $('#error-login-text').removeAttr('hidden');
                return;
            }
            else if ($('#password_confirm').val() == '') {
                $('#error-login-text').text('Chưa nhập mật khẩu xác nhận');
                $('#error-login-text').removeAttr('hidden');
                return;
            }
            // chờ thầy làm bên api
        }
    </script>
</asp:Content>
