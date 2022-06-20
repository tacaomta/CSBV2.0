<%@ Page Title="Đăng ký các phương tiện bảo vệ sức sống tàu và cứu sinh" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="DangKyPhuongTien.aspx.cs" Inherits="CSB.Page_Master.DangKyPhuongTien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-body">
        <div class="page-wrapper">
            <div class="row">
                <div class="col-sm-12" style="padding: 0px 5px;">
                    <div class="card">
                        <div class="card-header">
                            <h5 id="name">ĐĂNG KÝ PHƯƠNG TIỆN BẢO VỆ SỨC SỐNG VÀ CỨU SINH<span id="TENTAU"></span></h5>
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
                                    <ul class="nav nav-tabs" style="inline-size: max-content;">
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
                                            <a class="nav-link" data-toggle="tab" onclick="loadDataList_NEOXICHNEO()" href="#NEOXICHNEO">Neo, xích neo</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" data-toggle="tab" onclick="loadDataList_BOMDAUNUOCTHONGGIO()" href="#BOMDAU-NUOC-THONGGIO">Bơm dầu, nước, thông gió</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" data-toggle="tab" onclick="loadDataList_TRANGBIKHAC()" href="#TRANGBIKHAC">Trang bị khác</a>
                                        </li>
                                        <%--<li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" onclick="loadDataList_THANVO()" href="#THANVO">Thân vỏ</a>
                                    </li>--%>
                                        <li class="nav-item">
                                            <a class="nav-link" data-toggle="tab" onclick="loadDataList_MAYNENKHI()" href="#MAYNENKHI">Máy nén khí</a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div id="HANGHAI" class=" tab-pane active">
                                        <br>
                                        <h5>HÀNG HẢI</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_HANGHAI()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_HANGHAI" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-HANGHAI" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span>Thêm hàng hải</button>
                                        </div>
                                        <table id="table-HANGHAI" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="VUKHI" class=" tab-pane">
                                        <br>
                                        <h5>VŨ KHÍ</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_VUKHI()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_VUKHI" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-VUKHI" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span>Thêm vũ khí</button>
                                        </div>
                                        <table id="table-VUKHI" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="RADA" class=" tab-pane">
                                        <br>
                                        <h5>THÔNG TIN - RA ĐA</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_RADA()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_RADA" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-RADA" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span>Thêm ra đa</button>
                                        </div>
                                        <table id="table-RADA" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="TOMAY" class=" tab-pane">
                                        <br>
                                        <h5>MÁY CHÍNH</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_MAYCHINH()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-MAYCHINH" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span>Thêm máy chính</button>
                                        </div>
                                        <table id="table-MAYCHINH" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                        <br />
                                        <h5>MÁY PHỤ PHÁT ĐIỆN</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_MAYPHU()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_MAYPHU" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-MAYPHU" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span>Thêm máy phụ</button>
                                        </div>
                                        <table id="table-MAYPHU" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                        <br />
                                        <h5>CÁC TỔ MÁY CHUYÊN DỤNG</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_MAYCHUYENDUNG()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_MAYCHUYENDUNG" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-MAYCHUYENDUNG" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span>Thêm máy chuyên dụng</button>
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
                                            <button id="btn_add_NEOXICHNEO" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-NEOXICHNEO" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span>Thêm neo - xích neo</button>
                                        </div>
                                        <table id="table-NEOXICHNEO" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="BOMDAU-NUOC-THONGGIO" class=" tab-pane">
                                        <br>
                                        <h5>BẢNG THỐNG KÊ CÁC BƠM DẦU, NƯỚC VÀ THÔNG GIÓ</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_BOMDAUNUOCTHONGGIO()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_BOMDAUNUOCTHONGGIO" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-BOMDAUNUOCTHONGGIO" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span>Thêm bơm dầu, nước và thông gió</button>
                                        </div>
                                        <table id="table-BOMDAUNUOCTHONGGIO" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="TRANGBIKHAC" class=" tab-pane">
                                        <br>
                                        <h5>CÁC TRANG BỊ KHÁC</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_TRANGBIKHAC()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_TRANGBIKHAC" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-TRANGBIKHAC" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span>Thêm trang bị khác</button>
                                        </div>
                                        <table id="table-TRANGBIKHAC" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <%--<div id="THANVO" class=" tab-pane">
                                        <br>
                                        <h5>THÂN VỎ</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_THANVO()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_THANVO" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-THANVO" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span> Thêm thân vỏ</button>
                                        </div>
                                        <table id="table-THANVO" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>--%>
                                    <div id="MAYNENKHI" class=" tab-pane">
                                        <br>
                                        <h5>MÁY NÉN KHÍ</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_MAYNENKHI()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_MAYNENKHI" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-MAYNENKHI" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span>Thêm máy nén khí</button>
                                        </div>
                                        <table id="table-MAYNENKHI" class="table table-bordered table-striped table-md" style="width: 100%">
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
</asp:Content>
