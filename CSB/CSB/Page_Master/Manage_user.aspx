<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_user.aspx.cs" Inherits="CSB.Page_Master.Manage_user" %>

<asp:Content ID="Manage_User" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../css/manager_user.css" rel="stylesheet" />
    <div id="form1">
        <div class="section-header">
            <div class="col-12">
                <div class="section">
                    <div class="section-header" style="margin-bottom: 2%">
                        <h4 style="color: black; margin: 0">QUẢN LÝ NGƯỜI DÙNG</h4>
                        <div class="section-header-breadcrumb">
                            <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ</a></div>
                            <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Quản lý người dùng</a></div>
                        </div>
                    </div>
                    <div class="section-header">
                        <div class="col-12">
                            <table id="tableuser" class="table table-bordered table-striped table-md" style="width: 100%">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Họ tên</th>
                                        <th>Tên DN</th>
                                        <th>Mật khẩu</th>
                                        <th>Quyền</th>
                                        <th>Cập nhật gần đây</th>
                                        <th>Khóa</th>
                                        <th>Tác vụ</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>
                                            <a href="#"><i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                            <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                        </td>
                                    </tr>

                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--Xóa--%>
        <%--<div id="loader" class="lds-dual-ring overlay"></div>--%>
    </div>
    <div class="modal fade" id="model-add-user" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold" id="largeModalLabel">Thêm người dùng mới</h6>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix " style="border: 3px solid #36aee5">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Tên đầy đủ     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="TenDayDu_adduser" name="TenDayDu" placeholder="Nhập tên đầy đủ" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Tên đăng nhập     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="TenND_adduser" name="TenND" placeholder="Nhập tên người dùng" required value="">
                                    </div>
                                </div>
                            </div>

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Mật khẩu     : </strong></label>
                                    <div class="col-7">
                                        <input type="password" class="form-control" id="MatKhau_adduser" name="MatKhau" placeholder="Nhập mật khẩu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Xác nhận mật khẩu     : </strong></label>
                                    <div class="col-7">
                                        <input type="password" class="form-control" id="XacNhanMatKhau_adduser" name="XacNhanMatKhau" placeholder="Xác nhận mật khẩu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Quyền     : </strong></label>
                                    <div class="col-7">
                                        <select class="form-control" id="Quyen_adduser">
                                            <option value="AD">Admin</option>
                                            <option selected value="US">User</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <p id="Error_Adduser" class="textER">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_User()" type="submit" class="btn btn-info">Cập nhật</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-edit-user" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold">Sửa thông tin người dùng</h6>
                    </div>
                    <div class="modal-body">
                        <div class="row clearfix " style="border: 3px solid #01b5f9">
                            <input hidden id="edID" value="">
                            <input hidden id="edCreated" value="">
                            <div style="width: 100%; float: left; padding-top: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Tên đầy đủ     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="edFullName" placeholder="Nhập tên người dùng" value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding-top: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Tên đăng nhập     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="edUserName" placeholder="" value="" disabled>
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding-top: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Đổi mật khẩu     : </strong></label>
                                    <div class="col-7">
                                        <input type="checkbox" id="changepass" name="changepass" value="" onchange="ChangePass(this)" />
                                        Đổi mật khẩu
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding-top: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Mật khẩu mới     : </strong></label>
                                    <div class="col-7">
                                        <input type="password" class="form-control" id="edPasswordNew" placeholder="" value="" disabled>
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding-top: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Xác nhận mật khẩu     : </strong></label>
                                    <div class="col-7">
                                        <input type="password" class="form-control" id="edPasswordNew2" placeholder="" value="" disabled>
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding-top: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Quyền     : </strong></label>
                                    <div class="col-7">
                                        <select class="form-control" id="edRole">
                                            <option selected value="AD">Admin</option>
                                            <option value="US">User</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding-top: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Khóa tài khoản     : </strong></label>
                                    <div class="col-7">
                                        <div class="radio" style="display: flex; padding-top: 10px;">
                                            <label class="col-md-6">
                                                <input type="radio" name="edLOCK" value="true" checked>
                                                Khóa
                                            </label>
                                            <label class="col-md-6">
                                                <input type="radio" name="edLOCK" value="false" />
                                                Bỏ khóa
                                            </label>

                                        </div>
                                    </div>
                                </div>
                                <p id="Error_Edituser" class="textER" style="color: red; font-weight: bold; margin-bottom: 0px; margin-top: 15px;">Nhập mật khẩu không chính xác</p>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-info" onclick="updateUser()">Lưu thay đổi</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

