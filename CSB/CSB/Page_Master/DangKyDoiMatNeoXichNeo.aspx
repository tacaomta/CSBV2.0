<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="DangKyDoiMatNeoXichNeo.aspx.cs" Inherits="CSB.Page_Master.DangKyDoiMatNeoXichNeo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #table_DangKyDoiMatXichNeo_wrapper {
            overflow-x: hidden;
        }
    </style>
    <div id="form1">
        <div class="section" style="background-color: #fff; padding-bottom: 5px;">
            <div class="section-header" style="background-color: #fff;">
                <h4 id="title_dangkydoimatxichneo" style="color: black; margin: 0; margin-left: 15px;">Đăng ký thay đổi, mất, bổ sung</h4>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ </a></div>
                    <div class="breadcrumb-item active"><a href="Manage_Tau?vung=1" style="color: #01b5f9">Quản lý tàu</a></div>
                    <div class="breadcrumb-item active"><a href="#" onclick="HoSoTau()" style="color: #01b5f9">Hồ sơ tàu</a></div>
                    <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Tính năng các thiết bị trên tàu</a></div>
                </div>
            </div>
            <div class="section-content">
                <div class="section">
                    <div class="col-md-12">
                        <div class="btn-group">
                            <button onclick="btn_loadDataList_DangKyDoiMatXichNeo()" class="btn btn-secondary mb-2"><i class="bi-arrow-clockwise"></i>&nbsp;Load dữ liệu</button>
                            <button id="btn_add_DangKyDoiMatXichNeo" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-DangKyDoiMatXichNeo" style="padding-top: 4px;"><i class="bi bi-plus-circle"></i>&nbsp; Thêm mới</button>
                        </div>
                        <table id="table_DangKyDoiMatXichNeo" class="table table-bordered table-striped table-md" style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
</asp:Content>
