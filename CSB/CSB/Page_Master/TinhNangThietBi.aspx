<%@ Page Title="Tính năng các thiết bị trên tàu" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="TinhNangThietBi.aspx.cs" Inherits="CSB.Page_Master.TinhNangThietBi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .container {
            padding-right: 0px;
            padding-left: 0px;
        }
        /*.row .form-group {
            margin-bottom: 10px;
        }*/
        a {
            color: #01b5f9;
        }
        .col-form-label {
            padding-top: 0;
            padding-bottom: 0;
        }
        .sub-title {
            margin-bottom: 10px;
        }
        .form-group {
            margin-bottom: 10px;
        }
    </style>
    <div class="main-body">
        <div class="page-wrapper">
            <div class="row">
                <div class="col-sm-12" style="padding: 0px 5px;">
                    <div class="card">
                        <div class="card-header">
                            <h5 id="name">TÍNH NĂNG CÁC THIẾT BỊ - <span id="tenTau">Tên tàu</span></h5>
                            <div class="page-header-breadcrumb">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#!">Quản lý tàu</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#!">Hồ sơ tàu</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#!">Tính năng thiết bị</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-block">
                            <div class="">
                                <ul class="nav nav-tabs">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-toggle="tab" href="#HANGHAI">Hàng hải</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" onclick="loadDataList_VUKHI()" href="#VUKHI">Vũ khí</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" onclick="loadDataList_RADA()" href="#RADA">Rada</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" onclick="loadDataList_TOMAY()" href="#TOMAY">Các tổ máy</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" onclick="loadDataList_HETRUCCHANVIT()" href="#HETRUCHANVIT">Hệ trục chân vịt</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#NEO-XICHNEO">Neo, xích neo</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#BOMDAU-NUOC-THONGGIO">Bơm dầu, nước, thông gió</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#TRANGBIKHAC">Trang bị khác</a>
                                    </li>
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div id="HANGHAI" class="container tab-pane active">
                                        <br>
                                        <h5>HÀNG HẢI</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_HANGHAI()" class="btn btn-primary mb-2"><span class="glyphicon glyphicon-refresh"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_HANGHAI" class="btn btn-primary mb-2" data-toggle="modal" data-target="#model-add-HANGHAI" style="padding-top: 4px;"><span class="glyphicon glyphicon-plus-sign"></span>Thêm hàng hải</button>
                                        </div>
                                        <table id="table-HANGHAI" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="VUKHI" class="container tab-pane">
                                        <br>
                                        <h5>VŨ KHÍ</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_VUKHI()" class="btn btn-primary mb-2"><span class="glyphicon glyphicon-refresh"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_VUKHI" class="btn btn-primary mb-2" data-toggle="modal" data-target="#model-add-VUKHI" style="padding-top: 4px;"><span class="glyphicon glyphicon-plus-sign"></span>Thêm vũ khí</button>
                                        </div>
                                        <table id="table-VUKHI" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="RADA" class="container tab-pane">
                                        <br>
                                        <h5>THÔNG TIN - RA ĐA</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_RADA()" class="btn btn-primary mb-2"><span class="glyphicon glyphicon-refresh"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_RADA" class="btn btn-primary mb-2" data-toggle="modal" data-target="#model-add-RADA" style="padding-top: 4px;"><span class="glyphicon glyphicon-plus-sign"></span>Thêm ra đa</button>
                                        </div>
                                        <table id="table-RADA" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="TOMAY" class="container tab-pane">
                                        <br>
                                        <h5>MÁY CHÍNH</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_MAYCHINH()" class="btn btn-primary mb-2"><span class="glyphicon glyphicon-refresh"></span>&nbsp;Load dữ liệu</button>
                                            <button class="btn btn-primary mb-2" data-toggle="modal" data-target="#model-add-MAYCHINH" style="padding-top: 4px;"><span class="glyphicon glyphicon-plus-sign"></span>Thêm máy chính</button>
                                        </div>
                                        <table id="table-MAYCHINH" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                        <br />
                                        <h5>MÁY PHỤ PHÁT ĐIỆN</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_MAYPHU()" class="btn btn-primary mb-2"><span class="glyphicon glyphicon-refresh"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_MAYPHU" class="btn btn-primary mb-2" data-toggle="modal" data-target="#model-add-MAYPHU" style="padding-top: 4px;"><span class="glyphicon glyphicon-plus-sign"></span>Thêm máy phụ</button>
                                        </div>
                                        <table id="table-MAYPHU" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                        <br />
                                        <h5>CÁC TỔ MÁY CHUYÊN DỤNG</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_MAYCHUYENDUNG()" class="btn btn-primary mb-2"><span class="glyphicon glyphicon-refresh"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_MAYCHUYENDUNG" class="btn btn-primary mb-2" data-toggle="modal" data-target="#model-add-MAYCHUYENDUNG" style="padding-top: 4px;"><span class="glyphicon glyphicon-plus-sign"></span>Thêm máy chuyên dụng</button>
                                        </div>
                                        <table id="table-MAYCHUYENDUNG" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="HETRUCHANVIT" class="container tab-pane">
                                        <br>
                                        <h5>HỆ TRỤC CHÂN VỊT</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_HETRUCCHANVIT()" class="btn btn-primary mb-2"><span class="glyphicon glyphicon-refresh"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_HETRUCCHANVIT" class="btn btn-primary mb-2" data-toggle="modal" data-target="#model-add-HETRUCCHANVIT" style="padding-top: 4px;"><span class="glyphicon glyphicon-plus-sign"></span>Thêm hệ trục chân vịt</button>
                                        </div>
                                        <table id="table-HETRUCCHANVIT" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="NEO-XICHNEO" class="container tab-pane">
                                        <br>
                                        <h5>NEO, XÍCH NEO</h5>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                    <div id="BOMDAU-NUOC-THONGGIO" class="container tab-pane">
                                        <br>
                                        <h5>BẢNG THỐNG KÊ CÁC BƠM DẦU, NƯỚC VÀ THÔNG GIÓ</h5>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                    <div id="TRANGBIKHAC" class="container tab-pane">
                                        <br>
                                        <h5>CÁC TRANG BỊ KHÁC</h5>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <div id="modal">
        <div class="modal fade" id="model-add-HANGHAI" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-add-HANGHAI" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Thêm thông tin hàng hải của tàu</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ký hiệu   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add-HANGHAI-KYHIEU" placeholder="Nhập ký hiệu hàng hải" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Số lượng  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" step="any" class="form-control" id="add-HANGHAI-SOLUONG" placeholder="Nhập số lượng" required min="0">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="add_HANGHAI()" class="btn btn-info">Thêm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-edit-HANGHAI" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-edit-HANGHAI" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Sửa thông tin hàng hải của tàu</h4>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" id="edit-HANGHAI-ID" />
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ký hiệu   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="edit-HANGHAI-KYHIEU" placeholder="Nhập ký hiệu hàng hải" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Số lượng  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" step="any" class="form-control" id="edit-HANGHAI-SOLUONG" name="GhiChu" placeholder="Nhập số lượng" required min="0">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="edit_HANGHAI()" class="btn btn-info">Lưu</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
        <div class="modal fade" id="model-add-VUKHI" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-add-VUKHI" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Thêm thông tin vũ khí của tàu</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ký hiệu   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add-VUKHI-KYHIEU" placeholder="Nhập ký hiệu vũ khí" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Số lượng  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" step="any" class="form-control" id="add-VUKHI-SOLUONG" placeholder="Nhập số lượng" required min="0">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="add_VUKHI()" class="btn btn-info">Thêm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-edit-VUKHI" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-edit-VUKHI" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Sửa thông tin vũ khí của tàu</h4>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" id="edit-VUKHI-ID" />
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ký hiệu   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="edit-VUKHI-KYHIEU" placeholder="Nhập ký hiệu hàng hải" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Số lượng  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" step="any" class="form-control" id="edit-VUKHI-SOLUONG" name="GhiChu" placeholder="Nhập số lượng" required min="0">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="edit_VUKHI()" class="btn btn-info">Lưu</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-add-RADA" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-add-RADA" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Thêm thông tin - ra đa của tàu</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ký hiệu   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add-RADA-KYHIEU" placeholder="Nhập ký hiệu thông tin - ra đa" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Số lượng  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" step="any" class="form-control" id="add-RADA-SOLUONG" placeholder="Nhập số lượng" required min="0">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="add_RADA()" class="btn btn-info">Thêm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-edit-RADA" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-edit-RADA" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Sửa thông tin - ra đa của tàu</h4>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" id="edit-RADA-ID" />
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ký hiệu   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="edit-RADA-KYHIEU" placeholder="Nhập ký hiệu thông tin - ra đa" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Số lượng  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" step="any" class="form-control" id="edit-RADA-SOLUONG" name="GhiChu" placeholder="Nhập số lượng" required min="0">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="edit_RADA()" class="btn btn-info">Lưu</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-add-MAYCHINH" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <form id="form-add-MAYCHINH" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Thêm máy chính của tàu</h4>
                            </div>
                            <div class="modal-body">
                                <div class="">
                                    <h4 class="sub-title">Thông số cơ bản</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHINH-THONGSOCOBAN-KYHIEU" required class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Năm sản xuất: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" id="add-MAYCHINH-THONGSOCOBAN-NAMSANXUAT" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Nơi sản xuất: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHINH-THONGSOCOBAN-NOISANXUAT" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Năm lắp ráp: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" id="add-MAYCHINH-THONGSOCOBAN-NAMLAPRAP" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Vị trí lắp ráp: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHINH-THONGSOCOBAN-VITRILAPRAP" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số hiệu máy: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHINH-THONGSOCOBAN-SOHIEUMAY" required class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Công suất: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHINH-THONGSOCOBAN-CONGSUAT" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Vòng quay: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHINH-THONGSOCOBAN-VONGQUAY" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều quay: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHINH-THONGSOCOBAN-CHIEUQUAY" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Nguồn khởi động: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHINH-THONGSOCOBAN-NGUONKHOIDONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Hệ thống điều khiển: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHINH-THONGSOCOBAN-HETHONGDIEUKHIEN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Trọng lượng khô (kg): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHINH-THONGSOCOBAN-TRONGLUONG" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Kích thước</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều dài (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHINH-THONGSOCOBAN-KICHTHUOCMAY-DAI" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều rộng (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHINH-THONGSOCOBAN-KICHTHUOCMAY-RONG" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều cao (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHINH-THONGSOCOBAN-KICHTHUOCMAY-CAO" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Chu kỳ sửa chữa</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tiểu tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHINH-THONGSOCOBAN-CHUKYSUACHUA-TIEUTU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Trung tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHINH-THONGSOCOBAN-CHUKYSUACHUA-TRUNGTU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Đại tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHINH-THONGSOCOBAN-CHUKYSUACHUA-DAITU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Loại điện</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Điện áp (V): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHINH-THONGSOCOBAN-LOAIDIEN-DIENAP" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tần số (Hz): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHINH-THONGSOCOBAN-LOAIDIEN-TANSO" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Phương pháp truyền tải</h4>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu ly hợp - bộ giảm vòng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHINH-PHUONGPHAPTRUYENTAI-KYHIEULYHOP_BOGIAMVONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số hiệu ly hợp - bộ giảm vòng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHINH-PHUONGPHAPTRUYENTAI-SOHIEULYHOP_BOGIAMVONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số lượng và kích thước của dây curoa: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHINH-PHUONGPHAPTRUYENTAI-CUROA" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu vòng bi: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHINH-PHUONGPHAPTRUYENTAI-KYHIEUVONGBI" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tỷ số truyền: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHINH-PHUONGPHAPTRUYENTAI-TYSOTRUYEN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Khớp nối cứng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHINH-PHUONGPHAPTRUYENTAI-KHOPNOICUNG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Khớp nối mềm: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHINH-PHUONGPHAPTRUYENTAI-KHOPNOIMEM" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="add_MAYCHINH()" class="btn btn-info">Thêm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-edit-MAYCHINH" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <form id="form-edit-MAYCHINH" onsubmit="return false">
                        <input type="hidden" id="edit-MAYCHINH-ID" />
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Sửa thông tin máy chính của tàu</h4>
                            </div>
                            <div class="modal-body">
                                <div class="">
                                    <h4 class="sub-title">Thông số cơ bản</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHINH-THONGSOCOBAN-KYHIEU" required class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Năm sản xuất: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" id="edit-MAYCHINH-THONGSOCOBAN-NAMSANXUAT" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Nơi sản xuất: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHINH-THONGSOCOBAN-NOISANXUAT" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Năm lắp ráp: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" id="edit-MAYCHINH-THONGSOCOBAN-NAMLAPRAP" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Vị trí lắp ráp: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHINH-THONGSOCOBAN-VITRILAPRAP" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số hiệu máy: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHINH-THONGSOCOBAN-SOHIEUMAY" required class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Công suất: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHINH-THONGSOCOBAN-CONGSUAT" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Vòng quay: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHINH-THONGSOCOBAN-VONGQUAY" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều quay: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHINH-THONGSOCOBAN-CHIEUQUAY" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Nguồn khởi động: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHINH-THONGSOCOBAN-NGUONKHOIDONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Hệ thống điều khiển: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHINH-THONGSOCOBAN-HETHONGDIEUKHIEN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Trọng lượng khô (kg): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHINH-THONGSOCOBAN-TRONGLUONG" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Kích thước</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều dài (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHINH-THONGSOCOBAN-KICHTHUOCMAY-DAI" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều rộng (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHINH-THONGSOCOBAN-KICHTHUOCMAY-RONG" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều cao (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHINH-THONGSOCOBAN-KICHTHUOCMAY-CAO" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Chu kỳ sửa chữa</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tiểu tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHINH-THONGSOCOBAN-CHUKYSUACHUA-TIEUTU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Trung tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHINH-THONGSOCOBAN-CHUKYSUACHUA-TRUNGTU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Đại tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHINH-THONGSOCOBAN-CHUKYSUACHUA-DAITU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Loại điện</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Điện áp (V): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHINH-THONGSOCOBAN-LOAIDIEN-DIENAP" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tần số (Hz): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHINH-THONGSOCOBAN-LOAIDIEN-TANSO" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Phương pháp truyền tải</h4>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu ly hợp - bộ giảm vòng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHINH-PHUONGPHAPTRUYENTAI-KYHIEULYHOP_BOGIAMVONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số hiệu ly hợp - bộ giảm vòng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHINH-PHUONGPHAPTRUYENTAI-SOHIEULYHOP_BOGIAMVONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số lượng và kích thước của dây curoa: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHINH-PHUONGPHAPTRUYENTAI-CUROA" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu vòng bi: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHINH-PHUONGPHAPTRUYENTAI-KYHIEUVONGBI" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tỷ số truyền: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHINH-PHUONGPHAPTRUYENTAI-TYSOTRUYEN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Khớp nối cứng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHINH-PHUONGPHAPTRUYENTAI-KHOPNOICUNG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Khớp nối mềm: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHINH-PHUONGPHAPTRUYENTAI-KHOPNOIMEM" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="edit_MAYCHINH()" class="btn btn-info">Lưu</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-add-MAYPHU" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <form id="form-add-MAYPHU" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Thêm máy phụ của tàu</h4>
                            </div>
                            <div class="modal-body">
                                <div class="">
                                    <h4 class="sub-title">Thông số cơ bản</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYPHU-THONGSOCOBAN-KYHIEU" required class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Năm sản xuất: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" id="add-MAYPHU-THONGSOCOBAN-NAMSANXUAT" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Nơi sản xuất: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYPHU-THONGSOCOBAN-NOISANXUAT" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Năm lắp ráp: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" id="add-MAYPHU-THONGSOCOBAN-NAMLAPRAP" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Vị trí lắp ráp: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYPHU-THONGSOCOBAN-VITRILAPRAP" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số hiệu máy: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYPHU-THONGSOCOBAN-SOHIEUMAY" required class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Công suất: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYPHU-THONGSOCOBAN-CONGSUAT" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Vòng quay: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYPHU-THONGSOCOBAN-VONGQUAY" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều quay: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYPHU-THONGSOCOBAN-CHIEUQUAY" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Nguồn khởi động: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYPHU-THONGSOCOBAN-NGUONKHOIDONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Hệ thống điều khiển: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYPHU-THONGSOCOBAN-HETHONGDIEUKHIEN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Trọng lượng khô (kg): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYPHU-THONGSOCOBAN-TRONGLUONG" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Kích thước</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều dài (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYPHU-THONGSOCOBAN-KICHTHUOCMAY-DAI" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều rộng (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYPHU-THONGSOCOBAN-KICHTHUOCMAY-RONG" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều cao (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYPHU-THONGSOCOBAN-KICHTHUOCMAY-CAO" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Chu kỳ sửa chữa</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tiểu tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYPHU-THONGSOCOBAN-CHUKYSUACHUA-TIEUTU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Trung tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYPHU-THONGSOCOBAN-CHUKYSUACHUA-TRUNGTU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Đại tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYPHU-THONGSOCOBAN-CHUKYSUACHUA-DAITU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Loại điện</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Điện áp (V): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYPHU-THONGSOCOBAN-LOAIDIEN-DIENAP" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tần số (Hz): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYPHU-THONGSOCOBAN-LOAIDIEN-TANSO" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Phương pháp truyền tải</h4>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu ly hợp - bộ giảm vòng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYPHU-PHUONGPHAPTRUYENTAI-KYHIEULYHOP_BOGIAMVONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số hiệu ly hợp - bộ giảm vòng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYPHU-PHUONGPHAPTRUYENTAI-SOHIEULYHOP_BOGIAMVONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số lượng và kích thước của dây curoa: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYPHU-PHUONGPHAPTRUYENTAI-CUROA" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu vòng bi: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYPHU-PHUONGPHAPTRUYENTAI-KYHIEUVONGBI" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tỷ số truyền: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYPHU-PHUONGPHAPTRUYENTAI-TYSOTRUYEN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Khớp nối cứng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYPHU-PHUONGPHAPTRUYENTAI-KHOPNOICUNG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Khớp nối mềm: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYPHU-PHUONGPHAPTRUYENTAI-KHOPNOIMEM" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="add_MAYPHU()" class="btn btn-info">Thêm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-edit-MAYPHU" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <form id="form-edit-MAYPHU" onsubmit="return false">
                        <input type="hidden" id="edit-MAYPHU-ID" />
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Sửa thông tin máy phụ của tàu</h4>
                            </div>
                            <div class="modal-body">
                                <div class="">
                                    <h4 class="sub-title">Thông số cơ bản</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYPHU-THONGSOCOBAN-KYHIEU" required class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Năm sản xuất: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" id="edit-MAYPHU-THONGSOCOBAN-NAMSANXUAT" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Nơi sản xuất: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYPHU-THONGSOCOBAN-NOISANXUAT" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Năm lắp ráp: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" id="edit-MAYPHU-THONGSOCOBAN-NAMLAPRAP" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Vị trí lắp ráp: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYPHU-THONGSOCOBAN-VITRILAPRAP" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số hiệu máy: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYPHU-THONGSOCOBAN-SOHIEUMAY" required class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Công suất: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYPHU-THONGSOCOBAN-CONGSUAT" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Vòng quay: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYPHU-THONGSOCOBAN-VONGQUAY" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều quay: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYPHU-THONGSOCOBAN-CHIEUQUAY" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Nguồn khởi động: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYPHU-THONGSOCOBAN-NGUONKHOIDONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Hệ thống điều khiển: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYPHU-THONGSOCOBAN-HETHONGDIEUKHIEN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Trọng lượng khô (kg): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYPHU-THONGSOCOBAN-TRONGLUONG" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Kích thước</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều dài (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYPHU-THONGSOCOBAN-KICHTHUOCMAY-DAI" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều rộng (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYPHU-THONGSOCOBAN-KICHTHUOCMAY-RONG" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều cao (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYPHU-THONGSOCOBAN-KICHTHUOCMAY-CAO" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Chu kỳ sửa chữa</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tiểu tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYPHU-THONGSOCOBAN-CHUKYSUACHUA-TIEUTU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Trung tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYPHU-THONGSOCOBAN-CHUKYSUACHUA-TRUNGTU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Đại tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYPHU-THONGSOCOBAN-CHUKYSUACHUA-DAITU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Loại điện</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Điện áp (V): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYPHU-THONGSOCOBAN-LOAIDIEN-DIENAP" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tần số (Hz): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYPHU-THONGSOCOBAN-LOAIDIEN-TANSO" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Phương pháp truyền tải</h4>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu ly hợp - bộ giảm vòng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYPHU-PHUONGPHAPTRUYENTAI-KYHIEULYHOP_BOGIAMVONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số hiệu ly hợp - bộ giảm vòng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYPHU-PHUONGPHAPTRUYENTAI-SOHIEULYHOP_BOGIAMVONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số lượng và kích thước của dây curoa: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYPHU-PHUONGPHAPTRUYENTAI-CUROA" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu vòng bi: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYPHU-PHUONGPHAPTRUYENTAI-KYHIEUVONGBI" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tỷ số truyền: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYPHU-PHUONGPHAPTRUYENTAI-TYSOTRUYEN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Khớp nối cứng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYPHU-PHUONGPHAPTRUYENTAI-KHOPNOICUNG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Khớp nối mềm: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYPHU-PHUONGPHAPTRUYENTAI-KHOPNOIMEM" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="edit_MAYPHU()" class="btn btn-info">Lưu</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-add-MAYCHUYENDUNG" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <form id="form-add-MAYCHUYENDUNG" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Thêm tổ máy chuyên dụng của tàu</h4>
                            </div>
                            <div class="modal-body">
                                <div class="">
                                    <h4 class="sub-title">Thông số cơ bản</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHUYENDUNG-THONGSOCOBAN-KYHIEU" required class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Năm sản xuất: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" id="add-MAYCHUYENDUNG-THONGSOCOBAN-NAMSANXUAT" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Nơi sản xuất: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHUYENDUNG-THONGSOCOBAN-NOISANXUAT" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Năm lắp ráp: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" id="add-MAYCHUYENDUNG-THONGSOCOBAN-NAMLAPRAP" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Vị trí lắp ráp: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHUYENDUNG-THONGSOCOBAN-VITRILAPRAP" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số hiệu máy: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHUYENDUNG-THONGSOCOBAN-SOHIEUMAY" required class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Công suất: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHUYENDUNG-THONGSOCOBAN-CONGSUAT" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Vòng quay: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHUYENDUNG-THONGSOCOBAN-VONGQUAY" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều quay: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHUYENDUNG-THONGSOCOBAN-CHIEUQUAY" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Nguồn khởi động: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHUYENDUNG-THONGSOCOBAN-NGUONKHOIDONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Hệ thống điều khiển: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHUYENDUNG-THONGSOCOBAN-HETHONGDIEUKHIEN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Trọng lượng khô (kg): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHUYENDUNG-THONGSOCOBAN-TRONGLUONG" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Kích thước</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều dài (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHUYENDUNG-THONGSOCOBAN-KICHTHUOCMAY-DAI" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều rộng (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHUYENDUNG-THONGSOCOBAN-KICHTHUOCMAY-RONG" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều cao (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHUYENDUNG-THONGSOCOBAN-KICHTHUOCMAY-CAO" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Chu kỳ sửa chữa</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tiểu tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHUYENDUNG-THONGSOCOBAN-CHUKYSUACHUA-TIEUTU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Trung tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHUYENDUNG-THONGSOCOBAN-CHUKYSUACHUA-TRUNGTU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Đại tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHUYENDUNG-THONGSOCOBAN-CHUKYSUACHUA-DAITU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Loại điện</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Điện áp (V): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHUYENDUNG-THONGSOCOBAN-LOAIDIEN-DIENAP" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tần số (Hz): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="add-MAYCHUYENDUNG-THONGSOCOBAN-LOAIDIEN-TANSO" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Phương pháp truyền tải</h4>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu ly hợp - bộ giảm vòng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KYHIEULYHOP_BOGIAMVONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số hiệu ly hợp - bộ giảm vòng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-SOHIEULYHOP_BOGIAMVONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số lượng và kích thước của dây curoa: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-CUROA" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu vòng bi: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KYHIEUVONGBI" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tỷ số truyền: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-TYSOTRUYEN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Khớp nối cứng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KHOPNOICUNG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Khớp nối mềm: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KHOPNOIMEM" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="add_MAYCHUYENDUNG()" class="btn btn-info">Thêm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-edit-MAYCHUYENDUNG" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <form id="form-edit-MAYCHUYENDUNG" onsubmit="return false">
                        <input type="hidden" id="edit-MAYCHUYENDUNG-ID" />
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Sửa thông tin tổ máy chuyên dụng của tàu</h4>
                            </div>
                            <div class="modal-body">
                                <div class="">
                                    <h4 class="sub-title">Thông số cơ bản</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-KYHIEU" required class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Năm sản xuất: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-NAMSANXUAT" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Nơi sản xuất: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-NOISANXUAT" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Năm lắp ráp: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-NAMLAPRAP" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Vị trí lắp ráp: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-VITRILAPRAP" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số hiệu máy: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-SOHIEUMAY" required class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Công suất: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-CONGSUAT" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Vòng quay: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-VONGQUAY" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều quay: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-CHIEUQUAY" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Nguồn khởi động: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-NGUONKHOIDONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Hệ thống điều khiển: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-HETHONGDIEUKHIEN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Trọng lượng khô (kg): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-TRONGLUONG" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Kích thước</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều dài (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-KICHTHUOCMAY-DAI" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều rộng (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-KICHTHUOCMAY-RONG" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều cao (m): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-KICHTHUOCMAY-CAO" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Chu kỳ sửa chữa</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tiểu tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-CHUKYSUACHUA-TIEUTU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Trung tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-CHUKYSUACHUA-TRUNGTU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Đại tu (h): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-CHUKYSUACHUA-DAITU" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Loại điện</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Điện áp (V): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-LOAIDIEN-DIENAP" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tần số (Hz): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" step="any" id="edit-MAYCHUYENDUNG-THONGSOCOBAN-LOAIDIEN-TANSO" min="0" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Phương pháp truyền tải</h4>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu ly hợp - bộ giảm vòng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KYHIEULYHOP_BOGIAMVONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số hiệu ly hợp - bộ giảm vòng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-SOHIEULYHOP_BOGIAMVONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số lượng và kích thước của dây curoa: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-CUROA" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu vòng bi: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KYHIEUVONGBI" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tỷ số truyền: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-TYSOTRUYEN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Khớp nối cứng: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KHOPNOICUNG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Khớp nối mềm: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KHOPNOIMEM" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="edit_MAYCHUYENDUNG()" class="btn btn-info">Lưu</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-add-HETRUCCHANVIT" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <form id="form-add-HETRUCCHANVIT" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header" style="padding: 10px 16px;">
                                <h4 class="title-modal-banve font-weight-bold">Thêm hệ trục chân vịt của tàu</h4>
                            </div>
                            <div class="modal-body" style="padding: 6px 16px;">
                                <div class="">
                                    <h4 class="sub-title">Trục</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tổng chiều dài: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-HETRUCCHANVIT-TRUC-TONGCHIEUDAI" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Vật liệu: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-HETRUCCHANVIT-TRUC-VATLIEU" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tổng trọng lượng: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-HETRUCCHANVIT-TRUC-TONGTRONGLUONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">D trục ghép (mm): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-HETRUCCHANVIT-TRUC-DUONGKINHTRUCGHEPCHANVIT" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">D trục trung gian (mm): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-HETRUCCHANVIT-TRUC-DUONGKINHTRUCTRUNGGIAN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">D trục xoắn (mm): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-HETRUCCHANVIT-TRUC-DUONGKINHTRUCXOAN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">D trục chặn (mm): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-HETRUCCHANVIT-TRUC-DUONGKINHTRUCCHAN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                       <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Góc nghiêng trục (độ): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-HETRUCCHANVIT-TRUC-GOCNGIENGTRUC" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Chân vịt</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Loại chân vịt: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-HETRUCCHANVIT-CHANVIT-LOAICHANVIT" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Đường kính (mm): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-HETRUCCHANVIT-CHANVIT-DUONGKINH" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số cánh: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-HETRUCCHANVIT-CHANVIT-SOCANH" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Vật liệu: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-HETRUCCHANVIT-CHANVIT-VATLIEU" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Trọng lượng (kg): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-HETRUCCHANVIT-CHANVIT-TRONGLUONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều quay: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-HETRUCCHANVIT-CHANVIT-CHIEUQUAY" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-8">
                                            <div class="form-group row">
                                                <label class="col-sm-8 col-form-label">Vòng quay định mức (vòng/ph): </label>
                                                <div class="col-sm-4">
                                                    <input type="number" min="0" step="any" id="add-HETRUCCHANVIT-CHANVIT-VONGQUAYDINHMUC" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Ổ đỡ</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số lượng: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-HETRUCCHANVIT-ODO-SOLUONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Loại: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-HETRUCCHANVIT-ODO-LOAI" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Mỡ dầu bôi trơn: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="add-HETRUCCHANVIT-ODO-MODAUBOITRON" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer" style="padding: 8px 16px;">
                                <button type="submit" onclick="add_HETRUCCHANVIT()" class="btn btn-info">Thêm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-edit-HETRUCCHANVIT" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <form id="form-edit-HETRUCCHANVIT" onsubmit="return false">
                        <input type="hidden" id="edit-HETRUCCHANVIT-ID" />
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header" style="padding: 10px 16px;">
                                <h4 class="title-modal-banve font-weight-bold">Sửa thông tin hệ trục chân vịt của tàu</h4>
                            </div>
                            <div class="modal-body" style="padding: 6px 16px;">
                                <div class="">
                                    <h4 class="sub-title">Trục</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tổng chiều dài: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="edit-HETRUCCHANVIT-TRUC-TONGCHIEUDAI" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Vật liệu: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-HETRUCCHANVIT-TRUC-VATLIEU" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Tổng trọng lượng: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="edit-HETRUCCHANVIT-TRUC-TONGTRONGLUONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">D trục ghép (mm): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="edit-HETRUCCHANVIT-TRUC-DUONGKINHTRUCGHEPCHANVIT" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">D trục trung gian (mm): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="edit-HETRUCCHANVIT-TRUC-DUONGKINHTRUCTRUNGGIAN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">D trục xoắn (mm): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="edit-HETRUCCHANVIT-TRUC-DUONGKINHTRUCXOAN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">D trục chặn (mm): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="edit-HETRUCCHANVIT-TRUC-DUONGKINHTRUCCHAN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                       <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Góc nghiêng trục (độ): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="edit-HETRUCCHANVIT-TRUC-GOCNGIENGTRUC" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Chân vịt</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Loại chân vịt: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-HETRUCCHANVIT-CHANVIT-LOAICHANVIT" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Đường kính (mm): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="edit-HETRUCCHANVIT-CHANVIT-DUONGKINH" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số cánh: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="edit-HETRUCCHANVIT-CHANVIT-SOCANH" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Vật liệu: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-HETRUCCHANVIT-CHANVIT-VATLIEU" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Trọng lượng (kg): </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="edit-HETRUCCHANVIT-CHANVIT-TRONGLUONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Chiều quay: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-HETRUCCHANVIT-CHANVIT-CHIEUQUAY" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-8">
                                            <div class="form-group row">
                                                <label class="col-sm-8 col-form-label">Vòng quay định mức (vòng/ph): </label>
                                                <div class="col-sm-4">
                                                    <input type="number" min="0" step="any" id="edit-HETRUCCHANVIT-CHANVIT-VONGQUAYDINHMUC" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="sub-title">Ổ đỡ</h4>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Số lượng: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="edit-HETRUCCHANVIT-ODO-SOLUONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Loại: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-HETRUCCHANVIT-ODO-LOAI" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Mỡ dầu bôi trơn: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" id="edit-HETRUCCHANVIT-ODO-MODAUBOITRON" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer" style="padding: 8px 16px;">
                                <button type="submit" onclick="edit_HETRUCCHANVIT()" class="btn btn-info">Lưu</button>
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
        $(document).ready(function () {
            loadDataList_HANGHAI();
        });

        // HÀNG HẢI
        function loadDataList_HANGHAI() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/hanghai?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>Ký hiệu</th><th>Số lượng</th><th>Tác vụ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.KYHIEU + "</td><td>" + item.SOLUONG + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-HANGHAI"  onclick="onclick_edit_HANGHAI(`' + item.ID + '`,`' + item.KYHIEU + '`,`' + item.SOLUONG + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_HANGHAI(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table-HANGHAI').html(tabletext);
                    console.log("okGET");
                    loadTableHANGHAI();
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
        };
        function loadTableHANGHAI() {
            $('table[id=table-HANGHAI]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 90 },
                        { name: 'Ký hiệu', width: 380 },
                        { name: 'Số lượng', width: 380 },
                        { name: 'Tác vụ', width: 150 },
                    ],
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
            });
        };
        function add_HANGHAI() {
            var form = document.getElementById("form-add-HANGHAI");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var HANGHAI = {
                    KYHIEU: $("#add-HANGHAI-KYHIEU").val(),
                    SOLUONG: $("#add-HANGHAI-SOLUONG").val()
                };
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/insert_hanghai?id=" + getParameterByName("Ship_ID"),
                    dataType: "json",
                    data: JSON.stringify(HANGHAI),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm thông tin hàng hải thành công.");
                        loadDataList_HANGHAI();
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $("#add-HANGHAI-KYHIEU").val("");
                        $("#add-HANGHAI-SOLUONG").val("");
                        $('#model-add-HANGHAI').modal("hide");
                    },
                });
            }
            return false;
        }
        function onclick_edit_HANGHAI(ID, KYHIEU, SOLUONG) {
            $('#edit-HANGHAI-ID').val(ID);
            $("#edit-HANGHAI-KYHIEU").val(KYHIEU);
            $("#edit-HANGHAI-SOLUONG").val(SOLUONG);
        }
        function edit_HANGHAI() {
            var form = document.getElementById("form-edit-HANGHAI");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var HANGHAI = {
                    ID: $("#edit-HANGHAI-ID").val(),
                    KYHIEU: $("#edit-HANGHAI-KYHIEU").val(),
                    SOLUONG: $("#edit-HANGHAI-SOLUONG").val()
                };
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/update_hanghai?id=" + HANGHAI.ID,
                    dataType: "json",
                    data: JSON.stringify(HANGHAI),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Cập nhật thông tin hàng hải thành công.");
                        loadDataList_HANGHAI();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-HANGHAI').modal("hide");
                    },
                });
            }
            return false;
        }
        function delete_HANGHAI(id) {
            let text = "Bạn có chắc muốn xóa hàng hải này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/delete_hanghai?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    loadDataList_HANGHAI();
                    toastSuccess("Thành công", "Xóa thông tin hàng hải thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa thông tin hàng hải không thành công!");
                })
            } else {

            }
        }

        // VŨ KHÍ
        function loadDataList_VUKHI() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/vukhi?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>Ký hiệu</th><th>Số lượng</th><th>Tác vụ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.KYHIEU + "</td><td>" + item.SOLUONG + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-VUKHI"  onclick="onclick_edit_VUKHI(`' + item.ID + '`,`' + item.KYHIEU + '`,`' + item.SOLUONG + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_VUKHI(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table-VUKHI').html(tabletext);
                    console.log("okGET");
                    loadTableVUKHI();
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
        };
        function loadTableVUKHI() {
            $('table[id=table-VUKHI]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 90 },
                        { name: 'Ký hiệu', width: 380 },
                        { name: 'Số lượng', width: 380 },
                        { name: 'Tác vụ', width: 150 },
                    ],
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
            });
        };
        function add_VUKHI() {
            var form = document.getElementById("form-add-VUKHI");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var VUKHI = {
                    KYHIEU: $("#add-VUKHI-KYHIEU").val(),
                    SOLUONG: $("#add-VUKHI-SOLUONG").val()
                };
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/insert_vukhi?id=" + getParameterByName("Ship_ID"),
                    dataType: "json",
                    data: JSON.stringify(VUKHI),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm thông tin vũ khí thành công.");
                        loadDataList_VUKHI();
                    }, error: function (ret) {
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $("#add-VUKHI-KYHIEU").val("");
                        $("#add-VUKHI-SOLUONG").val("");
                        $('#model-add-VUKHI').modal("hide");
                    },
                });
            }
            return false;
        }
        function onclick_edit_VUKHI(ID, KYHIEU, SOLUONG) {
            $('#edit-VUKHI-ID').val(ID);
            $("#edit-VUKHI-KYHIEU").val(KYHIEU);
            $("#edit-VUKHI-SOLUONG").val(SOLUONG);
        }
        function edit_VUKHI() {
            var form = document.getElementById("form-edit-VUKHI");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var VUKHI = {
                    ID: $("#edit-VUKHI-ID").val(),
                    KYHIEU: $("#edit-VUKHI-KYHIEU").val(),
                    SOLUONG: $("#edit-VUKHI-SOLUONG").val()
                };
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/update_vukhi?id=" + VUKHI.ID,
                    dataType: "json",
                    data: JSON.stringify(VUKHI),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Cập nhật thông tin vũ khí thành công.");
                        loadDataList_VUKHI();
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-VUKHI').modal("hide");
                    },
                });
            }
            return false;
        }
        function delete_VUKHI(id) {
            let text = "Bạn có chắc muốn xóa vũ khí này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/delete_vukhi?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    loadDataList_VUKHI();
                    toastSuccess("Thành công", "Xóa thông tin vũ khí thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa thông tin vũ khí không thành công!");
                })
            } else {

            }
        }

        //RA ĐA
        function loadDataList_RADA() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/rada?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>Ký hiệu</th><th>Số lượng</th><th>Tác vụ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.KYHIEU + "</td><td>" + item.SOLUONG + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-RADA"  onclick="onclick_edit_RADA(`' + item.ID + '`,`' + item.KYHIEU + '`,`' + item.SOLUONG + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_RADA(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table-RADA').html(tabletext);
                    console.log("okGET");
                    loadTableRADA();
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
        };
        function loadTableRADA() {
            $('table[id=table-RADA]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 90 },
                        { name: 'Ký hiệu', width: 380 },
                        { name: 'Số lượng', width: 380 },
                        { name: 'Tác vụ', width: 150 },
                    ],
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
            });
        };
        function add_RADA() {
            var form = document.getElementById("form-add-RADA");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var RADA = {
                    KYHIEU: $("#add-RADA-KYHIEU").val(),
                    SOLUONG: $("#add-RADA-SOLUONG").val()
                };
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/insert_rada?id=" + getParameterByName("Ship_ID"),
                    dataType: "json",
                    data: JSON.stringify(RADA),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm thông tin - ra đa thành công.");
                        loadDataList_RADA();
                    }, error: function (ret) {
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $("#add-RADA-KYHIEU").val("");
                        $("#add-RADA-SOLUONG").val("");
                        $('#model-add-RADA').modal("hide");
                    },
                });
            }
            return false;
        }
        function onclick_edit_RADA(ID, KYHIEU, SOLUONG) {
            $('#edit-RADA-ID').val(ID);
            $("#edit-RADA-KYHIEU").val(KYHIEU);
            $("#edit-RADA-SOLUONG").val(SOLUONG);
        }
        function edit_RADA() {
            var form = document.getElementById("form-edit-RADA");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var RADA = {
                    ID: $("#edit-RADA-ID").val(),
                    KYHIEU: $("#edit-RADA-KYHIEU").val(),
                    SOLUONG: $("#edit-RADA-SOLUONG").val()
                };
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/update_rada?id=" + RADA.ID,
                    dataType: "json",
                    data: JSON.stringify(RADA),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Cập nhật thông tin - ra đa thành công.");
                        loadDataList_RADA();
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-RADA').modal("hide");
                    },
                });
            }
            return false;
        }
        function delete_RADA(id) {
            let text = "Bạn có chắc muốn xóa thông tin - ra đa này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/delete_rada?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    loadDataList_RADA();
                    toastSuccess("Thành công", "Xóa thông tin - ra đa thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa thông tin - ra đa không thành công!");
                })
            } else {

            }
        }

        //CÁC TỔ MÁY
        function loadDataList_TOMAY() {
            loadDataList_MAYCHINH();
            loadDataList_MAYPHU();
            loadDataList_MAYCHUYENDUNG();
        }

        // MAY CHÍNH
        function loadDataList_MAYCHINH() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/maychinh?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>Ký hiệu</th><th>Số hiệu</th><th>Năm sản xuất</th><th>Nơi sản xuất</th><th>Công suất</th><th>Hệ thống điều khiển</th><th>Tác vụ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.THONGSOCOBAN.KYHIEU + "</td><td>" + item.THONGSOCOBAN.SOHIEUMAY + "</td><td>" + item.THONGSOCOBAN.NAMSANXUAT + "</td><td>" + item.THONGSOCOBAN.NOISANXUAT + "</td><td>" + item.THONGSOCOBAN.CONGSUAT + "</td><td>" + item.THONGSOCOBAN.HETHONGDIEUKHIEN + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-MAYCHINH"  onclick="onclick_edit_MAYCHINH(`' + item.ID + '`,`' + item.THONGSOCOBAN.KYHIEU + '`,`' + item.THONGSOCOBAN.NAMSANXUAT + '`,`' + item.THONGSOCOBAN.NOISANXUAT + '`,`' + item.THONGSOCOBAN.NAMLAPRAP + '`,`' + item.THONGSOCOBAN.VITRILAPRAP + '`,`' + item.THONGSOCOBAN.SOHIEUMAY + '`,`' + item.THONGSOCOBAN.CONGSUAT + '`,`' + item.THONGSOCOBAN.VONGQUAY + '`,`' + item.THONGSOCOBAN.CHIEUQUAY + '`,`' + item.THONGSOCOBAN.NGUONKHOIDONG + '`,`' + item.THONGSOCOBAN.HETHONGDIEUKHIEN + '`,`' + item.THONGSOCOBAN.TRONGLUONG + '`,`' + item.THONGSOCOBAN.KICHTHUOCMAY.DAI + '`,`' + item.THONGSOCOBAN.KICHTHUOCMAY.RONG + '`,`' + item.THONGSOCOBAN.KICHTHUOCMAY.CAO + '`,`' + item.THONGSOCOBAN.CHUKYSUACHUA.TIEUTU + '`,`' + item.THONGSOCOBAN.CHUKYSUACHUA.TRUNGTU + '`,`' + item.THONGSOCOBAN.CHUKYSUACHUA.DAITU + '`,`' + item.THONGSOCOBAN.LOAIDIEN.DIENAP + '`,`' + item.THONGSOCOBAN.LOAIDIEN.TANSO + '`,`' + item.PHUONGPHAPTRUYENTAI.KYHIEULYHOP_BOGIAMVONG + '`,`' + item.PHUONGPHAPTRUYENTAI.SOHIEULYHOP_BOGIAMVONG + '`,`' + item.PHUONGPHAPTRUYENTAI.TYSOTRUYEN + '`,`' + item.PHUONGPHAPTRUYENTAI.KHOPNOICUNG + '`,`' + item.PHUONGPHAPTRUYENTAI.KHOPNOIMEM + '`,`' + item.PHUONGPHAPTRUYENTAI.CUROA + '`,`' + item.PHUONGPHAPTRUYENTAI.KYHIEUVONGBI + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_MAYCHINH(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table-MAYCHINH').html(tabletext);
                    console.log("okGET");
                    loadTableMAYCHINH();
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
        };
        function loadTableMAYCHINH() {
            $('table[id=table-MAYCHINH]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 60 },
                        { name: 'Ký hiệu', width: 180 },
                        { name: 'Số hiệu', width: 180 },
                        { name: 'Năm sản xuất', width: 180 },
                        { name: 'Nơi sản xuất', width: 180 },
                        { name: 'Công suất', width: 180 },
                        { name: 'Hệ thống điều khiển', width: 180 },
                        { name: 'Tác vụ', width: 80 },
                    ],
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
            });
        };
        function add_MAYCHINH() {
            var form = document.getElementById("form-add-MAYCHINH");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var MAYCHINH = {
                    ID: "",
                    THONGSOCOBAN: {
                        KYHIEU: $("#add-MAYCHINH-THONGSOCOBAN-KYHIEU").val(),
                        NAMSANXUAT: $("#add-MAYCHINH-THONGSOCOBAN-NAMSANXUAT").val(),
                        NOISANXUAT: $("#add-MAYCHINH-THONGSOCOBAN-NOISANXUAT").val(),
                        NAMLAPRAP: $("#add-MAYCHINH-THONGSOCOBAN-NAMLAPRAP").val(),
                        VITRILAPRAP: $("#add-MAYCHINH-THONGSOCOBAN-VITRILAPRAP").val(),
                        SOHIEUMAY: $("#add-MAYCHINH-THONGSOCOBAN-SOHIEUMAY").val(),
                        CONGSUAT: $("#add-MAYCHINH-THONGSOCOBAN-CONGSUAT").val(),
                        VONGQUAY: $("#add-MAYCHINH-THONGSOCOBAN-VONGQUAY").val(),
                        CHIEUQUAY: $("#add-MAYCHINH-THONGSOCOBAN-CHIEUQUAY").val(),
                        NGUONKHOIDONG: $("#add-MAYCHINH-THONGSOCOBAN-NGUONKHOIDONG").val(),
                        HETHONGDIEUKHIEN: $("#add-MAYCHINH-THONGSOCOBAN-HETHONGDIEUKHIEN").val(),
                        KICHTHUOCMAY: {
                            DAI: $("#add-MAYCHINH-THONGSOCOBAN-KICHTHUOCMAY-DAI").val(),
                            RONG: $("#add-MAYCHINH-THONGSOCOBAN-KICHTHUOCMAY-RONG").val(),
                            CAO: $("#add-MAYCHINH-THONGSOCOBAN-KICHTHUOCMAY-CAO").val()
                        },
                        TRONGLUONG: $("#add-MAYCHINH-THONGSOCOBAN-TRONGLUONG").val(),
                        CHUKYSUACHUA: {
                            TIEUTU: $("#add-MAYCHINH-THONGSOCOBAN-CHUKYSUACHUA-TIEUTU").val(),
                            TRUNGTU: $("#add-MAYCHINH-THONGSOCOBAN-CHUKYSUACHUA-TRUNGTU").val(),
                            DAITU: $("#add-MAYCHINH-THONGSOCOBAN-CHUKYSUACHUA-DAITU").val()
                        },
                        LOAIDIEN: {
                            DIENAP: $("#add-MAYCHINH-THONGSOCOBAN-LOAIDIEN-DIENAP").val(),
                            TANSO: $("#add-MAYCHINH-THONGSOCOBAN-LOAIDIEN-TANSO").val()
                        }
                    },
                    PHUONGPHAPTRUYENTAI: {
                        KYHIEULYHOP_BOGIAMVONG: $("#add-MAYCHINH-PHUONGPHAPTRUYENTAI-KYHIEULYHOP_BOGIAMVONG").val(),
                        SOHIEULYHOP_BOGIAMVONG: $("#add-MAYCHINH-PHUONGPHAPTRUYENTAI-SOHIEULYHOP_BOGIAMVONG").val(),
                        TYSOTRUYEN: $("#add-MAYCHINH-PHUONGPHAPTRUYENTAI-TYSOTRUYEN").val(),
                        KHOPNOICUNG: $("#add-MAYCHINH-PHUONGPHAPTRUYENTAI-KHOPNOICUNG").val(),
                        KHOPNOIMEM: $("#add-MAYCHINH-PHUONGPHAPTRUYENTAI-KHOPNOIMEM").val(),
                        CUROA: $("#add-MAYCHINH-PHUONGPHAPTRUYENTAI-CUROA").val(),
                        KYHIEUVONGBI: $("#add-MAYCHINH-PHUONGPHAPTRUYENTAI-KYHIEUVONGBI").val()
                    }
                };
                console.log(MAYCHINH);
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/insert_maychinh?id=" + getParameterByName("Ship_ID"),
                    dataType: "json",
                    data: JSON.stringify(MAYCHINH),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm máy chính thành công.");
                        loadDataList_MAYCHINH();
                    }, error: function (ret) {
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-add-MAYCHINH').modal("hide");
                    },
                });
            }
            return false;
        }
        function onclick_edit_MAYCHINH(ID, KYHIEU, NAMSANXUAT, NOISANXUAT, NAMLAPRAP, VITRILAPRAP, SOHIEUMAY, CONGSUAT, VONGQUAY, CHIEUQUAY, NGUONKHOIDONG, HETHONGDIEUKHIEN, TRONGLUONG, DAI, RONG, CAO, TIEUTU, TRUNGTU, DAITU, DIENAP, TANSO, KYHIEULYHOP_BOGIAMVONG, SOHIEULYHOP_BOGIAMVONG, TYSOTRUYEN, KHOPNOICUNG, KHOPNOIMEM, CUROA, KYHIEUVONGBI) {
            $("#edit-MAYCHINH-ID").val(ID);
            $("#edit-MAYCHINH-THONGSOCOBAN-KYHIEU").val(KYHIEU);
            $("#edit-MAYCHINH-THONGSOCOBAN-NAMSANXUAT").val(NAMSANXUAT);
            $("#edit-MAYCHINH-THONGSOCOBAN-NOISANXUAT").val(NOISANXUAT);
            $("#edit-MAYCHINH-THONGSOCOBAN-NAMLAPRAP").val(NAMLAPRAP);
            $("#edit-MAYCHINH-THONGSOCOBAN-VITRILAPRAP").val(VITRILAPRAP);
            $("#edit-MAYCHINH-THONGSOCOBAN-SOHIEUMAY").val(SOHIEUMAY);
            $("#edit-MAYCHINH-THONGSOCOBAN-CONGSUAT").val(CONGSUAT);
            $("#edit-MAYCHINH-THONGSOCOBAN-VONGQUAY").val(VONGQUAY);
            $("#edit-MAYCHINH-THONGSOCOBAN-CHIEUQUAY").val(CHIEUQUAY);
            $("#edit-MAYCHINH-THONGSOCOBAN-NGUONKHOIDONG").val(NGUONKHOIDONG);
            $("#edit-MAYCHINH-THONGSOCOBAN-HETHONGDIEUKHIEN").val(HETHONGDIEUKHIEN);
            $("#edit-MAYCHINH-THONGSOCOBAN-KICHTHUOCMAY-DAI").val(DAI);
            $("#edit-MAYCHINH-THONGSOCOBAN-KICHTHUOCMAY-RONG").val(RONG);
            $("#edit-MAYCHINH-THONGSOCOBAN-KICHTHUOCMAY-CAO").val(CAO);
            $("#edit-MAYCHINH-THONGSOCOBAN-TRONGLUONG").val(TRONGLUONG);
            $("#edit-MAYCHINH-THONGSOCOBAN-CHUKYSUACHUA-TIEUTU").val(TIEUTU);
            $("#edit-MAYCHINH-THONGSOCOBAN-CHUKYSUACHUA-TRUNGTU").val(TRUNGTU);
            $("#edit-MAYCHINH-THONGSOCOBAN-CHUKYSUACHUA-DAITU").val(DAITU);
            $("#edit-MAYCHINH-THONGSOCOBAN-LOAIDIEN-DIENAP").val(DIENAP);
            $("#edit-MAYCHINH-THONGSOCOBAN-LOAIDIEN-TANSO").val(TANSO);
            $("#edit-MAYCHINH-PHUONGPHAPTRUYENTAI-KYHIEULYHOP_BOGIAMVONG").val(KYHIEULYHOP_BOGIAMVONG);
            $("#edit-MAYCHINH-PHUONGPHAPTRUYENTAI-SOHIEULYHOP_BOGIAMVONG").val(SOHIEULYHOP_BOGIAMVONG);
            $("#edit-MAYCHINH-PHUONGPHAPTRUYENTAI-TYSOTRUYEN").val(TYSOTRUYEN);
            $("#edit-MAYCHINH-PHUONGPHAPTRUYENTAI-KHOPNOICUNG").val(KHOPNOICUNG);
            $("#edit-MAYCHINH-PHUONGPHAPTRUYENTAI-KHOPNOIMEM").val(KHOPNOIMEM);
            $("#edit-MAYCHINH-PHUONGPHAPTRUYENTAI-CUROA").val(CUROA);
            $("#edit-MAYCHINH-PHUONGPHAPTRUYENTAI-KYHIEUVONGBI").val(KYHIEUVONGBI);
        }
        function edit_MAYCHINH() {
            var form = document.getElementById("form-edit-MAYCHINH");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var MAYCHINH = {
                    ID: $("#edit-MAYCHINH-ID").val(),
                    THONGSOCOBAN: {
                        KYHIEU: $("#edit-MAYCHINH-THONGSOCOBAN-KYHIEU").val(),
                        NAMSANXUAT: $("#edit-MAYCHINH-THONGSOCOBAN-NAMSANXUAT").val(),
                        NOISANXUAT: $("#edit-MAYCHINH-THONGSOCOBAN-NOISANXUAT").val(),
                        NAMLAPRAP: $("#edit-MAYCHINH-THONGSOCOBAN-NAMLAPRAP").val(),
                        VITRILAPRAP: $("#edit-MAYCHINH-THONGSOCOBAN-VITRILAPRAP").val(),
                        SOHIEUMAY: $("#edit-MAYCHINH-THONGSOCOBAN-SOHIEUMAY").val(),
                        CONGSUAT: $("#edit-MAYCHINH-THONGSOCOBAN-CONGSUAT").val(),
                        VONGQUAY: $("#edit-MAYCHINH-THONGSOCOBAN-VONGQUAY").val(),
                        CHIEUQUAY: $("#edit-MAYCHINH-THONGSOCOBAN-CHIEUQUAY").val(),
                        NGUONKHOIDONG: $("#edit-MAYCHINH-THONGSOCOBAN-NGUONKHOIDONG").val(),
                        HETHONGDIEUKHIEN: $("#edit-MAYCHINH-THONGSOCOBAN-HETHONGDIEUKHIEN").val(),
                        KICHTHUOCMAY: {
                            DAI: $("#edit-MAYCHINH-THONGSOCOBAN-KICHTHUOCMAY-DAI").val(),
                            RONG: $("#edit-MAYCHINH-THONGSOCOBAN-KICHTHUOCMAY-RONG").val(),
                            CAO: $("#edit-MAYCHINH-THONGSOCOBAN-KICHTHUOCMAY-CAO").val()
                        },
                        TRONGLUONG: $("#edit-MAYCHINH-THONGSOCOBAN-TRONGLUONG").val(),
                        CHUKYSUACHUA: {
                            TIEUTU: $("#edit-MAYCHINH-THONGSOCOBAN-CHUKYSUACHUA-TIEUTU").val(),
                            TRUNGTU: $("#edit-MAYCHINH-THONGSOCOBAN-CHUKYSUACHUA-TRUNGTU").val(),
                            DAITU: $("#edit-MAYCHINH-THONGSOCOBAN-CHUKYSUACHUA-DAITU").val()
                        },
                        LOAIDIEN: {
                            DIENAP: $("#edit-MAYCHINH-THONGSOCOBAN-LOAIDIEN-DIENAP").val(),
                            TANSO: $("#edit-MAYCHINH-THONGSOCOBAN-LOAIDIEN-TANSO").val()
                        }
                    },
                    PHUONGPHAPTRUYENTAI: {
                        KYHIEULYHOP_BOGIAMVONG: $("#edit-MAYCHINH-PHUONGPHAPTRUYENTAI-KYHIEULYHOP_BOGIAMVONG").val(),
                        SOHIEULYHOP_BOGIAMVONG: $("#edit-MAYCHINH-PHUONGPHAPTRUYENTAI-SOHIEULYHOP_BOGIAMVONG").val(),
                        TYSOTRUYEN: $("#edit-MAYCHINH-PHUONGPHAPTRUYENTAI-TYSOTRUYEN").val(),
                        KHOPNOICUNG: $("#edit-MAYCHINH-PHUONGPHAPTRUYENTAI-KHOPNOICUNG").val(),
                        KHOPNOIMEM: $("#edit-MAYCHINH-PHUONGPHAPTRUYENTAI-KHOPNOIMEM").val(),
                        CUROA: $("#edit-MAYCHINH-PHUONGPHAPTRUYENTAI-CUROA").val(),
                        KYHIEUVONGBI: $("#edit-MAYCHINH-PHUONGPHAPTRUYENTAI-KYHIEUVONGBI").val()
                    }
                };
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/update_maychinh?id=" + MAYCHINH.ID,
                    dataType: "json",
                    data: JSON.stringify(MAYCHINH),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Cập nhật máy chính thành công.");
                        loadDataList_MAYCHINH();
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-MAYCHINH').modal("hide");
                    },
                });
            }
            return false;
        }
        function delete_MAYCHINH(id) {
            let text = "Bạn có chắc muốn xóa máy chính này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/delete_maychinh?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    loadDataList_MAYCHINH();
                    toastSuccess("Thành công", "Xóa máy chính thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa máy chính không thành công!");
                })
            } else {

            }
        }

        // MÁY PHỤ
        function loadDataList_MAYPHU() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/mayphuphatdien?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>Ký hiệu</th><th>Số hiệu</th><th>Năm sản xuất</th><th>Nơi sản xuất</th><th>Công suất</th><th>Hệ thống điều khiển</th><th>Tác vụ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.THONGSOCOBAN.KYHIEU + "</td><td>" + item.THONGSOCOBAN.SOHIEUMAY + "</td><td>" + item.THONGSOCOBAN.NAMSANXUAT + "</td><td>" + item.THONGSOCOBAN.NOISANXUAT + "</td><td>" + item.THONGSOCOBAN.CONGSUAT + "</td><td>" + item.THONGSOCOBAN.HETHONGDIEUKHIEN + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-MAYPHU"  onclick="onclick_edit_MAYPHU(`' + item.ID + '`,`' + item.THONGSOCOBAN.KYHIEU + '`,`' + item.THONGSOCOBAN.NAMSANXUAT + '`,`' + item.THONGSOCOBAN.NOISANXUAT + '`,`' + item.THONGSOCOBAN.NAMLAPRAP + '`,`' + item.THONGSOCOBAN.VITRILAPRAP + '`,`' + item.THONGSOCOBAN.SOHIEUMAY + '`,`' + item.THONGSOCOBAN.CONGSUAT + '`,`' + item.THONGSOCOBAN.VONGQUAY + '`,`' + item.THONGSOCOBAN.CHIEUQUAY + '`,`' + item.THONGSOCOBAN.NGUONKHOIDONG + '`,`' + item.THONGSOCOBAN.HETHONGDIEUKHIEN + '`,`' + item.THONGSOCOBAN.TRONGLUONG + '`,`' + item.THONGSOCOBAN.KICHTHUOCMAY.DAI + '`,`' + item.THONGSOCOBAN.KICHTHUOCMAY.RONG + '`,`' + item.THONGSOCOBAN.KICHTHUOCMAY.CAO + '`,`' + item.THONGSOCOBAN.CHUKYSUACHUA.TIEUTU + '`,`' + item.THONGSOCOBAN.CHUKYSUACHUA.TRUNGTU + '`,`' + item.THONGSOCOBAN.CHUKYSUACHUA.DAITU + '`,`' + item.THONGSOCOBAN.LOAIDIEN.DIENAP + '`,`' + item.THONGSOCOBAN.LOAIDIEN.TANSO + '`,`' + item.PHUONGPHAPTRUYENTAI.KYHIEULYHOP_BOGIAMVONG + '`,`' + item.PHUONGPHAPTRUYENTAI.SOHIEULYHOP_BOGIAMVONG + '`,`' + item.PHUONGPHAPTRUYENTAI.TYSOTRUYEN + '`,`' + item.PHUONGPHAPTRUYENTAI.KHOPNOICUNG + '`,`' + item.PHUONGPHAPTRUYENTAI.KHOPNOIMEM + '`,`' + item.PHUONGPHAPTRUYENTAI.CUROA + '`,`' + item.PHUONGPHAPTRUYENTAI.KYHIEUVONGBI + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_MAYPHU(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table-MAYPHU').html(tabletext);
                    console.log("okGET");
                    loadTableMAYPHU();
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
        };
        function loadTableMAYPHU() {
            $('table[id=table-MAYPHU]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 60 },
                        { name: 'Ký hiệu', width: 180 },
                        { name: 'Số hiệu', width: 180 },
                        { name: 'Năm sản xuất', width: 180 },
                        { name: 'Nơi sản xuất', width: 180 },
                        { name: 'Công suất', width: 180 },
                        { name: 'Hệ thống điều khiển', width: 180 },
                        { name: 'Tác vụ', width: 80 },
                    ],
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
            });
        };
        function add_MAYPHU() {
            var form = document.getElementById("form-add-MAYPHU");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var MAYPHU = {
                    ID: "",
                    THONGSOCOBAN: {
                        KYHIEU: $("#add-MAYPHU-THONGSOCOBAN-KYHIEU").val(),
                        NAMSANXUAT: $("#add-MAYPHU-THONGSOCOBAN-NAMSANXUAT").val(),
                        NOISANXUAT: $("#add-MAYPHU-THONGSOCOBAN-NOISANXUAT").val(),
                        NAMLAPRAP: $("#add-MAYPHU-THONGSOCOBAN-NAMLAPRAP").val(),
                        VITRILAPRAP: $("#add-MAYPHU-THONGSOCOBAN-VITRILAPRAP").val(),
                        SOHIEUMAY: $("#add-MAYPHU-THONGSOCOBAN-SOHIEUMAY").val(),
                        CONGSUAT: $("#add-MAYPHU-THONGSOCOBAN-CONGSUAT").val(),
                        VONGQUAY: $("#add-MAYPHU-THONGSOCOBAN-VONGQUAY").val(),
                        CHIEUQUAY: $("#add-MAYPHU-THONGSOCOBAN-CHIEUQUAY").val(),
                        NGUONKHOIDONG: $("#add-MAYPHU-THONGSOCOBAN-NGUONKHOIDONG").val(),
                        HETHONGDIEUKHIEN: $("#add-MAYPHU-THONGSOCOBAN-HETHONGDIEUKHIEN").val(),
                        KICHTHUOCMAY: {
                            DAI: $("#add-MAYPHU-THONGSOCOBAN-KICHTHUOCMAY-DAI").val(),
                            RONG: $("#add-MAYPHU-THONGSOCOBAN-KICHTHUOCMAY-RONG").val(),
                            CAO: $("#add-MAYPHU-THONGSOCOBAN-KICHTHUOCMAY-CAO").val()
                        },
                        TRONGLUONG: $("#add-MAYPHU-THONGSOCOBAN-TRONGLUONG").val(),
                        CHUKYSUACHUA: {
                            TIEUTU: $("#add-MAYPHU-THONGSOCOBAN-CHUKYSUACHUA-TIEUTU").val(),
                            TRUNGTU: $("#add-MAYPHU-THONGSOCOBAN-CHUKYSUACHUA-TRUNGTU").val(),
                            DAITU: $("#add-MAYPHU-THONGSOCOBAN-CHUKYSUACHUA-DAITU").val()
                        },
                        LOAIDIEN: {
                            DIENAP: $("#add-MAYPHU-THONGSOCOBAN-LOAIDIEN-DIENAP").val(),
                            TANSO: $("#add-MAYPHU-THONGSOCOBAN-LOAIDIEN-TANSO").val()
                        }
                    },
                    PHUONGPHAPTRUYENTAI: {
                        KYHIEULYHOP_BOGIAMVONG: $("#add-MAYPHU-PHUONGPHAPTRUYENTAI-KYHIEULYHOP_BOGIAMVONG").val(),
                        SOHIEULYHOP_BOGIAMVONG: $("#add-MAYPHU-PHUONGPHAPTRUYENTAI-SOHIEULYHOP_BOGIAMVONG").val(),
                        TYSOTRUYEN: $("#add-MAYPHU-PHUONGPHAPTRUYENTAI-TYSOTRUYEN").val(),
                        KHOPNOICUNG: $("#add-MAYPHU-PHUONGPHAPTRUYENTAI-KHOPNOICUNG").val(),
                        KHOPNOIMEM: $("#add-MAYPHU-PHUONGPHAPTRUYENTAI-KHOPNOIMEM").val(),
                        CUROA: $("#add-MAYPHU-PHUONGPHAPTRUYENTAI-CUROA").val(),
                        KYHIEUVONGBI: $("#add-MAYPHU-PHUONGPHAPTRUYENTAI-KYHIEUVONGBI").val()
                    }
                };
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/insert_mayphu?id=" + getParameterByName("Ship_ID"),
                    dataType: "json",
                    data: JSON.stringify(MAYPHU),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm máy phụ thành công.");
                        loadDataList_MAYPHU();
                    }, error: function (ret) {
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-add-MAYPHU').modal("hide");
                    },
                });
            }
            return false;
        }
        function onclick_edit_MAYPHU(ID, KYHIEU, NAMSANXUAT, NOISANXUAT, NAMLAPRAP, VITRILAPRAP, SOHIEUMAY, CONGSUAT, VONGQUAY, CHIEUQUAY, NGUONKHOIDONG, HETHONGDIEUKHIEN, TRONGLUONG, DAI, RONG, CAO, TIEUTU, TRUNGTU, DAITU, DIENAP, TANSO, KYHIEULYHOP_BOGIAMVONG, SOHIEULYHOP_BOGIAMVONG, TYSOTRUYEN, KHOPNOICUNG, KHOPNOIMEM, CUROA, KYHIEUVONGBI) {
            $("#edit-MAYPHU-ID").val(ID);
            $("#edit-MAYPHU-THONGSOCOBAN-KYHIEU").val(KYHIEU);
            $("#edit-MAYPHU-THONGSOCOBAN-NAMSANXUAT").val(NAMSANXUAT);
            $("#edit-MAYPHU-THONGSOCOBAN-NOISANXUAT").val(NOISANXUAT);
            $("#edit-MAYPHU-THONGSOCOBAN-NAMLAPRAP").val(NAMLAPRAP);
            $("#edit-MAYPHU-THONGSOCOBAN-VITRILAPRAP").val(VITRILAPRAP);
            $("#edit-MAYPHU-THONGSOCOBAN-SOHIEUMAY").val(SOHIEUMAY);
            $("#edit-MAYPHU-THONGSOCOBAN-CONGSUAT").val(CONGSUAT);
            $("#edit-MAYPHU-THONGSOCOBAN-VONGQUAY").val(VONGQUAY);
            $("#edit-MAYPHU-THONGSOCOBAN-CHIEUQUAY").val(CHIEUQUAY);
            $("#edit-MAYPHU-THONGSOCOBAN-NGUONKHOIDONG").val(NGUONKHOIDONG);
            $("#edit-MAYPHU-THONGSOCOBAN-HETHONGDIEUKHIEN").val(HETHONGDIEUKHIEN);
            $("#edit-MAYPHU-THONGSOCOBAN-KICHTHUOCMAY-DAI").val(DAI);
            $("#edit-MAYPHU-THONGSOCOBAN-KICHTHUOCMAY-RONG").val(RONG);
            $("#edit-MAYPHU-THONGSOCOBAN-KICHTHUOCMAY-CAO").val(CAO);
            $("#edit-MAYPHU-THONGSOCOBAN-TRONGLUONG").val(TRONGLUONG);
            $("#edit-MAYPHU-THONGSOCOBAN-CHUKYSUACHUA-TIEUTU").val(TIEUTU);
            $("#edit-MAYPHU-THONGSOCOBAN-CHUKYSUACHUA-TRUNGTU").val(TRUNGTU);
            $("#edit-MAYPHU-THONGSOCOBAN-CHUKYSUACHUA-DAITU").val(DAITU);
            $("#edit-MAYPHU-THONGSOCOBAN-LOAIDIEN-DIENAP").val(DIENAP);
            $("#edit-MAYPHU-THONGSOCOBAN-LOAIDIEN-TANSO").val(TANSO);
            $("#edit-MAYPHU-PHUONGPHAPTRUYENTAI-KYHIEULYHOP_BOGIAMVONG").val(KYHIEULYHOP_BOGIAMVONG);
            $("#edit-MAYPHU-PHUONGPHAPTRUYENTAI-SOHIEULYHOP_BOGIAMVONG").val(SOHIEULYHOP_BOGIAMVONG);
            $("#edit-MAYPHU-PHUONGPHAPTRUYENTAI-TYSOTRUYEN").val(TYSOTRUYEN);
            $("#edit-MAYPHU-PHUONGPHAPTRUYENTAI-KHOPNOICUNG").val(KHOPNOICUNG);
            $("#edit-MAYPHU-PHUONGPHAPTRUYENTAI-KHOPNOIMEM").val(KHOPNOIMEM);
            $("#edit-MAYPHU-PHUONGPHAPTRUYENTAI-CUROA").val(CUROA);
            $("#edit-MAYPHU-PHUONGPHAPTRUYENTAI-KYHIEUVONGBI").val(KYHIEUVONGBI);
        }
        function edit_MAYPHU() {
            var form = document.getElementById("form-edit-MAYPHU");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var MAYPHU = {
                    ID: $("#edit-MAYPHU-ID").val(),
                    THONGSOCOBAN: {
                        KYHIEU: $("#edit-MAYPHU-THONGSOCOBAN-KYHIEU").val(),
                        NAMSANXUAT: $("#edit-MAYPHU-THONGSOCOBAN-NAMSANXUAT").val(),
                        NOISANXUAT: $("#edit-MAYPHU-THONGSOCOBAN-NOISANXUAT").val(),
                        NAMLAPRAP: $("#edit-MAYPHU-THONGSOCOBAN-NAMLAPRAP").val(),
                        VITRILAPRAP: $("#edit-MAYPHU-THONGSOCOBAN-VITRILAPRAP").val(),
                        SOHIEUMAY: $("#edit-MAYPHU-THONGSOCOBAN-SOHIEUMAY").val(),
                        CONGSUAT: $("#edit-MAYPHU-THONGSOCOBAN-CONGSUAT").val(),
                        VONGQUAY: $("#edit-MAYPHU-THONGSOCOBAN-VONGQUAY").val(),
                        CHIEUQUAY: $("#edit-MAYPHU-THONGSOCOBAN-CHIEUQUAY").val(),
                        NGUONKHOIDONG: $("#edit-MAYPHU-THONGSOCOBAN-NGUONKHOIDONG").val(),
                        HETHONGDIEUKHIEN: $("#edit-MAYPHU-THONGSOCOBAN-HETHONGDIEUKHIEN").val(),
                        KICHTHUOCMAY: {
                            DAI: $("#edit-MAYPHU-THONGSOCOBAN-KICHTHUOCMAY-DAI").val(),
                            RONG: $("#edit-MAYPHU-THONGSOCOBAN-KICHTHUOCMAY-RONG").val(),
                            CAO: $("#edit-MAYPHU-THONGSOCOBAN-KICHTHUOCMAY-CAO").val()
                        },
                        TRONGLUONG: $("#edit-MAYPHU-THONGSOCOBAN-TRONGLUONG").val(),
                        CHUKYSUACHUA: {
                            TIEUTU: $("#edit-MAYPHU-THONGSOCOBAN-CHUKYSUACHUA-TIEUTU").val(),
                            TRUNGTU: $("#edit-MAYPHU-THONGSOCOBAN-CHUKYSUACHUA-TRUNGTU").val(),
                            DAITU: $("#edit-MAYPHU-THONGSOCOBAN-CHUKYSUACHUA-DAITU").val()
                        },
                        LOAIDIEN: {
                            DIENAP: $("#edit-MAYPHU-THONGSOCOBAN-LOAIDIEN-DIENAP").val(),
                            TANSO: $("#edit-MAYPHU-THONGSOCOBAN-LOAIDIEN-TANSO").val()
                        }
                    },
                    PHUONGPHAPTRUYENTAI: {
                        KYHIEULYHOP_BOGIAMVONG: $("#edit-MAYPHU-PHUONGPHAPTRUYENTAI-KYHIEULYHOP_BOGIAMVONG").val(),
                        SOHIEULYHOP_BOGIAMVONG: $("#edit-MAYPHU-PHUONGPHAPTRUYENTAI-SOHIEULYHOP_BOGIAMVONG").val(),
                        TYSOTRUYEN: $("#edit-MAYPHU-PHUONGPHAPTRUYENTAI-TYSOTRUYEN").val(),
                        KHOPNOICUNG: $("#edit-MAYPHU-PHUONGPHAPTRUYENTAI-KHOPNOICUNG").val(),
                        KHOPNOIMEM: $("#edit-MAYPHU-PHUONGPHAPTRUYENTAI-KHOPNOIMEM").val(),
                        CUROA: $("#edit-MAYPHU-PHUONGPHAPTRUYENTAI-CUROA").val(),
                        KYHIEUVONGBI: $("#edit-MAYPHU-PHUONGPHAPTRUYENTAI-KYHIEUVONGBI").val()
                    }
                };
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/update_mayphu?id=" + MAYPHU.ID,
                    dataType: "json",
                    data: JSON.stringify(MAYPHU),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Cập nhật máy phụ thành công.");
                        loadDataList_MAYPHU();
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-MAYPHU').modal("hide");
                    },
                });
            }
            return false;
        }
        function delete_MAYPHU(id) {
            let text = "Bạn có chắc muốn xóa máy phụ này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/delete_mayphu?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    loadDataList_MAYPHU();
                    toastSuccess("Thành công", "Xóa máy phụ thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa máy phụ không thành công!");
                })
            } else {

            }
        }

        // MÁY CHUYÊN DỤNG
        function loadDataList_MAYCHUYENDUNG() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/maychuyendung?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>Ký hiệu</th><th>Số hiệu</th><th>Năm sản xuất</th><th>Nơi sản xuất</th><th>Công suất</th><th>Hệ thống điều khiển</th><th>Tác vụ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.THONGSOCOBAN.KYHIEU + "</td><td>" + item.THONGSOCOBAN.SOHIEUMAY + "</td><td>" + item.THONGSOCOBAN.NAMSANXUAT + "</td><td>" + item.THONGSOCOBAN.NOISANXUAT + "</td><td>" + item.THONGSOCOBAN.CONGSUAT + "</td><td>" + item.THONGSOCOBAN.HETHONGDIEUKHIEN + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-MAYCHUYENDUNG"  onclick="onclick_edit_MAYCHUYENDUNG(`' + item.ID + '`,`' + item.THONGSOCOBAN.KYHIEU + '`,`' + item.THONGSOCOBAN.NAMSANXUAT + '`,`' + item.THONGSOCOBAN.NOISANXUAT + '`,`' + item.THONGSOCOBAN.NAMLAPRAP + '`,`' + item.THONGSOCOBAN.VITRILAPRAP + '`,`' + item.THONGSOCOBAN.SOHIEUMAY + '`,`' + item.THONGSOCOBAN.CONGSUAT + '`,`' + item.THONGSOCOBAN.VONGQUAY + '`,`' + item.THONGSOCOBAN.CHIEUQUAY + '`,`' + item.THONGSOCOBAN.NGUONKHOIDONG + '`,`' + item.THONGSOCOBAN.HETHONGDIEUKHIEN + '`,`' + item.THONGSOCOBAN.TRONGLUONG + '`,`' + item.THONGSOCOBAN.KICHTHUOCMAY.DAI + '`,`' + item.THONGSOCOBAN.KICHTHUOCMAY.RONG + '`,`' + item.THONGSOCOBAN.KICHTHUOCMAY.CAO + '`,`' + item.THONGSOCOBAN.CHUKYSUACHUA.TIEUTU + '`,`' + item.THONGSOCOBAN.CHUKYSUACHUA.TRUNGTU + '`,`' + item.THONGSOCOBAN.CHUKYSUACHUA.DAITU + '`,`' + item.THONGSOCOBAN.LOAIDIEN.DIENAP + '`,`' + item.THONGSOCOBAN.LOAIDIEN.TANSO + '`,`' + item.PHUONGPHAPTRUYENTAI.KYHIEULYHOP_BOGIAMVONG + '`,`' + item.PHUONGPHAPTRUYENTAI.SOHIEULYHOP_BOGIAMVONG + '`,`' + item.PHUONGPHAPTRUYENTAI.TYSOTRUYEN + '`,`' + item.PHUONGPHAPTRUYENTAI.KHOPNOICUNG + '`,`' + item.PHUONGPHAPTRUYENTAI.KHOPNOIMEM + '`,`' + item.PHUONGPHAPTRUYENTAI.CUROA + '`,`' + item.PHUONGPHAPTRUYENTAI.KYHIEUVONGBI + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_MAYCHUYENDUNG(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table-MAYCHUYENDUNG').html(tabletext);
                    console.log("okGET");
                    loadTableMAYCHUYENDUNG();
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
        };
        function loadTableMAYCHUYENDUNG() {
            $('table[id=table-MAYCHUYENDUNG]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 60 },
                        { name: 'Ký hiệu', width: 180 },
                        { name: 'Số hiệu', width: 180 },
                        { name: 'Năm sản xuất', width: 180 },
                        { name: 'Nơi sản xuất', width: 180 },
                        { name: 'Công suất', width: 180 },
                        { name: 'Hệ thống điều khiển', width: 180 },
                        { name: 'Tác vụ', width: 80 },
                    ],
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
            });
        };
        function add_MAYCHUYENDUNG() {
            var form = document.getElementById("form-add-MAYCHUYENDUNG");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var MAYCHUYENDUNG = {
                    ID: "",
                    THONGSOCOBAN: {
                        KYHIEU: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-KYHIEU").val(),
                        NAMSANXUAT: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-NAMSANXUAT").val(),
                        NOISANXUAT: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-NOISANXUAT").val(),
                        NAMLAPRAP: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-NAMLAPRAP").val(),
                        VITRILAPRAP: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-VITRILAPRAP").val(),
                        SOHIEUMAY: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-SOHIEUMAY").val(),
                        CONGSUAT: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-CONGSUAT").val(),
                        VONGQUAY: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-VONGQUAY").val(),
                        CHIEUQUAY: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-CHIEUQUAY").val(),
                        NGUONKHOIDONG: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-NGUONKHOIDONG").val(),
                        HETHONGDIEUKHIEN: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-HETHONGDIEUKHIEN").val(),
                        KICHTHUOCMAY: {
                            DAI: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-KICHTHUOCMAY-DAI").val(),
                            RONG: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-KICHTHUOCMAY-RONG").val(),
                            CAO: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-KICHTHUOCMAY-CAO").val()
                        },
                        TRONGLUONG: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-TRONGLUONG").val(),
                        CHUKYSUACHUA: {
                            TIEUTU: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-CHUKYSUACHUA-TIEUTU").val(),
                            TRUNGTU: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-CHUKYSUACHUA-TRUNGTU").val(),
                            DAITU: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-CHUKYSUACHUA-DAITU").val()
                        },
                        LOAIDIEN: {
                            DIENAP: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-LOAIDIEN-DIENAP").val(),
                            TANSO: $("#add-MAYCHUYENDUNG-THONGSOCOBAN-LOAIDIEN-TANSO").val()
                        }
                    },
                    PHUONGPHAPTRUYENTAI: {
                        KYHIEULYHOP_BOGIAMVONG: $("#add-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KYHIEULYHOP_BOGIAMVONG").val(),
                        SOHIEULYHOP_BOGIAMVONG: $("#add-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-SOHIEULYHOP_BOGIAMVONG").val(),
                        TYSOTRUYEN: $("#add-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-TYSOTRUYEN").val(),
                        KHOPNOICUNG: $("#add-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KHOPNOICUNG").val(),
                        KHOPNOIMEM: $("#add-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KHOPNOIMEM").val(),
                        CUROA: $("#add-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-CUROA").val(),
                        KYHIEUVONGBI: $("#add-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KYHIEUVONGBI").val()
                    }
                };
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/insert_maychuyendung?id=" + getParameterByName("Ship_ID"),
                    dataType: "json",
                    data: JSON.stringify(MAYCHUYENDUNG),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm máy chuyên dụng thành công.");
                        loadDataList_MAYCHUYENDUNG();
                    }, error: function (ret) {
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-add-MAYCHUYENDUNG').modal("hide");
                    },
                });
            }
            return false;
        }
        function onclick_edit_MAYCHUYENDUNG(ID, KYHIEU, NAMSANXUAT, NOISANXUAT, NAMLAPRAP, VITRILAPRAP, SOHIEUMAY, CONGSUAT, VONGQUAY, CHIEUQUAY, NGUONKHOIDONG, HETHONGDIEUKHIEN, TRONGLUONG, DAI, RONG, CAO, TIEUTU, TRUNGTU, DAITU, DIENAP, TANSO, KYHIEULYHOP_BOGIAMVONG, SOHIEULYHOP_BOGIAMVONG, TYSOTRUYEN, KHOPNOICUNG, KHOPNOIMEM, CUROA, KYHIEUVONGBI) {
            $("#edit-MAYCHUYENDUNG-ID").val(ID);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-KYHIEU").val(KYHIEU);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-NAMSANXUAT").val(NAMSANXUAT);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-NOISANXUAT").val(NOISANXUAT);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-NAMLAPRAP").val(NAMLAPRAP);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-VITRILAPRAP").val(VITRILAPRAP);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-SOHIEUMAY").val(SOHIEUMAY);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-CONGSUAT").val(CONGSUAT);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-VONGQUAY").val(VONGQUAY);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-CHIEUQUAY").val(CHIEUQUAY);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-NGUONKHOIDONG").val(NGUONKHOIDONG);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-HETHONGDIEUKHIEN").val(HETHONGDIEUKHIEN);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-KICHTHUOCMAY-DAI").val(DAI);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-KICHTHUOCMAY-RONG").val(RONG);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-KICHTHUOCMAY-CAO").val(CAO);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-TRONGLUONG").val(TRONGLUONG);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-CHUKYSUACHUA-TIEUTU").val(TIEUTU);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-CHUKYSUACHUA-TRUNGTU").val(TRUNGTU);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-CHUKYSUACHUA-DAITU").val(DAITU);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-LOAIDIEN-DIENAP").val(DIENAP);
            $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-LOAIDIEN-TANSO").val(TANSO);
            $("#edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KYHIEULYHOP_BOGIAMVONG").val(KYHIEULYHOP_BOGIAMVONG);
            $("#edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-SOHIEULYHOP_BOGIAMVONG").val(SOHIEULYHOP_BOGIAMVONG);
            $("#edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-TYSOTRUYEN").val(TYSOTRUYEN);
            $("#edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KHOPNOICUNG").val(KHOPNOICUNG);
            $("#edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KHOPNOIMEM").val(KHOPNOIMEM);
            $("#edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-CUROA").val(CUROA);
            $("#edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KYHIEUVONGBI").val(KYHIEUVONGBI);
        }
        function edit_MAYCHUYENDUNG() {
            var form = document.getElementById("form-edit-MAYCHUYENDUNG");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var MAYCHUYENDUNG = {
                    ID: $("#edit-MAYCHUYENDUNG-ID").val(),
                    THONGSOCOBAN: {
                        KYHIEU: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-KYHIEU").val(),
                        NAMSANXUAT: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-NAMSANXUAT").val(),
                        NOISANXUAT: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-NOISANXUAT").val(),
                        NAMLAPRAP: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-NAMLAPRAP").val(),
                        VITRILAPRAP: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-VITRILAPRAP").val(),
                        SOHIEUMAY: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-SOHIEUMAY").val(),
                        CONGSUAT: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-CONGSUAT").val(),
                        VONGQUAY: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-VONGQUAY").val(),
                        CHIEUQUAY: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-CHIEUQUAY").val(),
                        NGUONKHOIDONG: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-NGUONKHOIDONG").val(),
                        HETHONGDIEUKHIEN: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-HETHONGDIEUKHIEN").val(),
                        KICHTHUOCMAY: {
                            DAI: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-KICHTHUOCMAY-DAI").val(),
                            RONG: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-KICHTHUOCMAY-RONG").val(),
                            CAO: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-KICHTHUOCMAY-CAO").val()
                        },
                        TRONGLUONG: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-TRONGLUONG").val(),
                        CHUKYSUACHUA: {
                            TIEUTU: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-CHUKYSUACHUA-TIEUTU").val(),
                            TRUNGTU: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-CHUKYSUACHUA-TRUNGTU").val(),
                            DAITU: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-CHUKYSUACHUA-DAITU").val()
                        },
                        LOAIDIEN: {
                            DIENAP: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-LOAIDIEN-DIENAP").val(),
                            TANSO: $("#edit-MAYCHUYENDUNG-THONGSOCOBAN-LOAIDIEN-TANSO").val()
                        }
                    },
                    PHUONGPHAPTRUYENTAI: {
                        KYHIEULYHOP_BOGIAMVONG: $("#edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KYHIEULYHOP_BOGIAMVONG").val(),
                        SOHIEULYHOP_BOGIAMVONG: $("#edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-SOHIEULYHOP_BOGIAMVONG").val(),
                        TYSOTRUYEN: $("#edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-TYSOTRUYEN").val(),
                        KHOPNOICUNG: $("#edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KHOPNOICUNG").val(),
                        KHOPNOIMEM: $("#edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KHOPNOIMEM").val(),
                        CUROA: $("#edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-CUROA").val(),
                        KYHIEUVONGBI: $("#edit-MAYCHUYENDUNG-PHUONGPHAPTRUYENTAI-KYHIEUVONGBI").val()
                    }
                };
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/update_maychuyendung?id=" + MAYCHUYENDUNG.ID,
                    dataType: "json",
                    data: JSON.stringify(MAYCHUYENDUNG),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Cập nhật máy chuyên dụng thành công.");
                        loadDataList_MAYCHUYENDUNG();
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-MAYCHUYENDUNG').modal("hide");
                    },
                });
            }
            return false;
        }
        function delete_MAYCHUYENDUNG(id) {
            let text = "Bạn có chắc muốn xóa máy chuyên dụng này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/delete_maychuyendung?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    loadDataList_MAYCHUYENDUNG();
                    toastSuccess("Thành công", "Xóa máy chuyên dụng thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa máy chuyên dụng không thành công!");
                })
            } else {

            }
        }

        // HỆ TRỤC CHÂN VỊT
        function loadDataList_HETRUCCHANVIT() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/hetrucchanvit?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th rowspan='2'>STT</th><th colspan='2'>Trục</th><th colspan='3'>Chân vịt</th><th colspan='2'>Ổ đỡ</th><th rowspan='2'>Tác vụ</th></tr><tr><th>Tổng chiều dài</th><th>Vật liệu</th><th>Loại vật liệu</th><th>Đường kính (mm)</th><th>Số cánh</th><th>Số lượng</th><th>Loại</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.TRUC.TONGCHIEUDAI + "</td><td>" + item.TRUC.VATLIEU + "</td><td>" + item.CHANVIT.LOAICHANVIT + "</td><td>" + item.CHANVIT.DUONGKINH + "</td><td>" + item.CHANVIT.SOCANH + "</td><td>" + item.ODO.SOLUONG + "</td><td>" + item.ODO.LOAI + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-HETRUCCHANVIT"  onclick="onclick_edit_HETRUCCHANVIT(`' + item.ID + '`,`' + item.TRUC.TONGCHIEUDAI + '`,`' + item.TRUC.VATLIEU + '`,`' + item.TRUC.TONGTRONGLUONG + '`,`' + item.TRUC.DUONGKINHTRUCGHEPCHANVIT + '`,`' + item.TRUC.DUONGKINHTRUCTRUNGGIAN + '`,`' + item.TRUC.DUONGKINHTRUCXOAN + '`,`' + item.TRUC.DUONGKINHTRUCCHAN + '`,`' + item.TRUC.GOCNGIENGTRUC + '`,`' + item.CHANVIT.LOAICHANVIT + '`,`' + item.CHANVIT.DUONGKINH + '`,`' + item.CHANVIT.SOCANH + '`,`' + item.CHANVIT.VATLIEU + '`,`' + item.CHANVIT.TRONGLUONG + '`,`' + item.CHANVIT.CHIEUQUAY + '`,`' + item.CHANVIT.VONGQUAYDINHMUC + '`,`' + item.ODO.SOLUONG + '`,`' + item.ODO.LOAI + '`,`' + item.ODO.MODAUBOITRON + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_HETRUCCHANVIT(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table-HETRUCCHANVIT').html(tabletext);
                    console.log("okGET");
                    loadTableHETRUCCHANVIT();
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
        };
        function loadTableHETRUCCHANVIT() {
            $('table[id=table-HETRUCCHANVIT]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 60 },
                        { name: 'Tổng chiều dài', width: 180 },
                        { name: 'Vật liệu', width: 180 },
                        { name: 'Loại chân vịt', width: 180 },
                        { name: 'Đường kính (mm)', width: 180 },
                        { name: 'Số cánh', width: 180 },
                        { name: 'Số lượng', width: 180 },
                        { name: 'Loại', width: 80 },
                        { name: 'Tác vụ', width: 80 }
                    ],
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
            });
        };
        function add_HETRUCCHANVIT() {
            var form = document.getElementById("form-add-HETRUCCHANVIT");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var HETRUCCHANVIT = {
                    ID: "",
                    TRUC: {
                        TONGCHIEUDAI: $("#add-HETRUCCHANVIT-TRUC-TONGCHIEUDAI").val(),
                        VATLIEU: $("#add-HETRUCCHANVIT-TRUC-VATLIEU").val(),
                        TONGTRONGLUONG: $("#add-HETRUCCHANVIT-TRUC-TONGTRONGLUONG").val(),
                        DUONGKINHTRUCGHEPCHANVIT: $("#add-HETRUCCHANVIT-TRUC-DUONGKINHTRUCGHEPCHANVIT").val(),
                        DUONGKINHTRUCTRUNGGIAN: $("#add-HETRUCCHANVIT-TRUC-DUONGKINHTRUCTRUNGGIAN").val(),
                        DUONGKINHTRUCXOAN: $("#add-HETRUCCHANVIT-TRUC-DUONGKINHTRUCXOAN").val(),
                        DUONGKINHTRUCCHAN: $("#add-HETRUCCHANVIT-TRUC-DUONGKINHTRUCCHAN").val(),
                        GOCNGIENGTRUC: $("#add-HETRUCCHANVIT-TRUC-GOCNGIENGTRUC").val()
                    },
                    CHANVIT: {
                        LOAICHANVIT: $("#add-HETRUCCHANVIT-CHANVIT-LOAICHANVIT").val(),
                        DUONGKINH: $("#add-HETRUCCHANVIT-CHANVIT-DUONGKINH").val(),
                        SOCANH: $("#add-HETRUCCHANVIT-CHANVIT-SOCANH").val(),
                        VATLIEU: $("#add-HETRUCCHANVIT-CHANVIT-VATLIEU").val(),
                        TRONGLUONG: $("#add-HETRUCCHANVIT-CHANVIT-TRONGLUONG").val(),
                        CHIEUQUAY: $("#add-HETRUCCHANVIT-CHANVIT-CHIEUQUAY").val(),
                        VONGQUAYDINHMUC: $("#add-HETRUCCHANVIT-CHANVIT-VONGQUAYDINHMUC").val()
                    },
                    ODO: {
                        SOLUONG: $("#add-HETRUCCHANVIT-ODO-SOLUONG").val(),
                        LOAI: $("#add-HETRUCCHANVIT-ODO-LOAI").val(),
                        MODAUBOITRON: $("#add-HETRUCCHANVIT-ODO-MODAUBOITRON").val()
                    }
                };
                console.log(HETRUCCHANVIT);
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/themhetrucchanvit?id=" + getParameterByName("Ship_ID"),
                    dataType: "json",
                    data: JSON.stringify(HETRUCCHANVIT),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm hệ trục chân vịt thành công.");
                        loadDataList_HETRUCCHANVIT();
                    }, error: function (ret) {
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-add-HETRUCCHANVIT').modal("hide");
                    },
                });
            }
            return false;
        }
        function onclick_edit_HETRUCCHANVIT(ID, TONGCHIEUDAI, VATLIEU, TONGTRONGLUONG, DUONGKINHTRUCGHEPCHANVIT, DUONGKINHTRUCTRUNGGIAN, DUONGKINHTRUCXOAN, DUONGKINHTRUCCHAN, GOCNGIENGTRUC, LOAICHANVIT, DUONGKINH, SOCANH, VATLIEU, TRONGLUONG, CHIEUQUAY, VONGQUAYDINHMUC, SOLUONG, LOAI, MODAUBOITRON) {
            $("#edit-HETRUCCHANVIT-ID").val(ID);
            $("#edit-HETRUCCHANVIT-TRUC-TONGCHIEUDAI").val(TONGCHIEUDAI);
            $("#edit-HETRUCCHANVIT-TRUC-VATLIEU").val(VATLIEU);
            $("#edit-HETRUCCHANVIT-TRUC-TONGTRONGLUONG").val(TONGTRONGLUONG);
            $("#edit-HETRUCCHANVIT-TRUC-DUONGKINHTRUCGHEPCHANVIT").val(DUONGKINHTRUCGHEPCHANVIT);
            $("#edit-HETRUCCHANVIT-TRUC-DUONGKINHTRUCTRUNGGIAN").val(DUONGKINHTRUCTRUNGGIAN);
            $("#edit-HETRUCCHANVIT-TRUC-DUONGKINHTRUCXOAN").val(DUONGKINHTRUCXOAN);
            $("#edit-HETRUCCHANVIT-TRUC-DUONGKINHTRUCCHAN").val(DUONGKINHTRUCCHAN);
            $("#edit-HETRUCCHANVIT-TRUC-GOCNGIENGTRUC").val(GOCNGIENGTRUC);
            $("#edit-HETRUCCHANVIT-CHANVIT-LOAICHANVIT").val(LOAICHANVIT);
            $("#edit-HETRUCCHANVIT-CHANVIT-DUONGKINH").val(DUONGKINH);
            $("#edit-HETRUCCHANVIT-CHANVIT-SOCANH").val(SOCANH);
            $("#edit-HETRUCCHANVIT-CHANVIT-VATLIEU").val(VATLIEU);
            $("#edit-HETRUCCHANVIT-CHANVIT-TRONGLUONG").val(TRONGLUONG);
            $("#edit-HETRUCCHANVIT-CHANVIT-CHIEUQUAY").val(CHIEUQUAY);
            $("#edit-HETRUCCHANVIT-CHANVIT-VONGQUAYDINHMUC").val(VONGQUAYDINHMUC);
            $("#edit-HETRUCCHANVIT-ODO-SOLUONG").val(SOLUONG);
            $("#edit-HETRUCCHANVIT-ODO-LOAI").val(LOAI);
            $("#edit-HETRUCCHANVIT-ODO-MODAUBOITRON").val(MODAUBOITRON);
        }
        function edit_HETRUCCHANVIT() {
            var form = document.getElementById("form-edit-HETRUCCHANVIT");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var HETRUCCHANVIT = {
                    ID: $("#edit-HETRUCCHANVIT-ID").val(),
                    TRUC: {
                        TONGCHIEUDAI: $("#edit-HETRUCCHANVIT-TRUC-TONGCHIEUDAI").val(),
                        VATLIEU: $("#edit-HETRUCCHANVIT-TRUC-VATLIEU").val(),
                        TONGTRONGLUONG: $("#edit-HETRUCCHANVIT-TRUC-TONGTRONGLUONG").val(),
                        DUONGKINHTRUCGHEPCHANVIT: $("#edit-HETRUCCHANVIT-TRUC-DUONGKINHTRUCGHEPCHANVIT").val(),
                        DUONGKINHTRUCTRUNGGIAN: $("#edit-HETRUCCHANVIT-TRUC-DUONGKINHTRUCTRUNGGIAN").val(),
                        DUONGKINHTRUCXOAN: $("#edit-HETRUCCHANVIT-TRUC-DUONGKINHTRUCXOAN").val(),
                        DUONGKINHTRUCCHAN: $("#edit-HETRUCCHANVIT-TRUC-DUONGKINHTRUCCHAN").val(),
                        GOCNGIENGTRUC: $("#edit-HETRUCCHANVIT-TRUC-GOCNGIENGTRUC").val()
                    },
                    CHANVIT: {
                        LOAICHANVIT: $("#edit-HETRUCCHANVIT-CHANVIT-LOAICHANVIT").val(),
                        DUONGKINH: $("#edit-HETRUCCHANVIT-CHANVIT-DUONGKINH").val(),
                        SOCANH: $("#edit-HETRUCCHANVIT-CHANVIT-SOCANH").val(),
                        VATLIEU: $("#edit-HETRUCCHANVIT-CHANVIT-VATLIEU").val(),
                        TRONGLUONG: $("#edit-HETRUCCHANVIT-CHANVIT-TRONGLUONG").val(),
                        CHIEUQUAY: $("#edit-HETRUCCHANVIT-CHANVIT-CHIEUQUAY").val(),
                        VONGQUAYDINHMUC: $("#edit-HETRUCCHANVIT-CHANVIT-VONGQUAYDINHMUC").val()
                    },
                    ODO: {
                        SOLUONG: $("#edit-HETRUCCHANVIT-ODO-SOLUONG").val(),
                        LOAI: $("#edit-HETRUCCHANVIT-ODO-LOAI").val(),
                        MODAUBOITRON: $("#edit-HETRUCCHANVIT-ODO-MODAUBOITRON").val()
                    }
                };
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/update_hetrucchanvit?id=" + HETRUCCHANVIT.ID,
                    dataType: "json",
                    data: JSON.stringify(HETRUCCHANVIT),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Cập nhật hệ trục chân vịt thành công.");
                        loadDataList_HETRUCCHANVIT();
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-HETRUCCHANVIT').modal("hide");
                    },
                });
            }
            return false;
        }
        function delete_HETRUCCHANVIT(id) {
            let text = "Bạn có chắc muốn xóa hệ trục chân vịt này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/xoahetrucchanvit?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    loadDataList_HETRUCCHANVIT();
                    toastSuccess("Thành công", "Xóa hệ trục chân vịt thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa hệ trục chân vịt không thành công!");
                })
            } else {

            }
        }

    </script>
</asp:Content>
