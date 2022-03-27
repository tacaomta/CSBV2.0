<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_user.aspx.cs" Inherits="CSB.Page_Master.Manage_user" %>
<asp:Content ID="Manage_User" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="section-header">
        <div class="col-12">
            <div class="section">
                <div class="section-header" style="margin-bottom:2%">
                    <h4 style="color:black; margin:0">QUẢN LÝ NGƯỜI DÙNG</h4>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color:#01b5f9">Trang chủ</a></div>
                        <div class="breadcrumb-item active"><a href="#" style="color:#01b5f9">Quản lý người dùng</a></div>
                    </div>
                </div>
                <div class="section-header">
                <div class="col-12">
                    <table ID="tableuser" class="table table-bordered table-striped table-md" style="width:100%">
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
                                    <a href="#"> <i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
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
    <div id="loader" class="lds-dual-ring overlay"></div>
    </form>
</asp:Content>

