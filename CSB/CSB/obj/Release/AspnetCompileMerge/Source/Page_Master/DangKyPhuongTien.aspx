<%@ Page Title="Đăng ký các phương tiện bảo vệ sức sống tàu và cứu sinh" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="DangKyPhuongTien.aspx.cs" Inherits="CSB.Page_Master.DangKyPhuongTien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .breadcrumb {
            background-color: #ffffff !important;
        }
        .page-wrapper {
            padding-top: 0 !important;
        }
    </style>
    <div class="main-body">
        <div class="page-wrapper">
            <div class="row">
                <div class="col-sm-12" style="padding: 0px 5px;">
                    <div class="card">
                        <div class="card-header">
                            <h5 id="name">ĐĂNG KÝ PHƯƠNG TIỆN BẢO VỆ SỨC SỐNG VÀ CỨU SINH TÀU <span id="TENTAU"></span></h5>
                            <div class="page-header-breadcrumb">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="TrangChu.aspx">Trang chủ</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="Manage_Tau?vung=1">Quản lý tàu</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#!" onclick="HoSoTau()">Hồ sơ tàu</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-block">
                            <div class="">
                                <div class="scroll" style="overflow-y: auto;">
                                    <ul class="nav nav-tabs nav-fill" >
                                        <li class="nav-item">
                                            <a class="nav-link active" id="tabDANGKYCLHANGHAI" data-toggle="tab" onclick="loadDataList_DANGKYCLHANGHAI()" href="#DANGKYCLHANGHAI">Hàng hải</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="tabDANGKYCLVUKHI" data-toggle="tab" onclick="loadDataList_DANGKYCLVUKHI()" href="#DANGKYCLVUKHI">Vũ khí</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="tabDANGKYCLRADA" data-toggle="tab" onclick="loadDataList_DANGKYCLRADA()" href="#DANGKYCLRADA">Rada</a>
                                        </li>
                                        <%--<li class="nav-item">
                                            <a class="nav-link" id="tabTOMAY" data-toggle="tab" onclick="loadDataList_TOMAY()" href="#TOMAY">Các tổ máy</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="tabHETRUCHANVIT" data-toggle="tab" onclick="loadDataList_HETRUCCHANVIT()" href="#HETRUCHANVIT">Hệ trục chân vịt</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="tabNEOXICHNEO" data-toggle="tab" onclick="loadDataList_NEOXICHNEO()" href="#NEOXICHNEO">Neo, xích neo</a>
                                        </li>--%>
                                        <li class="nav-item">
                                            <a class="nav-link" id="tabBOMDAU-NUOC-THONGGIO" data-toggle="tab" onclick="loadDataList_DANGKYCLBDNTG()" href="#BOMDAU-NUOC-THONGGIO">Bơm dầu, nước, thông gió</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="tabDANGKYCLTHIETBIKHAC" data-toggle="tab" onclick="loadDataList_DANGKYCLTHIETBIKHAC()" href="#DANGKYCLTHIETBIKHAC">Trang bị khác</a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div id="DANGKYCLHANGHAI" class=" tab-pane active">
                                        <br>
                                        <h5>ĐĂNG KÝ CHẤT LƯỢNG HÀNG HẢI</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_DANGKYCLHANGHAI()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_DANGKYCLHANGHAI" onclick="click_add_DANGKYCLHANGHAI(null)" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-DANGKYCLHANGHAI" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span> Thêm</button>
                                        </div>
                                        <table id="table-DANGKYCLHANGHAI" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="DANGKYCLVUKHI" class=" tab-pane">
                                        <br>
                                        <h5>ĐĂNG KÝ CHẤT LƯỢNG VŨ KHÍ</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_DANGKYCLVUKHI()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_DANGKYCLVUKHI" onclick="click_add_DANGKYCLVUKHI(null)" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-DANGKYCLVUKHI" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span> Thêm</button>
                                        </div>
                                        <table id="table-DANGKYCLVUKHI" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="DANGKYCLRADA" class=" tab-pane">   
                                        <br>
                                        <h5>ĐĂNG KÝ CHẤT LƯỢNG RA ĐA</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_DANGKYCLRADA()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_DANGKYCLRADA" onclick="click_add_DANGKYCLRADA(null)" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-DANGKYCLRADA" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span> Thêm</button>
                                        </div>
                                        <table id="table-DANGKYCLRADA" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <%--<div id="TOMAY" class=" tab-pane">
                                        <br>
                                        <h5>MÁY CHÍNH</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_MAYCHINH()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-MAYCHINH" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span> Thêm máy chính</button>
                                        </div>
                                        <table id="table-MAYCHINH" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                        <br />
                                        <h5>MÁY PHỤ PHÁT ĐIỆN</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_MAYPHU()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_MAYPHU" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-MAYPHU" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span> Thêm máy phụ</button>
                                        </div>
                                        <table id="table-MAYPHU" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                        <br />
                                        <h5>CÁC TỔ MÁY CHUYÊN DỤNG</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_MAYCHUYENDUNG()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_MAYCHUYENDUNG" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-MAYCHUYENDUNG" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span> Thêm máy chuyên dụng</button>
                                        </div>
                                        <table id="table-MAYCHUYENDUNG" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="HETRUCHANVIT" class=" tab-pane">
                                        <br>
                                        <h5>HỆ TRỤC CHÂN VỊT</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_HETRUCCHANVIT()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_HETRUCCHANVIT" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-HETRUCCHANVIT" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span>Thêm hệ trục chân vịt</button>
                                        </div>
                                        <table id="table-HETRUCCHANVIT" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="NEOXICHNEO" class=" tab-pane">
                                        <br>
                                        <h5>NEO, XÍCH NEO</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_NEOXICHNEO()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_NEOXICHNEO" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-NEOXICHNEO" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span> Thêm neo - xích neo</button>
                                        </div>
                                        <table id="table-NEOXICHNEO" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>--%>
                                    <div id="BOMDAU-NUOC-THONGGIO" class=" tab-pane">
                                        <br>
                                        <h5>ĐĂNG KÝ CHẤT LƯỢNG BƠM DẦU, NƯỚC VÀ THÔNG GIÓ</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_DANGKYCLBDNTG()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_DANGKYCLBDNTG" onclick="click_add_DANGKYCLBDNTG(null)" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-DANGKYCLBDNTG" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span> Thêm bơm dầu, nước và thông gió</button>
                                        </div>
                                        <table id="table-DANGKYCLBDNTG" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="DANGKYCLTHIETBIKHAC" class=" tab-pane">
                                        <br>
                                        <h5>ĐĂNG KÝ CHẤT LƯỢNG CÁC TRANG BỊ KHÁC</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_DANGKYCLTHIETBIKHAC()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_DANGKYCLTHIETBIKHAC" onclick="click_add_DANGKYCLTHIETBIKHAC(null)" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-DANGKYCLTHIETBIKHAC" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span> Thêm trang bị khác</button>
                                        </div>
                                        <table id="table-DANGKYCLTHIETBIKHAC" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" id="model-add-DANGKYCLHANGHAI" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-add-DANGKYCLHANGHAI" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Thêm đăng ký chất lượng hàng hải</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ký hiệu hàng hải   : </strong></label>
                                            <div class="col-md-7">
                                                <select class="form-control" id="add-DANGKYCLHANGHAI-IDHANGHAI" required>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Năm đăng ký   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" min="0" step="1" class="form-control" id="add-DANGKYCLHANGHAI-DANGKYCHATLUONG-NAMDANGKY" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Trạng thái  : </strong></label>
                                            <div class="col-md-7">
                                                <select class="form-control" id="add-DANGKYCLHANGHAI-DANGKYCHATLUONG-TRANGTHAI" required></select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="add_DANGKYCLHANGHAI()" class="btn btn-info">Thêm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-edit-DANGKYCLHANGHAI" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-edit-DANGKYCLHANGHAI" onsubmit="return false">
                        <input type="hidden" id="edit-DANGKYCLHANGHAI-DANGKYCHATLUONG_ID" />
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Sửa thông tin đăng ký chất lượng hàng hải</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ký hiệu hàng hải   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="hidden" id="edit-DANGKYCLHANGHAI-IDHANGHAI">
                                                <input type="text" class="form-control" id="edit-DANGKYCLHANGHAI-KYHIEU" disabled required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Năm đăng ký   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" min="0" step="1" class="form-control" id="edit-DANGKYCLHANGHAI-DANGKYCHATLUONG_NAMDANGKY" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Trạng thái  : </strong></label>
                                            <div class="col-md-7">
                                                <select class="form-control" id="edit-DANGKYCLHANGHAI-DANGKYCHATLUONG_TRANGTHAI" required></select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="edit_DANGKYCLHANGHAI()" class="btn btn-info">Lưu</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-add-DANGKYCLVUKHI" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-add-DANGKYCLVUKHI" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Thêm đăng ký chất lượng vũ khí</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ký hiệu   : </strong></label>
                                            <div class="col-md-7">
                                                <select class="form-control" id="add-DANGKYCLVUKHI-IDVUKHI" required>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Năm đăng ký   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" min="0" step="1" class="form-control" id="add-DANGKYCLVUKHI-DANGKYCHATLUONG-NAMDANGKY" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Trạng thái  : </strong></label>
                                            <div class="col-md-7">
                                                <select class="form-control" id="add-DANGKYCLVUKHI-DANGKYCHATLUONG-TRANGTHAI" required></select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="add_DANGKYCLVUKHI()" class="btn btn-info">Thêm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-edit-DANGKYCLVUKHI" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-edit-DANGKYCLVUKHI" onsubmit="return false">
                        <input type="hidden" id="edit-DANGKYCLVUKHI-DANGKYCHATLUONG_ID" />
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Sửa thông tin đăng ký chất lượng vũ khí</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ký hiệu   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="hidden" id="edit-DANGKYCLVUKHI-IDVUKHI">
                                                <input type="text" class="form-control" id="edit-DANGKYCLVUKHI-KYHIEU" disabled required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Năm đăng ký   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" min="0" step="1" class="form-control" id="edit-DANGKYCLVUKHI-DANGKYCHATLUONG_NAMDANGKY" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Trạng thái  : </strong></label>
                                            <div class="col-md-7">
                                                <select class="form-control" id="edit-DANGKYCLVUKHI-DANGKYCHATLUONG_TRANGTHAI" required></select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="edit_DANGKYCLVUKHI()" class="btn btn-info">Lưu</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-add-DANGKYCLBDNTG" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-add-DANGKYCLBDNTG" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Thêm đăng ký chất lượng bơm dầu, nước, thông gió</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Tên TB - Ký hiệu   : </strong></label>
                                            <div class="col-md-7">
                                                <select class="form-control" id="add-DANGKYCLBDNTG-IDBDNTG" required>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Năm đăng ký   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" min="0" step="1" class="form-control" id="add-DANGKYCLBDNTG-DANGKYCHATLUONG-NAMDANGKY" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Trạng thái  : </strong></label>
                                            <div class="col-md-7">
                                                <select class="form-control" id="add-DANGKYCLBDNTG-DANGKYCHATLUONG-TRANGTHAI" required></select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="add_DANGKYCLBDNTG()" class="btn btn-info">Thêm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-edit-DANGKYCLBDNTG" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-edit-DANGKYCLBDNTG" onsubmit="return false">
                        <input type="hidden" id="edit-DANGKYCLBDNTG-DANGKYCHATLUONG_ID" />
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Sửa thông tin đăng ký chất lượng bơm dầu, nước, thông gió</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Tên TB - Ký hiệu   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="hidden" id="edit-DANGKYCLBDNTG-IDBDNTG">
                                                <input type="text" class="form-control" id="edit-DANGKYCLBDNTG-TENTHIETBI" disabled required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Năm đăng ký   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" min="0" step="1" class="form-control" id="edit-DANGKYCLBDNTG-DANGKYCHATLUONG_NAMDANGKY" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Trạng thái  : </strong></label>
                                            <div class="col-md-7">
                                                <select class="form-control" id="edit-DANGKYCLBDNTG-DANGKYCHATLUONG_TRANGTHAI" required></select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="edit_DANGKYCLBDNTG()" class="btn btn-info">Lưu</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-add-DANGKYCLTHIETBIKHAC" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-add-DANGKYCLTHIETBIKHAC" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Thêm đăng ký chất lượng trang bị khác</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ký hiệu   : </strong></label>
                                            <div class="col-md-7">
                                                <select class="form-control" id="add-DANGKYCLTHIETBIKHAC-IDTHIETBIKHAC" required>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Năm đăng ký   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" min="0" step="1" class="form-control" id="add-DANGKYCLTHIETBIKHAC-DANGKYCHATLUONG-NAMDANGKY" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Trạng thái  : </strong></label>
                                            <div class="col-md-7">
                                                <select class="form-control" id="add-DANGKYCLTHIETBIKHAC-DANGKYCHATLUONG-TRANGTHAI" required></select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="add_DANGKYCLTHIETBIKHAC()" class="btn btn-info">Thêm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-edit-DANGKYCLTHIETBIKHAC" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-edit-DANGKYCLTHIETBIKHAC" onsubmit="return false">
                        <input type="hidden" id="edit-DANGKYCLTHIETBIKHAC-DANGKYCHATLUONG_ID" />
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Sửa thông tin đăng ký chất lượng trang bị khác</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ký hiệu   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="hidden" id="edit-DANGKYCLTHIETBIKHAC-IDTHIETBIKHAC">
                                                <input type="text" class="form-control" id="edit-DANGKYCLTHIETBIKHAC-KYHIEU" disabled required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Năm đăng ký   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" min="0" step="1" class="form-control" id="edit-DANGKYCLTHIETBIKHAC-DANGKYCHATLUONG_NAMDANGKY" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Trạng thái  : </strong></label>
                                            <div class="col-md-7">
                                                <select class="form-control" id="edit-DANGKYCLTHIETBIKHAC-DANGKYCHATLUONG_TRANGTHAI" required></select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="edit_DANGKYCLTHIETBIKHAC()" class="btn btn-info">Lưu</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-add-DANGKYCLRADA" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-add-DANGKYCLRADA" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Thêm đăng ký chất lượng rada</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ký hiệu rada   : </strong></label>
                                            <div class="col-md-7">
                                                <select class="form-control" id="add-DANGKYCLRADA-IDRADA" required>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Năm đăng ký   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" min="0" step="1" class="form-control" id="add-DANGKYCLRADA-DANGKYCHATLUONG-NAMDANGKY" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Trạng thái  : </strong></label>
                                            <div class="col-md-7">
                                                <select class="form-control" id="add-DANGKYCLRADA-DANGKYCHATLUONG-TRANGTHAI" required></select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="add_DANGKYCLRADA()" class="btn btn-info">Thêm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-edit-DANGKYCLRADA" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-edit-DANGKYCLRADA" onsubmit="return false">
                        <input type="hidden" id="edit-DANGKYCLRADA-DANGKYCHATLUONG_ID" />
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Sửa thông tin đăng ký chất lượng rada</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ký hiệu rada   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="hidden" id="edit-DANGKYCLRADA-IDRADA">
                                                <input type="text" class="form-control" id="edit-DANGKYCLRADA-KYHIEU" disabled required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Năm đăng ký   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" min="0" step="1" class="form-control" id="edit-DANGKYCLRADA-DANGKYCHATLUONG_NAMDANGKY" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Trạng thái  : </strong></label>
                                            <div class="col-md-7">
                                                <select class="form-control" id="edit-DANGKYCLRADA-DANGKYCHATLUONG_TRANGTHAI" required></select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="edit_DANGKYCLRADA()" class="btn btn-info">Lưu</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script>
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }
        function Load_Title(Ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/ship_detail?id=" + Ship_ID,
                dataType: "json",
                success: function (data) {
                    $("#TENTAU").html(data.TTCOBAN.SOHIEU);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }
        function Active(i) {
            if (i == 1) {
                $("#tabDANGKYCLHANGHAI").tab('show');
                loadDataList_DANGKYCLHANGHAI();
            }
            else if (i == 2) {
                $("#tabDANGKYCLVUKHI").tab('show');
                loadDataList_DANGKYCLVUKHI();
            }
            else if (i == 3) {
                $("#tabDANGKYCLRADA").tab('show');
                loadDataList_DANGKYCLRADA();
            }
            //else if (i == 4)
            //    $("#tabTOMAY").tab('show');
            //else if (i == 5)
            //    $("#tabHETRUCHANVIT").tab('show');
            //else if (i == 6)
            //    $("#tabNEOXICHNEO").tab('show');
            else if (i == 7) {
                $("#tabBOMDAU-NUOC-THONGGIO").tab('show');
                loadDataList_DANGKYCLBDNTG();
            }
            else if (i == 8) {
                $("#tabDANGKYCLTHIETBIKHAC").tab('show');
                loadDataList_DANGKYCLTHIETBIKHAC();
            }
                
        }
        $(document).ready(function () {
            Ship_ID = getParameterByName('Ship_ID');
            if (Ship_ID == null) {
                history.back();
            }
            else {
                Load_Title(Ship_ID);
                i = sessionStorage.getItem("tab");
                console.log(i);
                if (i >= 1 && i <= 8) {
                    Active(i);
                } else {
                    loadDataList_DANGKYCLHANGHAI();
                }
            }
        });
        function loadTable(tablename) {
            $('table[id=' + tablename + ']').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    lengthChange: false,
                    "language": {
                        "sProcessing": "Đang xử lý...",
                        "sLengthMenu": "Xem _MENU_ mục",
                        "sZeroRecords": "Không tìm thấy thông tin phù hợp",
                        "sInfo": "Đang xem _START_ đến _END_ trong tổng số _TOTAL_ mục",
                        "sInfoEmpty": "Đang xem 0 đến 0 trong tổng số 0 mục",
                        "sInfoFiltered": "(được lọc từ _MAX_ mục)",
                        "sInfoPostFix": "",
                        "sSearch": "Tìm kiếm: ",
                        "sUrl": "",
                        "oPaginate": {
                            "sFirst": "Đầu",
                            "sPrevious": "Trước",
                            "sNext": "Tiếp",
                            "sLast": "Cuối"
                        }
                    }
                });
                table1.buttons().container()
                    .appendTo('this_wrapper .col-md-6:eq(0)');

            });
        };
        function loadTrangThai(input, trangthai) {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/dmtrangthai",
                dataType: "json",
                success: function (data) {
                    var selRegion = '';
                    $.each(data, function (key, item) {
                        if (trangthai == item.TEN) {
                            selRegion += "<option value='" + item.ID + "' selected>" + item.TEN + "</option>";
                        }
                        else {
                            selRegion += "<option value='" + item.ID + "'>" + item.TEN + "</option>";
                        }
                    });
                    $('#' + input).html(selRegion);
                }, error: function (ret) {
                },
            });
        }

        // HÀNG HẢI
        function loadHANGHAI() {
            var textselect = '';
            $.ajax({
                type: "GET",
                url: linkapi + "v2/hanghai?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $.each(data, function (key, item) {
                        textselect += "<option value=" + item.ID + ">" + item.KYHIEU + "</option>";
                    });
                    console.log("okGET");
                    $("#add-DANGKYCLHANGHAI-IDHANGHAI").html(textselect);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }
        function loadDataList_DANGKYCLHANGHAI() {
            loadHANGHAI();
            $.ajax({
                type: "GET",
                url: linkapi + "v2/dangkyclhanghai?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var listNam = new Array();
                    var i;
                    var listlen;
                    $.each(data, function (key, item) {
                        listlen = listNam.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (Number(item.DANGKYCHATLUONG_NAMDANGKY) == listNam[i]) break;
                        }
                        if (i == listlen) {
                            var j = 0;
                            for (j = 0; j < listlen; j++) {
                                if (Number(item.DANGKYCHATLUONG_NAMDANGKY) < listNam[j]) break;
                            }
                            listNam.splice(j, 0, Number(item.DANGKYCHATLUONG_NAMDANGKY));
                        }
                    });
                    listlen = listNam.length;
                    for (i = 0; i < listlen; i++) {
                        listNam[i] = String(listNam[i]);
                    }
                    var listPt = new Array();
                    var listSL = new Array();
                    var listIDPT = new Array();
                    $.each(data, function (key, item) {
                        var listlen = listPt.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (item.KYHIEU == listPt[i]) break;
                        }
                        if (i == listlen) {
                            listPt.push(item.KYHIEU);
                            listSL.push(item.SOLUONG);
                            listIDPT.push(item.IDHANGHAI);
                        }
                    });
                    console.log(listPt);
                    listlen = listNam.length;
                    var tabletext = "<thead><tr><th rowspan='2'>STT</th><th rowspan='2'>KÝ HIỆU</th><th rowspan='2'>SỐ LƯỢNG</th><th colspan='" + listlen + "'>ĐĂNG KÝ CHẤT LƯỢNG HÀNG NĂM</th><th rowspan='2'>TÁC VỤ</th></tr><tr>";
                    for (i = 0; i < listlen; i++) {
                        tabletext += "<th>" + listNam[i] + "</th>";
                    }
                    tabletext += "</tr></thead><tbody>";
                    var i = 1;
                    var lenPt = listPt.length;
                    var TRANGTHAI;
                    var ID;
                    for (i = 0; i < lenPt; i++) {
                        tabletext += "<tr><td style='text-align: center;'>" + (i + 1) + "</td><td>" + listPt[i] + "</td><td>" + listSL[i] + "</td>";
                        for (j = 0; j < listlen; j++) {
                            TRANGTHAI = '';
                            $.each(data, function (key, item) {
                                if (item.KYHIEU == listPt[i] && item.DANGKYCHATLUONG_NAMDANGKY == listNam[j]) {
                                    TRANGTHAI = item.DANGKYCHATLUONG_TRANGTHAI;
                                    ID = item.DANGKYCHATLUONG_ID;
                                }
                            });
                            tabletext += "<td>";
                            if (TRANGTHAI != "") {
                                tabletext += '<a href="#" title="Sửa" data-toggle="modal" data-target="#model-edit-DANGKYCLHANGHAI"  onclick="onclick_edit_DANGKYCLHANGHAI(`' + listIDPT[i] + '`,`' + listPt[i] + '`,`' + listSL[i] + '`,`' + ID + '`,`' + listNam[j] + '`,`' + TRANGTHAI + '`)">' + TRANGTHAI + '</a><a href="#" class="delete" title="Xóa" onclick="delete_DANGKYCLHANGHAI(`' + ID + '`)" style="float: right;"><i class="bi bi-x"></i></a>' + "</td>";
                            }
                            tabletext += "</td>";
                        }
                        tabletext += '<td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Thêm đăng ký" data-toggle="modal" data-target="#model-add-DANGKYCLHANGHAI" onclick="click_add_DANGKYCLHANGHAI(`' + listIDPT[i] + '`)"><i class="bi bi-plus-circle-fill"></i></a></div></td></tr>';
                    }
                    tabletext += "</tbody>";
                    $('#table-DANGKYCLHANGHAI').html(tabletext);
                    loadTable('table-DANGKYCLHANGHAI');
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        };
        function loadDataList_DANGKYCLHANGHAI2() {
            loadHANGHAI();
            $.ajax({
                type: "GET",
                url: linkapi + "v2/dangkyclhanghai?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var listNam = new Array();
                    var i;
                    var listlen;
                    $.each(data, function (key, item) {
                        listlen = listNam.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (Number(item.DANGKYCHATLUONG_NAMDANGKY) == listNam[i]) break;
                        }
                        if (i == listlen) {
                            var j = 0;
                            for (j = 0; j < listlen; j++) {
                                if (Number(item.DANGKYCHATLUONG_NAMDANGKY) < listNam[j]) break;
                            }
                            listNam.splice(j, 0, Number(item.DANGKYCHATLUONG_NAMDANGKY));
                        }
                    });
                    listlen = listNam.length;
                    for (i = 0; i < listlen; i++) {
                        listNam[i] = String(listNam[i]);
                    }
                    var listPt = new Array();
                    var listSL = new Array();
                    var listIDPT = new Array();
                    $.each(data, function (key, item) {
                        var listlen = listPt.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (item.KYHIEU == listPt[i]) break;
                        }
                        if (i == listlen) {
                            listPt.push(item.KYHIEU);
                            listSL.push(item.SOLUONG);
                            listIDPT.push(item.IDHANGHAI);
                        }
                    });
                    console.log(listPt);
                    listlen = listNam.length;
                    var tabletext = "<thead><tr><th rowspan='2'>STT</th><th rowspan='2'>KÝ HIỆU</th><th rowspan='2'>SỐ LƯỢNG</th><th colspan='" + listlen + "'>ĐĂNG KÝ CHẤT LƯỢNG HÀNG NĂM</th><th rowspan='2'>TÁC VỤ</th></tr><tr>";
                    for (i = 0; i < listlen; i++) {
                        tabletext += "<th>" + listNam[i] + "</th>";
                    }
                    tabletext += "</tr></thead><tbody>";
                    var i = 1;
                    var lenPt = listPt.length;
                    var TRANGTHAI;
                    var ID;
                    for (i = 0; i < lenPt; i++) {
                        tabletext += "<tr><td style='text-align: center;'>" + (i + 1) + "</td><td>" + listPt[i] + "</td><td>" + listSL[i] + "</td>";
                        for (j = 0; j < listlen; j++) {
                            TRANGTHAI = '';
                            $.each(data, function (key, item) {
                                if (item.KYHIEU == listPt[i] && item.DANGKYCHATLUONG_NAMDANGKY == listNam[j]) {
                                    TRANGTHAI = item.DANGKYCHATLUONG_TRANGTHAI;
                                    ID = item.DANGKYCHATLUONG_ID;
                                }
                            });
                            tabletext += "<td>";
                            if (TRANGTHAI != "") {
                                tabletext += '<a href="#" title="Sửa" data-toggle="modal" data-target="#model-edit-DANGKYCLHANGHAI"  onclick="onclick_edit_DANGKYCLHANGHAI(`' + listIDPT[i] + '`,`' + listPt[i] + '`,`' + listSL[i] + '`,`' + ID + '`,`' + listNam[j] + '`,`' + TRANGTHAI + '`)">' + TRANGTHAI + '</a><a href="#" class="delete" title="Xóa" onclick="delete_DANGKYCLHANGHAI(`' + ID + '`)" style="float: right;"><i class="bi bi-x"></i></a>' + "</td>";
                            }
                            tabletext += "</td>";
                        }
                        tabletext += '<td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Thêm đăng ký" data-toggle="modal" data-target="#model-add-DANGKYCLHANGHAI" onclick="click_add_DANGKYCLHANGHAI(`' + listIDPT[i] + '`)"><i class="bi bi-plus-circle-fill"></i></a></div></td></tr>';
                    }
                    tabletext += "</tbody>";
                    $('#table-DANGKYCLHANGHAI').html(tabletext);
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        };
        function click_add_DANGKYCLHANGHAI(id = null) {
            debugger
            if (id != null) {
                $('#add-DANGKYCLHANGHAI-IDHANGHAI').attr('disabled', '');
                $('#add-DANGKYCLHANGHAI-IDHANGHAI').val(id);
            }
            else {
                $('#add-DANGKYCLHANGHAI-IDHANGHAI').removeAttr('disabled', '');
            }
            loadTrangThai('add-DANGKYCLHANGHAI-DANGKYCHATLUONG-TRANGTHAI', '');
        }
        function add_DANGKYCLHANGHAI() {
            var form = document.getElementById("form-add-DANGKYCLHANGHAI");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var DANGKYCLHANGHAI = {
                    IDHANGHAI: $("#add-DANGKYCLHANGHAI-IDHANGHAI").val(),
                    //KYHIEU: $("#add-DANGKYCLHANGHAI-IDHANGHAI").find("option:selected").first().attr("text"),
                    DANGKYCHATLUONG_NAMDANGKY: $("#add-DANGKYCLHANGHAI-DANGKYCHATLUONG-NAMDANGKY").val(),
                    DANGKYCHATLUONG_TRANGTHAI: $("#add-DANGKYCLHANGHAI-DANGKYCHATLUONG-TRANGTHAI").val()
                };
                console.log(DANGKYCLHANGHAI);
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/insert_dangkyclhanghai?id=" + DANGKYCLHANGHAI.IDHANGHAI,
                    dataType: "json",
                    data: JSON.stringify(DANGKYCLHANGHAI),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm thông tin đăng ký chất lượng hàng hải thành công.");
                        loadDataList_DANGKYCLHANGHAI2();
                        
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $("#add-DANGKYCLHANGHAI-DANGKYCHATLUONG-NAMDANGKY").val("");
                        $("#add-DANGKYCLHANGHAI-DANGKYCHATLUONG-TRANGTHAI").val("");
                        $('#model-add-DANGKYCLHANGHAI').modal("hide");
                        loadTable('table-DANGKYCLHANGHAI');
                    },
                });
            }
            return false;
        }
        function onclick_edit_DANGKYCLHANGHAI(IDHANGHAI, KYHIEU, SOLUONG, DANGKYCHATLUONG_ID, DANGKYCHATLUONG_NAMDANGKY, DANGKYCHATLUONG_TRANGTHAI) {
            loadTrangThai('edit-DANGKYCLHANGHAI-DANGKYCHATLUONG_TRANGTHAI', DANGKYCHATLUONG_TRANGTHAI);
            $('#edit-DANGKYCLHANGHAI-IDHANGHAI').val(IDHANGHAI);
            $("#edit-DANGKYCLHANGHAI-KYHIEU").val(KYHIEU);
            $("#edit-DANGKYCLHANGHAI-DANGKYCHATLUONG_ID").val(DANGKYCHATLUONG_ID);
            $("#edit-DANGKYCLHANGHAI-DANGKYCHATLUONG_NAMDANGKY").val(Number(DANGKYCHATLUONG_NAMDANGKY));
        }
        function edit_DANGKYCLHANGHAI() {
            var form = document.getElementById("form-edit-DANGKYCLHANGHAI");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var DANGKYCLHANGHAI = {
                    ID: $("#edit-DANGKYCLHANGHAI-DANGKYCHATLUONG_ID").val(),
                    IDHANGHAI: $("#edit-DANGKYCLHANGHAI-IDHANGHAI").val(),
                    //KYHIEU: $("#add-DANGKYCLHANGHAI-IDHANGHAI").find("option:selected").first().attr("text"),
                    DANGKYCHATLUONG_NAMDANGKY: $("#edit-DANGKYCLHANGHAI-DANGKYCHATLUONG_NAMDANGKY").val(),
                    DANGKYCHATLUONG_TRANGTHAI: $("#edit-DANGKYCLHANGHAI-DANGKYCHATLUONG_TRANGTHAI").val()
                };
                console.log(DANGKYCLHANGHAI);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/update_dangkyclhanghai?id=" + DANGKYCLHANGHAI.ID,
                    dataType: "json",
                    data: JSON.stringify(DANGKYCLHANGHAI),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Cập nhật thông tin đăng ký chất lượng thành công.");
                        loadDataList_DANGKYCLHANGHAI2();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-DANGKYCLHANGHAI').modal("hide");
                        loadTable('table-DANGKYCLHANGHAI');
                    },
                });
            }
            return false;
        }
        function delete_DANGKYCLHANGHAI(id) {
            let text = "Bạn có chắc muốn xóa thông tin đăng ký này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/delete_dangkyclhanghai?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    toastSuccess("Thành công", "Xóa thông tin đăng ký thành công!");
                    loadDataList_DANGKYCLHANGHAI2();
                    loadTable('table-DANGKYCLHANGHAI');
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa thông tin đăng ký không thành công!");
                })
            } else {

            }
        }

        // VŨ KHÍ
        function loadVUKHI() {
            var textselect = '';
            $.ajax({
                type: "GET",
                url: linkapi + "v2/vukhi?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $.each(data, function (key, item) {
                        textselect += "<option value=" + item.ID + ">" + item.KYHIEU + "</option>";
                    });
                    console.log("okGET");
                    $("#add-DANGKYCLVUKHI-IDVUKHI").html(textselect);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }
        function loadDataList_DANGKYCLVUKHI() {
            loadVUKHI();
            $.ajax({
                type: "GET",
                url: linkapi + "v2/dangkyclvukhi?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var listNam = new Array();
                    var i;
                    var listlen;
                    $.each(data, function (key, item) {
                        listlen = listNam.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (Number(item.DANGKYCHATLUONG_NAMDANGKY) == listNam[i]) break;
                        }
                        if (i == listlen) {
                            var j = 0;
                            for (j = 0; j < listlen; j++) {
                                if (Number(item.DANGKYCHATLUONG_NAMDANGKY) < listNam[j]) break;
                            }
                            listNam.splice(j, 0, Number(item.DANGKYCHATLUONG_NAMDANGKY));
                        }
                    });
                    listlen = listNam.length;
                    for (i = 0; i < listlen; i++) {
                        listNam[i] = String(listNam[i]);
                    }
                    var listPt = new Array();
                    var listSL = new Array();
                    var listIDPT = new Array();
                    $.each(data, function (key, item) {
                        var listlen = listPt.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (item.KYHIEU == listPt[i]) break;
                        }
                        if (i == listlen) {
                            listPt.push(item.KYHIEU);
                            listSL.push(item.SOLUONG);
                            listIDPT.push(item.IDVUKHI);
                        }
                    });
                    console.log(listPt);
                    listlen = listNam.length;
                    var tabletext = "<thead><tr><th rowspan='2'>STT</th><th rowspan='2'>KÝ HIỆU</th><th rowspan='2'>SỐ LƯỢNG</th><th colspan='" + listlen + "'>ĐĂNG KÝ CHẤT LƯỢNG HÀNG NĂM</th><th rowspan='2'>TÁC VỤ</th></tr><tr>";
                    for (i = 0; i < listlen; i++) {
                        tabletext += "<th>" + listNam[i] + "</th>";
                    }
                    tabletext += "</tr></thead><tbody>";
                    var i = 1;
                    var lenPt = listPt.length;
                    var TRANGTHAI;
                    var ID;
                    for (i = 0; i < lenPt; i++) {
                        tabletext += "<tr><td style='text-align: center;'>" + (i + 1) + "</td><td>" + listPt[i] + "</td><td>" + listSL[i] + "</td>";
                        for (j = 0; j < listlen; j++) {
                            TRANGTHAI = '';
                            $.each(data, function (key, item) {
                                if (item.KYHIEU == listPt[i] && item.DANGKYCHATLUONG_NAMDANGKY == listNam[j]) {
                                    TRANGTHAI = item.DANGKYCHATLUONG_TRANGTHAI;
                                    ID = item.DANGKYCHATLUONG_ID;
                                }
                            });
                            tabletext += "<td>";
                            if (TRANGTHAI != "") {
                                tabletext += '<a href="#" title="Sửa" data-toggle="modal" data-target="#model-edit-DANGKYCLVUKHI"  onclick="onclick_edit_DANGKYCLVUKHI(`' + listIDPT[i] + '`,`' + listPt[i] + '`,`' + listSL[i] + '`,`' + ID + '`,`' + listNam[j] + '`,`' + TRANGTHAI + '`)">' + TRANGTHAI + '</a><a href="#" class="delete" title="Xóa" onclick="delete_DANGKYCLVUKHI(`' + ID + '`)" style="float: right;"><i class="bi bi-x"></i></a>' + "</td>";
                            }
                            tabletext += "</td>";
                        }
                        tabletext += '<td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Thêm đăng ký" data-toggle="modal" data-target="#model-add-DANGKYCLVUKHI" onclick="click_add_DANGKYCLVUKHI(`' + listIDPT[i] + '`)"><i class="bi bi-plus-circle-fill"></i></a></div></td></tr>';
                    }
                    tabletext += "</tbody>";
                    $('#table-DANGKYCLVUKHI').html(tabletext);
                    loadTable('table-DANGKYCLVUKHI');
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        };
        function loadDataList_DANGKYCLVUKHI2() {
            loadVUKHI();
            $.ajax({
                type: "GET",
                url: linkapi + "v2/dangkyclvukhi?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var listNam = new Array();
                    var i;
                    var listlen;
                    $.each(data, function (key, item) {
                        listlen = listNam.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (Number(item.DANGKYCHATLUONG_NAMDANGKY) == listNam[i]) break;
                        }
                        if (i == listlen) {
                            var j = 0;
                            for (j = 0; j < listlen; j++) {
                                if (Number(item.DANGKYCHATLUONG_NAMDANGKY) < listNam[j]) break;
                            }
                            listNam.splice(j, 0, Number(item.DANGKYCHATLUONG_NAMDANGKY));
                        }
                    });
                    listlen = listNam.length;
                    for (i = 0; i < listlen; i++) {
                        listNam[i] = String(listNam[i]);
                    }
                    var listPt = new Array();
                    var listSL = new Array();
                    var listIDPT = new Array();
                    $.each(data, function (key, item) {
                        var listlen = listPt.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (item.KYHIEU == listPt[i]) break;
                        }
                        if (i == listlen) {
                            listPt.push(item.KYHIEU);
                            listSL.push(item.SOLUONG);
                            listIDPT.push(item.IDVUKHI);
                        }
                    });
                    console.log(listPt);
                    listlen = listNam.length;
                    var tabletext = "<thead><tr><th rowspan='2'>STT</th><th rowspan='2'>KÝ HIỆU</th><th rowspan='2'>SỐ LƯỢNG</th><th colspan='" + listlen + "'>ĐĂNG KÝ CHẤT LƯỢNG HÀNG NĂM</th><th rowspan='2'>TÁC VỤ</th></tr><tr>";
                    for (i = 0; i < listlen; i++) {
                        tabletext += "<th>" + listNam[i] + "</th>";
                    }
                    tabletext += "</tr></thead><tbody>";
                    var i = 1;
                    var lenPt = listPt.length;
                    var TRANGTHAI;
                    var ID;
                    for (i = 0; i < lenPt; i++) {
                        tabletext += "<tr><td style='text-align: center;'>" + (i + 1) + "</td><td>" + listPt[i] + "</td><td>" + listSL[i] + "</td>";
                        for (j = 0; j < listlen; j++) {
                            TRANGTHAI = '';
                            $.each(data, function (key, item) {
                                if (item.KYHIEU == listPt[i] && item.DANGKYCHATLUONG_NAMDANGKY == listNam[j]) {
                                    TRANGTHAI = item.DANGKYCHATLUONG_TRANGTHAI;
                                    ID = item.DANGKYCHATLUONG_ID;
                                }
                            });
                            tabletext += "<td>";
                            if (TRANGTHAI != "") {
                                tabletext += '<a href="#" title="Sửa" data-toggle="modal" data-target="#model-edit-DANGKYCLVUKHI"  onclick="onclick_edit_DANGKYCLVUKHI(`' + listIDPT[i] + '`,`' + listPt[i] + '`,`' + listSL[i] + '`,`' + ID + '`,`' + listNam[j] + '`,`' + TRANGTHAI + '`)">' + TRANGTHAI + '</a><a href="#" class="delete" title="Xóa" onclick="delete_DANGKYCLVUKHI(`' + ID + '`)" style="float: right;"><i class="bi bi-x"></i></a>' + "</td>";
                            }
                            tabletext += "</td>";
                        }
                        tabletext += '<td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Thêm đăng ký" data-toggle="modal" data-target="#model-add-DANGKYCLVUKHI" onclick="click_add_DANGKYCLVUKHI(`' + listIDPT[i] + '`)"><i class="bi bi-plus-circle-fill"></i></a></div></td></tr>';
                    }
                    tabletext += "</tbody>";
                    $('#table-DANGKYCLVUKHI').html(tabletext);
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        };
        function click_add_DANGKYCLVUKHI(id = null) {
            debugger
            if (id != null) {
                $('#add-DANGKYCLVUKHI-IDVUKHI').attr('disabled', '');
                $('#add-DANGKYCLVUKHI-IDVUKHI').val(id);
            }
            else {
                $('#add-DANGKYCLVUKHI-IDVUKHI').removeAttr('disabled', '');
            }
            loadTrangThai('add-DANGKYCLVUKHI-DANGKYCHATLUONG-TRANGTHAI', '');
        }
        function add_DANGKYCLVUKHI() {
            var form = document.getElementById("form-add-DANGKYCLVUKHI");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var DANGKYCLVUKHI = {
                    IDVUKHI: $("#add-DANGKYCLVUKHI-IDVUKHI").val(),
                    //KYHIEU: $("#add-DANGKYCLVUKHI-IDVUKHI").find("option:selected").first().attr("text"),
                    DANGKYCHATLUONG_NAMDANGKY: $("#add-DANGKYCLVUKHI-DANGKYCHATLUONG-NAMDANGKY").val(),
                    DANGKYCHATLUONG_TRANGTHAI: $("#add-DANGKYCLVUKHI-DANGKYCHATLUONG-TRANGTHAI").val()
                };
                console.log(DANGKYCLVUKHI);
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/insert_dangkyclvukhi?id=" + DANGKYCLVUKHI.IDVUKHI,
                    dataType: "json",
                    data: JSON.stringify(DANGKYCLVUKHI),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm thông tin đăng ký chất lượng vũ khí thành công.");
                        loadDataList_DANGKYCLVUKHI2();

                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $("#add-DANGKYCLVUKHI-DANGKYCHATLUONG-NAMDANGKY").val("");
                        $("#add-DANGKYCLVUKHI-DANGKYCHATLUONG-TRANGTHAI").val("");
                        $('#model-add-DANGKYCLVUKHI').modal("hide");
                        loadTable('table-DANGKYCLVUKHI');
                    },
                });
            }
            return false;
        }
        function onclick_edit_DANGKYCLVUKHI(IDVUKHI, KYHIEU, SOLUONG, DANGKYCHATLUONG_ID, DANGKYCHATLUONG_NAMDANGKY, DANGKYCHATLUONG_TRANGTHAI) {
            loadTrangThai('edit-DANGKYCLVUKHI-DANGKYCHATLUONG_TRANGTHAI', DANGKYCHATLUONG_TRANGTHAI);
            $('#edit-DANGKYCLVUKHI-IDVUKHI').val(IDVUKHI);
            $("#edit-DANGKYCLVUKHI-KYHIEU").val(KYHIEU);
            $("#edit-DANGKYCLVUKHI-DANGKYCHATLUONG_ID").val(DANGKYCHATLUONG_ID);
            $("#edit-DANGKYCLVUKHI-DANGKYCHATLUONG_NAMDANGKY").val(Number(DANGKYCHATLUONG_NAMDANGKY));
        }
        function edit_DANGKYCLVUKHI() {
            var form = document.getElementById("form-edit-DANGKYCLVUKHI");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var DANGKYCLVUKHI = {
                    ID: $("#edit-DANGKYCLVUKHI-DANGKYCHATLUONG_ID").val(),
                    IDVUKHI: $("#edit-DANGKYCLVUKHI-IDVUKHI").val(),
                    //KYHIEU: $("#add-DANGKYCLVUKHI-IDVUKHI").find("option:selected").first().attr("text"),
                    DANGKYCHATLUONG_NAMDANGKY: $("#edit-DANGKYCLVUKHI-DANGKYCHATLUONG_NAMDANGKY").val(),
                    DANGKYCHATLUONG_TRANGTHAI: $("#edit-DANGKYCLVUKHI-DANGKYCHATLUONG_TRANGTHAI").val()
                };
                console.log(DANGKYCLVUKHI);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/update_dangkyclvukhi?id=" + DANGKYCLVUKHI.ID,
                    dataType: "json",
                    data: JSON.stringify(DANGKYCLVUKHI),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Cập nhật thông tin đăng ký chất lượng thành công.");
                        loadDataList_DANGKYCLVUKHI2();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-DANGKYCLVUKHI').modal("hide");
                        loadTable('table-DANGKYCLVUKHI');
                    },
                });
            }
            return false;
        }
        function delete_DANGKYCLVUKHI(id) {
            let text = "Bạn có chắc muốn xóa thông tin đăng ký này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/delete_dangkyclvukhi?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    toastSuccess("Thành công", "Xóa thông tin đăng ký thành công!");
                    loadDataList_DANGKYCLVUKHI2();
                    loadTable('table-DANGKYCLVUKHI');
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa thông tin đăng ký không thành công!");
                })
            } else {

            }
        }

        // RADA
        function loadRADA() {
            var textselect = '';
            $.ajax({
                type: "GET",
                url: linkapi + "v2/rada?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $.each(data, function (key, item) {
                        textselect += "<option value=" + item.ID + ">" + item.KYHIEU + "</option>";
                    });
                    console.log("okGET");
                    $("#add-DANGKYCLRADA-IDRADA").html(textselect);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }
        function loadDataList_DANGKYCLRADA() {
            loadRADA();
            $.ajax({
                type: "GET",
                url: linkapi + "v2/dangkyclrada?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var listNam = new Array();
                    var i;
                    var listlen;
                    $.each(data, function (key, item) {
                        listlen = listNam.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (Number(item.DANGKYCHATLUONG_NAMDANGKY) == listNam[i]) break;
                        }
                        if (i == listlen) {
                            var j = 0;
                            for (j = 0; j < listlen; j++) {
                                if (Number(item.DANGKYCHATLUONG_NAMDANGKY) < listNam[j]) break;
                            }
                            listNam.splice(j, 0, Number(item.DANGKYCHATLUONG_NAMDANGKY));
                        }
                    });
                    listlen = listNam.length;
                    for (i = 0; i < listlen; i++) {
                        listNam[i] = String(listNam[i]);
                    }
                    var listPt = new Array();
                    var listSL = new Array();
                    var listIDPT = new Array();
                    $.each(data, function (key, item) {
                        var listlen = listPt.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (item.KYHIEU == listPt[i]) break;
                        }
                        if (i == listlen) {
                            listPt.push(item.KYHIEU);
                            listSL.push(item.SOLUONG);
                            listIDPT.push(item.IDRADA);
                        }
                    });
                    console.log(listPt);
                    listlen = listNam.length;
                    var tabletext = "<thead><tr><th rowspan='2'>STT</th><th rowspan='2'>KÝ HIỆU</th><th rowspan='2'>SỐ LƯỢNG</th><th colspan='" + listlen + "'>ĐĂNG KÝ CHẤT LƯỢNG HÀNG NĂM</th><th rowspan='2'>TÁC VỤ</th></tr><tr>";
                    for (i = 0; i < listlen; i++) {
                        tabletext += "<th>" + listNam[i] + "</th>";
                    }
                    tabletext += "</tr></thead><tbody>";
                    var i = 1;
                    var lenPt = listPt.length;
                    var TRANGTHAI;
                    var ID;
                    for (i = 0; i < lenPt; i++) {
                        tabletext += "<tr><td style='text-align: center;'>" + (i + 1) + "</td><td>" + listPt[i] + "</td><td>" + listSL[i] + "</td>";
                        for (j = 0; j < listlen; j++) {
                            TRANGTHAI = '';
                            $.each(data, function (key, item) {
                                if (item.KYHIEU == listPt[i] && item.DANGKYCHATLUONG_NAMDANGKY == listNam[j]) {
                                    TRANGTHAI = item.DANGKYCHATLUONG_TRANGTHAI;
                                    ID = item.DANGKYCHATLUONG_ID;
                                }
                            });
                            tabletext += "<td>";
                            if (TRANGTHAI != "") {
                                tabletext += '<a href="#" title="Sửa" data-toggle="modal" data-target="#model-edit-DANGKYCLRADA"  onclick="onclick_edit_DANGKYCLRADA(`' + listIDPT[i] + '`,`' + listPt[i] + '`,`' + listSL[i] + '`,`' + ID + '`,`' + listNam[j] + '`,`' + TRANGTHAI + '`)">' + TRANGTHAI + '</a><a href="#" class="delete" title="Xóa" onclick="delete_DANGKYCLRADA(`' + ID + '`)" style="float: right;"><i class="bi bi-x"></i></a>' + "</td>";
                            }
                            tabletext += "</td>";
                        }
                        tabletext += '<td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Thêm đăng ký" data-toggle="modal" data-target="#model-add-DANGKYCLRADA" onclick="click_add_DANGKYCLRADA(`' + listIDPT[i] + '`)"><i class="bi bi-plus-circle-fill"></i></a></div></td></tr>';
                    }
                    tabletext += "</tbody>";
                    $('#table-DANGKYCLRADA').html(tabletext);
                    loadTable('table-DANGKYCLRADA');
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        };
        function loadDataList_DANGKYCLRADA2() {
            loadRADA();
            $.ajax({
                type: "GET",
                url: linkapi + "v2/dangkyclrada?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var listNam = new Array();
                    var i;
                    var listlen;
                    $.each(data, function (key, item) {
                        listlen = listNam.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (Number(item.DANGKYCHATLUONG_NAMDANGKY) == listNam[i]) break;
                        }
                        if (i == listlen) {
                            var j = 0;
                            for (j = 0; j < listlen; j++) {
                                if (Number(item.DANGKYCHATLUONG_NAMDANGKY) < listNam[j]) break;
                            }
                            listNam.splice(j, 0, Number(item.DANGKYCHATLUONG_NAMDANGKY));
                        }
                    });
                    listlen = listNam.length;
                    for (i = 0; i < listlen; i++) {
                        listNam[i] = String(listNam[i]);
                    }
                    var listPt = new Array();
                    var listSL = new Array();
                    var listIDPT = new Array();
                    $.each(data, function (key, item) {
                        var listlen = listPt.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (item.KYHIEU == listPt[i]) break;
                        }
                        if (i == listlen) {
                            listPt.push(item.KYHIEU);
                            listSL.push(item.SOLUONG);
                            listIDPT.push(item.IDRADA);
                        }
                    });
                    console.log(listPt);
                    listlen = listNam.length;
                    var tabletext = "<thead><tr><th rowspan='2'>STT</th><th rowspan='2'>KÝ HIỆU</th><th rowspan='2'>SỐ LƯỢNG</th><th colspan='" + listlen + "'>ĐĂNG KÝ CHẤT LƯỢNG HÀNG NĂM</th><th rowspan='2'>TÁC VỤ</th></tr><tr>";
                    for (i = 0; i < listlen; i++) {
                        tabletext += "<th>" + listNam[i] + "</th>";
                    }
                    tabletext += "</tr></thead><tbody>";
                    var i = 1;
                    var lenPt = listPt.length;
                    var TRANGTHAI;
                    var ID;
                    for (i = 0; i < lenPt; i++) {
                        tabletext += "<tr><td style='text-align: center;'>" + (i + 1) + "</td><td>" + listPt[i] + "</td><td>" + listSL[i] + "</td>";
                        for (j = 0; j < listlen; j++) {
                            TRANGTHAI = '';
                            $.each(data, function (key, item) {
                                if (item.KYHIEU == listPt[i] && item.DANGKYCHATLUONG_NAMDANGKY == listNam[j]) {
                                    TRANGTHAI = item.DANGKYCHATLUONG_TRANGTHAI;
                                    ID = item.DANGKYCHATLUONG_ID;
                                }
                            });
                            tabletext += "<td>";
                            if (TRANGTHAI != "") {
                                tabletext += '<a href="#" title="Sửa" data-toggle="modal" data-target="#model-edit-DANGKYCLRADA"  onclick="onclick_edit_DANGKYCLRADA(`' + listIDPT[i] + '`,`' + listPt[i] + '`,`' + listSL[i] + '`,`' + ID + '`,`' + listNam[j] + '`,`' + TRANGTHAI + '`)">' + TRANGTHAI + '</a><a href="#" class="delete" title="Xóa" onclick="delete_DANGKYCLRADA(`' + ID + '`)" style="float: right;"><i class="bi bi-x"></i></a>' + "</td>";
                            }
                            tabletext += "</td>";
                        }
                        tabletext += '<td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Thêm đăng ký" data-toggle="modal" data-target="#model-add-DANGKYCLRADA" onclick="click_add_DANGKYCLRADA(`' + listIDPT[i] + '`)"><i class="bi bi-plus-circle-fill"></i></a></div></td></tr>';
                    }
                    tabletext += "</tbody>";
                    $('#table-DANGKYCLRADA').html(tabletext);
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        };
        function click_add_DANGKYCLRADA(id = null) {
            debugger
            if (id != null) {
                $('#add-DANGKYCLRADA-IDRADA').attr('disabled', '');
                $('#add-DANGKYCLRADA-IDRADA').val(id);
            }
            else {
                $('#add-DANGKYCLRADA-IDRADA').removeAttr('disabled', '');
            }
            loadTrangThai('add-DANGKYCLRADA-DANGKYCHATLUONG-TRANGTHAI', '');
        }
        function add_DANGKYCLRADA() {
            var form = document.getElementById("form-add-DANGKYCLRADA");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var DANGKYCLRADA = {
                    IDRADA: $("#add-DANGKYCLRADA-IDRADA").val(),
                    //KYHIEU: $("#add-DANGKYCLRADA-IDRADA").find("option:selected").first().attr("text"),
                    DANGKYCHATLUONG_NAMDANGKY: $("#add-DANGKYCLRADA-DANGKYCHATLUONG-NAMDANGKY").val(),
                    DANGKYCHATLUONG_TRANGTHAI: $("#add-DANGKYCLRADA-DANGKYCHATLUONG-TRANGTHAI").val()
                };
                console.log(DANGKYCLRADA);
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/themdangkyclrada?id=" + DANGKYCLRADA.IDRADA,
                    dataType: "json",
                    data: JSON.stringify(DANGKYCLRADA),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm thông tin đăng ký chất lượng rada thành công.");
                        loadDataList_DANGKYCLRADA2();

                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $("#add-DANGKYCLRADA-DANGKYCHATLUONG-NAMDANGKY").val("");
                        $("#add-DANGKYCLRADA-DANGKYCHATLUONG-TRANGTHAI").val("");
                        $('#model-add-DANGKYCLRADA').modal("hide");
                        loadTable('table-DANGKYCLRADA');
                    },
                });
            }
            return false;
        }
        function onclick_edit_DANGKYCLRADA(IDRADA, KYHIEU, SOLUONG, DANGKYCHATLUONG_ID, DANGKYCHATLUONG_NAMDANGKY, DANGKYCHATLUONG_TRANGTHAI) {
            loadTrangThai('edit-DANGKYCLRADA-DANGKYCHATLUONG_TRANGTHAI', DANGKYCHATLUONG_TRANGTHAI);
            $('#edit-DANGKYCLRADA-IDRADA').val(IDRADA);
            $("#edit-DANGKYCLRADA-KYHIEU").val(KYHIEU);
            $("#edit-DANGKYCLRADA-DANGKYCHATLUONG_ID").val(DANGKYCHATLUONG_ID);
            $("#edit-DANGKYCLRADA-DANGKYCHATLUONG_NAMDANGKY").val(Number(DANGKYCHATLUONG_NAMDANGKY));
        }
        function edit_DANGKYCLRADA() {
            var form = document.getElementById("form-edit-DANGKYCLRADA");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var DANGKYCLRADA = {
                    ID: $("#edit-DANGKYCLRADA-DANGKYCHATLUONG_ID").val(),
                    IDRADA: $("#edit-DANGKYCLRADA-IDRADA").val(),
                    //KYHIEU: $("#add-DANGKYCLRADA-IDRADA").find("option:selected").first().attr("text"),
                    DANGKYCHATLUONG_NAMDANGKY: $("#edit-DANGKYCLRADA-DANGKYCHATLUONG_NAMDANGKY").val(),
                    DANGKYCHATLUONG_TRANGTHAI: $("#edit-DANGKYCLRADA-DANGKYCHATLUONG_TRANGTHAI").val()
                };
                console.log(DANGKYCLRADA);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/update_dangkyclrada?id=" + DANGKYCLRADA.ID,
                    dataType: "json",
                    data: JSON.stringify(DANGKYCLRADA),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Cập nhật thông tin đăng ký chất lượng thành công.");
                        loadDataList_DANGKYCLRADA2();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-DANGKYCLRADA').modal("hide");
                        loadTable('table-DANGKYCLRADA');
                    },
                });
            }
            return false;
        }
        function delete_DANGKYCLRADA(id) {
            let text = "Bạn có chắc muốn xóa thông tin đăng ký này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/xoadangkyclrada?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    toastSuccess("Thành công", "Xóa thông tin đăng ký thành công!");
                    loadDataList_DANGKYCLRADA2();
                    loadTable('table-DANGKYCLRADA');
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa thông tin đăng ký không thành công!");
                })
            } else {

            }
        }

        // bơm dầu, nước, thông gió
        function loadBDNTG() {
            var textselect = '';
            $.ajax({
                type: "GET",
                url: linkapi + "v2/bomnuocthonggio?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $.each(data, function (key, item) {
                        textselect += "<option value=" + item.ID + ">" + item.TENTB + " - "+ item.KYHIEU + "</option>";
                    });
                    console.log("okGET");
                    $("#add-DANGKYCLBDNTG-IDBDNTG").html(textselect);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }
        function loadDataList_DANGKYCLBDNTG() {
            
            console.log(1);
            loadBDNTG();
            console.log(2);
            $.ajax({
                type: "GET",
                url: linkapi + "v2/dangkyclbdntg?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log(data);
                    var listNam = new Array();
                    var i;
                    var listlen;
                    $.each(data, function (key, item) {
                        listlen = listNam.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (Number(item.DANGKYCHATLUONG_NAMDANGKY) == listNam[i]) break;
                        }
                        if (i == listlen) {
                            var j = 0;
                            for (j = 0; j < listlen; j++) {
                                if (Number(item.DANGKYCHATLUONG_NAMDANGKY) < listNam[j]) break;
                            }
                            listNam.splice(j, 0, Number(item.DANGKYCHATLUONG_NAMDANGKY));
                        }
                    });
                    listlen = listNam.length;
                    for (i = 0; i < listlen; i++) {
                        listNam[i] = String(listNam[i]);
                    }
                    var listPt = new Array();   //ky hieu
                    var listSL = new Array();
                    var listIDPT = new Array();
                    var listTTB = new Array();  // ten tb
                    var listNSX = new Array();
                    var listLL = new Array();
                    $.each(data, function (key, item) {
                        var listlen = listPt.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (item.IDBDNTG == listIDPT[i]) break;
                        }
                        if (i == listlen) {
                            listPt.push(item.KYHIEU);
                            listSL.push(item.SOLUONG);
                            listIDPT.push(item.IDBDNTG);
                            listTTB.push(item.TENTHIETBI);
                            listNSX.push(item.NUOCSX);
                            listLL.push(item.LUULUONG);
                        }
                    });
                    console.log(listPt);
                    listlen = listNam.length;
                    var tabletext = "<thead><tr><th rowspan='2'>STT</th><th rowspan='2'>TÊN THIẾT BỊ</th><th rowspan='2'>KÝ HIỆU</th><th rowspan='2'>NƯỚC SẢN XUẤT</th><th rowspan='2'>LƯU LƯỢNG (m3/h)</th><th rowspan='2'>SỐ LƯỢNG</th><th colspan='" + listlen + "'>ĐĂNG KÝ CHẤT LƯỢNG HÀNG NĂM</th><th rowspan='2'>TÁC VỤ</th></tr><tr>";
                    for (i = 0; i < listlen; i++) {
                        tabletext += "<th>" + listNam[i] + "</th>";
                    }
                    tabletext += "</tr></thead><tbody>";
                    var i = 1;
                    var lenPt = listPt.length;
                    var TRANGTHAI;
                    var ID;
                    for (i = 0; i < lenPt; i++) {
                        tabletext += "<tr><td style='text-align: center;'>" + (i + 1) + "</td><td>" + listTTB[i] + "</td><td>" + listPt[i] + "</td><td>" + listNSX[i] + "</td><td>" + listLL[i] + "</td><td>" + listSL[i] + "</td>";
                        for (j = 0; j < listlen; j++) {
                            TRANGTHAI = '';
                            $.each(data, function (key, item) {
                                if (item.KYHIEU == listPt[i] && item.DANGKYCHATLUONG_NAMDANGKY == listNam[j]) {
                                    TRANGTHAI = item.DANGKYCHATLUONG_TRANGTHAI;
                                    ID = item.DANGKYCHATLUONG_ID;
                                }
                            });
                            tabletext += "<td>";
                            if (TRANGTHAI != "") {
                                tabletext += '<a href="#" title="Sửa" data-toggle="modal" data-target="#model-edit-DANGKYCLBDNTG"  onclick="onclick_edit_DANGKYCLBDNTG(`' + listIDPT[i] + '`,`' + listTTB[i] + '`,`' + listPt[i] + '`,`' + listSL[i] + '`,`' + ID + '`,`' + listNam[j] + '`,`' + TRANGTHAI + '`)">' + TRANGTHAI + '</a><a href="#" class="delete" title="Xóa" onclick="delete_DANGKYCLBDNTG(`' + ID + '`)" style="float: right;"><i class="bi bi-x"></i></a>' + "</td>";
                            }
                            tabletext += "</td>";
                        }
                        tabletext += '<td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Thêm đăng ký" data-toggle="modal" data-target="#model-add-DANGKYCLBDNTG" onclick="click_add_DANGKYCLBDNTG(`' + listIDPT[i] + '`)"><i class="bi bi-plus-circle-fill"></i></a></div></td></tr>';
                    }
                    tabletext += "</tbody>";
                    $('#table-DANGKYCLBDNTG').html(tabletext);
                    loadTable('table-DANGKYCLBDNTG');
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        };
        function loadDataList_DANGKYCLBDNTG2() {
            loadBDNTG();
            $.ajax({
                type: "GET",
                url: linkapi + "v2/dangkyclbdntg?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log(data);
                    var listNam = new Array();
                    var i;
                    var listlen;
                    $.each(data, function (key, item) {
                        listlen = listNam.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (Number(item.DANGKYCHATLUONG_NAMDANGKY) == listNam[i]) break;
                        }
                        if (i == listlen) {
                            var j = 0;
                            for (j = 0; j < listlen; j++) {
                                if (Number(item.DANGKYCHATLUONG_NAMDANGKY) < listNam[j]) break;
                            }
                            listNam.splice(j, 0, Number(item.DANGKYCHATLUONG_NAMDANGKY));
                        }
                    });
                    listlen = listNam.length;
                    for (i = 0; i < listlen; i++) {
                        listNam[i] = String(listNam[i]);
                    }
                    var listPt = new Array();   //ky hieu
                    var listSL = new Array();
                    var listIDPT = new Array();
                    var listTTB = new Array();  // ten tb
                    var listNSX = new Array();
                    var listLL = new Array();
                    $.each(data, function (key, item) {
                        var listlen = listPt.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (item.IDBDNTG == listIDPT[i]) break;
                        }
                        if (i == listlen) {
                            listPt.push(item.KYHIEU);
                            listSL.push(item.SOLUONG);
                            listIDPT.push(item.IDBDNTG);
                            listTTB.push(item.TENTHIETBI);
                            listNSX.push(item.NUOCSX);
                            listLL.push(item.LUULUONG);
                        }
                    });
                    console.log(listPt);
                    listlen = listNam.length;
                    var tabletext = "<thead><tr><th rowspan='2'>STT</th><th rowspan='2'>TÊN THIẾT BỊ</th><th rowspan='2'>KÝ HIỆU</th><th rowspan='2'>NƯỚC SẢN XUẤT</th><th rowspan='2'>LƯU LƯỢNG (m3/h)</th><th rowspan='2'>SỐ LƯỢNG</th><th colspan='" + listlen + "'>ĐĂNG KÝ CHẤT LƯỢNG HÀNG NĂM</th><th rowspan='2'>TÁC VỤ</th></tr><tr>";
                    for (i = 0; i < listlen; i++) {
                        tabletext += "<th>" + listNam[i] + "</th>";
                    }
                    tabletext += "</tr></thead><tbody>";
                    var i = 1;
                    var lenPt = listPt.length;
                    var TRANGTHAI;
                    var ID;
                    for (i = 0; i < lenPt; i++) {
                        tabletext += "<tr><td style='text-align: center;'>" + (i + 1) + "</td><td>" + listTTB[i] + "</td><td>" + listPt[i] + "</td><td>" + listNSX[i] + "</td><td>" + listLL[i] + "</td><td>" + listSL[i] + "</td>";
                        for (j = 0; j < listlen; j++) {
                            TRANGTHAI = '';
                            $.each(data, function (key, item) {
                                if (item.KYHIEU == listPt[i] && item.DANGKYCHATLUONG_NAMDANGKY == listNam[j]) {
                                    TRANGTHAI = item.DANGKYCHATLUONG_TRANGTHAI;
                                    ID = item.DANGKYCHATLUONG_ID;
                                }
                            });
                            tabletext += "<td>";
                            if (TRANGTHAI != "") {
                                tabletext += '<a href="#" title="Sửa" data-toggle="modal" data-target="#model-edit-DANGKYCLBDNTG"  onclick="onclick_edit_DANGKYCLBDNTG(`' + listIDPT[i] + '`,`' + listTTB[i] + '`,`' + listPt[i] + '`,`' + listSL[i] + '`,`' + ID + '`,`' + listNam[j] + '`,`' + TRANGTHAI + '`)">' + TRANGTHAI + '</a><a href="#" class="delete" title="Xóa" onclick="delete_DANGKYCLBDNTG(`' + ID + '`)" style="float: right;"><i class="bi bi-x"></i></a>' + "</td>";
                            }
                            tabletext += "</td>";
                        }
                        tabletext += '<td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Thêm đăng ký" data-toggle="modal" data-target="#model-add-DANGKYCLBDNTG" onclick="click_add_DANGKYCLBDNTG(`' + listIDPT[i] + '`)"><i class="bi bi-plus-circle-fill"></i></a></div></td></tr>';
                    }
                    tabletext += "</tbody>";
                    $('#table-DANGKYCLBDNTG').html(tabletext);
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        };
        function click_add_DANGKYCLBDNTG(id = null) {
            debugger
            if (id != null) {
                $('#add-DANGKYCLBDNTG-IDBDNTG').attr('disabled', '');
                $('#add-DANGKYCLBDNTG-IDBDNTG').val(id);
            }
            else {
                $('#add-DANGKYCLBDNTG-IDBDNTG').removeAttr('disabled', '');
            }
            loadTrangThai('add-DANGKYCLBDNTG-DANGKYCHATLUONG-TRANGTHAI', '');
        }
        function add_DANGKYCLBDNTG() {
            var form = document.getElementById("form-add-DANGKYCLBDNTG");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var DANGKYCLBDNTG = {
                    IDBDNTG: $("#add-DANGKYCLBDNTG-IDBDNTG").val(),
                    //KYHIEU: $("#add-DANGKYCLBDNTG-IDBDNTG").find("option:selected").first().attr("text"),
                    DANGKYCHATLUONG_NAMDANGKY: $("#add-DANGKYCLBDNTG-DANGKYCHATLUONG-NAMDANGKY").val(),
                    DANGKYCHATLUONG_TRANGTHAI: $("#add-DANGKYCLBDNTG-DANGKYCHATLUONG-TRANGTHAI").val()
                };
                console.log(DANGKYCLBDNTG);
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/insert_dangkyclbdntg?id=" + DANGKYCLBDNTG.IDBDNTG,
                    dataType: "json",
                    data: JSON.stringify(DANGKYCLBDNTG),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm thông tin đăng ký chất lượng bơm dầu, nước, thông gió thành công.");
                        loadDataList_DANGKYCLBDNTG2();

                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $("#add-DANGKYCLBDNTG-DANGKYCHATLUONG-NAMDANGKY").val("");
                        $("#add-DANGKYCLBDNTG-DANGKYCHATLUONG-TRANGTHAI").val("");
                        $('#model-add-DANGKYCLBDNTG').modal("hide");
                        loadTable('table-DANGKYCLBDNTG');
                    },
                });
            }
            return false;
        }
        function onclick_edit_DANGKYCLBDNTG(IDBDNTG, TENTHIETBI, KYHIEU, SOLUONG, DANGKYCHATLUONG_ID, DANGKYCHATLUONG_NAMDANGKY, DANGKYCHATLUONG_TRANGTHAI) {
            loadTrangThai('edit-DANGKYCLBDNTG-DANGKYCHATLUONG_TRANGTHAI', DANGKYCHATLUONG_TRANGTHAI);
            $('#edit-DANGKYCLBDNTG-IDBDNTG').val(IDBDNTG);
            $("#edit-DANGKYCLBDNTG-TENTHIETBI").val(TENTHIETBI + " - " + KYHIEU);
            $("#edit-DANGKYCLBDNTG-DANGKYCHATLUONG_ID").val(DANGKYCHATLUONG_ID);
            $("#edit-DANGKYCLBDNTG-DANGKYCHATLUONG_NAMDANGKY").val(Number(DANGKYCHATLUONG_NAMDANGKY));
        }
        function edit_DANGKYCLBDNTG() {
            var form = document.getElementById("form-edit-DANGKYCLBDNTG");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var DANGKYCLBDNTG = {
                    ID: $("#edit-DANGKYCLBDNTG-DANGKYCHATLUONG_ID").val(),
                    IDBDNTG: $("#edit-DANGKYCLBDNTG-IDBDNTG").val(),
                    //KYHIEU: $("#add-DANGKYCLBDNTG-IDBDNTG").find("option:selected").first().attr("text"),
                    DANGKYCHATLUONG_NAMDANGKY: $("#edit-DANGKYCLBDNTG-DANGKYCHATLUONG_NAMDANGKY").val(),
                    DANGKYCHATLUONG_TRANGTHAI: $("#edit-DANGKYCLBDNTG-DANGKYCHATLUONG_TRANGTHAI").val()
                };
                console.log(DANGKYCLBDNTG);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/update_dangkyclbdntg?id=" + DANGKYCLBDNTG.ID,
                    dataType: "json",
                    data: JSON.stringify(DANGKYCLBDNTG),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Cập nhật thông tin đăng ký chất lượng thành công.");
                        loadDataList_DANGKYCLBDNTG2();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-DANGKYCLBDNTG').modal("hide");
                        loadTable('table-DANGKYCLBDNTG');
                    },
                });
            }
            return false;
        }
        function delete_DANGKYCLBDNTG(id) {
            let text = "Bạn có chắc muốn xóa thông tin đăng ký này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/delete_dangkyclbdntg?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    debugger
                    toastSuccess("Thành công", "Xóa thông tin đăng ký thành công!");
                    loadDataList_DANGKYCLBDNTG2();
                    loadTable('table-DANGKYCLBDNTG');
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa thông tin đăng ký không thành công!");
                })
            } else {

            }
        }

        // trang bị khác
        function loadTHIETBIKHAC() {
            var textselect = '';
            $.ajax({
                type: "GET",
                url: linkapi + "v2/thietbikhac?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $.each(data, function (key, item) {
                        textselect += "<option value=" + item.ID + ">" + item.KYHIEU + "</option>";
                    });
                    console.log("okGET");
                    $("#add-DANGKYCLTHIETBIKHAC-IDTHIETBIKHAC").html(textselect);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }
        function loadDataList_DANGKYCLTHIETBIKHAC() {
            loadTHIETBIKHAC();
            $.ajax({
                type: "GET",
                url: linkapi + "v2/dangkyclthietbikhac?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var listNam = new Array();
                    var i;
                    var listlen;
                    $.each(data, function (key, item) {
                        listlen = listNam.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (Number(item.DANGKYCHATLUONG_NAMDANGKY) == listNam[i]) break;
                        }
                        if (i == listlen) {
                            var j = 0;
                            for (j = 0; j < listlen; j++) {
                                if (Number(item.DANGKYCHATLUONG_NAMDANGKY) < listNam[j]) break;
                            }
                            listNam.splice(j, 0, Number(item.DANGKYCHATLUONG_NAMDANGKY));
                        }
                    });
                    listlen = listNam.length;
                    for (i = 0; i < listlen; i++) {
                        listNam[i] = String(listNam[i]);
                    }
                    var listPt = new Array();
                    var listSL = new Array();
                    var listIDPT = new Array();
                    var listTTB = new Array();
                    $.each(data, function (key, item) {
                        var listlen = listPt.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (item.KYHIEU == listPt[i]) break;
                        }
                        if (i == listlen) {
                            listPt.push(item.KYHIEU);
                            listSL.push(item.SOLUONG);
                            listIDPT.push(item.IDTHIETBIKHAC);
                            listTTB.push(item.TENTHIETBI);
                        }
                    });
                    console.log(listPt);
                    listlen = listNam.length;
                    var tabletext = "<thead><tr><th rowspan='2'>STT</th><th rowspan='2'>TÊN THIẾT BỊ</th><th rowspan='2'>KÝ HIỆU</th><th rowspan='2'>SỐ LƯỢNG</th><th colspan='" + listlen + "'>ĐĂNG KÝ CHẤT LƯỢNG HÀNG NĂM</th><th rowspan='2'>TÁC VỤ</th></tr><tr>";
                    for (i = 0; i < listlen; i++) {
                        tabletext += "<th>" + listNam[i] + "</th>";
                    }
                    tabletext += "</tr></thead><tbody>";
                    var i = 1;
                    var lenPt = listPt.length;
                    var TRANGTHAI;
                    var ID;
                    for (i = 0; i < lenPt; i++) {
                        tabletext += "<tr><td style='text-align: center;'>" + (i + 1) + "</td><td>" + listTTB[i] + "</td><td>" + listPt[i] + "</td><td>" + listSL[i] + "</td>";
                        for (j = 0; j < listlen; j++) {
                            TRANGTHAI = '';
                            $.each(data, function (key, item) {
                                if (item.KYHIEU == listPt[i] && item.DANGKYCHATLUONG_NAMDANGKY == listNam[j]) {
                                    TRANGTHAI = item.DANGKYCHATLUONG_TRANGTHAI;
                                    ID = item.DANGKYCHATLUONG_ID;
                                }
                            });
                            tabletext += "<td>";
                            if (TRANGTHAI != "") {
                                tabletext += '<a href="#" title="Sửa" data-toggle="modal" data-target="#model-edit-DANGKYCLTHIETBIKHAC"  onclick="onclick_edit_DANGKYCLTHIETBIKHAC(`' + listIDPT[i] + '`,`' + listPt[i] + '`,`' + listSL[i] + '`,`' + ID + '`,`' + listNam[j] + '`,`' + TRANGTHAI + '`)">' + TRANGTHAI + '</a><a href="#" class="delete" title="Xóa" onclick="delete_DANGKYCLTHIETBIKHAC(`' + ID + '`)" style="float: right;"><i class="bi bi-x"></i></a>' + "</td>";
                            }
                            tabletext += "</td>";
                        }
                        tabletext += '<td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Thêm đăng ký" data-toggle="modal" data-target="#model-add-DANGKYCLTHIETBIKHAC" onclick="click_add_DANGKYCLTHIETBIKHAC(`' + listIDPT[i] + '`)"><i class="bi bi-plus-circle-fill"></i></a></div></td></tr>';
                    }
                    tabletext += "</tbody>";
                    $('#table-DANGKYCLTHIETBIKHAC').html(tabletext);
                    loadTable('table-DANGKYCLTHIETBIKHAC');
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        };
        function loadDataList_DANGKYCLTHIETBIKHAC2() {
            loadTHIETBIKHAC();
            $.ajax({
                type: "GET",
                url: linkapi + "v2/dangkyclthietbikhac?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var listNam = new Array();
                    var i;
                    var listlen;
                    $.each(data, function (key, item) {
                        listlen = listNam.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (Number(item.DANGKYCHATLUONG_NAMDANGKY) == listNam[i]) break;
                        }
                        if (i == listlen) {
                            var j = 0;
                            for (j = 0; j < listlen; j++) {
                                if (Number(item.DANGKYCHATLUONG_NAMDANGKY) < listNam[j]) break;
                            }
                            listNam.splice(j, 0, Number(item.DANGKYCHATLUONG_NAMDANGKY));
                        }
                    });
                    listlen = listNam.length;
                    for (i = 0; i < listlen; i++) {
                        listNam[i] = String(listNam[i]);
                    }
                    var listPt = new Array();
                    var listSL = new Array();
                    var listIDPT = new Array();
                    $.each(data, function (key, item) {
                        var listlen = listPt.length;
                        var i = 0;
                        for (i = 0; i < listlen; i++) {
                            if (item.KYHIEU == listPt[i]) break;
                        }
                        if (i == listlen) {
                            listPt.push(item.KYHIEU);
                            listSL.push(item.SOLUONG);
                            listIDPT.push(item.IDTHIETBIKHAC);
                        }
                    });
                    console.log(listPt);
                    listlen = listNam.length;
                    var tabletext = "<thead><tr><th rowspan='2'>STT</th><th rowspan='2'>KÝ HIỆU</th><th rowspan='2'>SỐ LƯỢNG</th><th colspan='" + listlen + "'>ĐĂNG KÝ CHẤT LƯỢNG HÀNG NĂM</th><th rowspan='2'>TÁC VỤ</th></tr><tr>";
                    for (i = 0; i < listlen; i++) {
                        tabletext += "<th>" + listNam[i] + "</th>";
                    }
                    tabletext += "</tr></thead><tbody>";
                    var i = 1;
                    var lenPt = listPt.length;
                    var TRANGTHAI;
                    var ID;
                    for (i = 0; i < lenPt; i++) {
                        tabletext += "<tr><td style='text-align: center;'>" + (i + 1) + "</td><td>" + listPt[i] + "</td><td>" + listSL[i] + "</td>";
                        for (j = 0; j < listlen; j++) {
                            TRANGTHAI = '';
                            $.each(data, function (key, item) {
                                if (item.KYHIEU == listPt[i] && item.DANGKYCHATLUONG_NAMDANGKY == listNam[j]) {
                                    TRANGTHAI = item.DANGKYCHATLUONG_TRANGTHAI;
                                    ID = item.DANGKYCHATLUONG_ID;
                                }
                            });
                            tabletext += "<td>";
                            if (TRANGTHAI != "") {
                                tabletext += '<a href="#" title="Sửa" data-toggle="modal" data-target="#model-edit-DANGKYCLTHIETBIKHAC"  onclick="onclick_edit_DANGKYCLTHIETBIKHAC(`' + listIDPT[i] + '`,`' + listPt[i] + '`,`' + listSL[i] + '`,`' + ID + '`,`' + listNam[j] + '`,`' + TRANGTHAI + '`)">' + TRANGTHAI + '</a><a href="#" class="delete" title="Xóa" onclick="delete_DANGKYCLTHIETBIKHAC(`' + ID + '`)" style="float: right;"><i class="bi bi-x"></i></a>' + "</td>";
                            }
                            tabletext += "</td>";
                        }
                        tabletext += '<td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Thêm đăng ký" data-toggle="modal" data-target="#model-add-DANGKYCLTHIETBIKHAC" onclick="click_add_DANGKYCLTHIETBIKHAC(`' + listIDPT[i] + '`)"><i class="bi bi-plus-circle-fill"></i></a></div></td></tr>';
                    }
                    tabletext += "</tbody>";
                    $('#table-DANGKYCLTHIETBIKHAC').html(tabletext);
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        };
        function click_add_DANGKYCLTHIETBIKHAC(id = null) {
            debugger
            if (id != null) {
                $('#add-DANGKYCLTHIETBIKHAC-IDTHIETBIKHAC').attr('disabled', '');
                $('#add-DANGKYCLTHIETBIKHAC-IDTHIETBIKHAC').val(id);
            }
            else {
                $('#add-DANGKYCLTHIETBIKHAC-IDTHIETBIKHAC').removeAttr('disabled', '');
            }
            loadTrangThai('add-DANGKYCLTHIETBIKHAC-DANGKYCHATLUONG-TRANGTHAI', '');
        }
        function add_DANGKYCLTHIETBIKHAC() {
            var form = document.getElementById("form-add-DANGKYCLTHIETBIKHAC");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var DANGKYCLTHIETBIKHAC = {
                    IDTHIETBIKHAC: $("#add-DANGKYCLTHIETBIKHAC-IDTHIETBIKHAC").val(),
                    //KYHIEU: $("#add-DANGKYCLTHIETBIKHAC-IDTHIETBIKHAC").find("option:selected").first().attr("text"),
                    DANGKYCHATLUONG_NAMDANGKY: $("#add-DANGKYCLTHIETBIKHAC-DANGKYCHATLUONG-NAMDANGKY").val(),
                    DANGKYCHATLUONG_TRANGTHAI: $("#add-DANGKYCLTHIETBIKHAC-DANGKYCHATLUONG-TRANGTHAI").val()
                };
                console.log(DANGKYCLTHIETBIKHAC);
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/insert_dangkyclthietbikhac?id=" + DANGKYCLTHIETBIKHAC.IDTHIETBIKHAC,
                    dataType: "json",
                    data: JSON.stringify(DANGKYCLTHIETBIKHAC),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm thông tin đăng ký chất lượng thiết bị khác thành công.");
                        loadDataList_DANGKYCLTHIETBIKHAC2();

                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $("#add-DANGKYCLTHIETBIKHAC-DANGKYCHATLUONG-NAMDANGKY").val("");
                        $("#add-DANGKYCLTHIETBIKHAC-DANGKYCHATLUONG-TRANGTHAI").val("");
                        $('#model-add-DANGKYCLTHIETBIKHAC').modal("hide");
                        loadTable('table-DANGKYCLTHIETBIKHAC');
                    },
                });
            }
            return false;
        }
        function onclick_edit_DANGKYCLTHIETBIKHAC(IDTHIETBIKHAC, KYHIEU, SOLUONG, DANGKYCHATLUONG_ID, DANGKYCHATLUONG_NAMDANGKY, DANGKYCHATLUONG_TRANGTHAI) {
            loadTrangThai('edit-DANGKYCLTHIETBIKHAC-DANGKYCHATLUONG_TRANGTHAI', DANGKYCHATLUONG_TRANGTHAI);
            $('#edit-DANGKYCLTHIETBIKHAC-IDTHIETBIKHAC').val(IDTHIETBIKHAC);
            $("#edit-DANGKYCLTHIETBIKHAC-KYHIEU").val(KYHIEU);
            $("#edit-DANGKYCLTHIETBIKHAC-DANGKYCHATLUONG_ID").val(DANGKYCHATLUONG_ID);
            $("#edit-DANGKYCLTHIETBIKHAC-DANGKYCHATLUONG_NAMDANGKY").val(Number(DANGKYCHATLUONG_NAMDANGKY));
        }
        function edit_DANGKYCLTHIETBIKHAC() {
            var form = document.getElementById("form-edit-DANGKYCLTHIETBIKHAC");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var DANGKYCLTHIETBIKHAC = {
                    ID: $("#edit-DANGKYCLTHIETBIKHAC-DANGKYCHATLUONG_ID").val(),
                    IDTHIETBIKHAC: $("#edit-DANGKYCLTHIETBIKHAC-IDTHIETBIKHAC").val(),
                    //KYHIEU: $("#add-DANGKYCLTHIETBIKHAC-IDTHIETBIKHAC").find("option:selected").first().attr("text"),
                    DANGKYCHATLUONG_NAMDANGKY: $("#edit-DANGKYCLTHIETBIKHAC-DANGKYCHATLUONG_NAMDANGKY").val(),
                    DANGKYCHATLUONG_TRANGTHAI: $("#edit-DANGKYCLTHIETBIKHAC-DANGKYCHATLUONG_TRANGTHAI").val()
                };
                console.log(DANGKYCLTHIETBIKHAC);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/update_dangkyclthietbikhac?id=" + DANGKYCLTHIETBIKHAC.ID,
                    dataType: "json",
                    data: JSON.stringify(DANGKYCLTHIETBIKHAC),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Cập nhật thông tin đăng ký chất lượng thành công.");
                        loadDataList_DANGKYCLTHIETBIKHAC2();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-DANGKYCLTHIETBIKHAC').modal("hide");
                        loadTable('table-DANGKYCLTHIETBIKHAC');
                    },
                });
            }
            return false;
        }
        function delete_DANGKYCLTHIETBIKHAC(id) {
            let text = "Bạn có chắc muốn xóa thông tin đăng ký này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/delete_dangkyclthietbikhac?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    toastSuccess("Thành công", "Xóa thông tin đăng ký thành công!");
                    loadDataList_DANGKYCLTHIETBIKHAC2();
                    loadTable('table-DANGKYCLTHIETBIKHAC');
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa thông tin đăng ký không thành công!");
                })
            } else {

            }
        }
    </script>
</asp:Content>
