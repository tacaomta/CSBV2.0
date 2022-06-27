<%@ Page Title="Đăng ký các phương tiện bảo vệ sức sống tàu và cứu sinh" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="DangKyPhuongTien.aspx.cs" Inherits="CSB.Page_Master.DangKyPhuongTien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
                                    <ul class="nav nav-tabs" style="inline-size: max-content;">
                                        <li class="nav-item">
                                            <a class="nav-link active" id="tabDANGKYCLHANGHAI" data-toggle="tab" href="#DANGKYCLHANGHAI">Hàng hải</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="tabVUKHI" data-toggle="tab" onclick="loadDataList_VUKHI()" href="#VUKHI">Vũ khí</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="tabDANGKYCLRADA" data-toggle="tab" onclick="loadDataList_DANGKYCLRADA()" href="#DANGKYCLRADA">Rada</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="tabTOMAY" data-toggle="tab" onclick="loadDataList_TOMAY()" href="#TOMAY">Các tổ máy</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="tabHETRUCHANVIT" data-toggle="tab" onclick="loadDataList_HETRUCCHANVIT()" href="#HETRUCHANVIT">Hệ trục chân vịt</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="tabNEOXICHNEO" data-toggle="tab" onclick="loadDataList_NEOXICHNEO()" href="#NEOXICHNEO">Neo, xích neo</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="tabBOMDAU-NUOC-THONGGIO" data-toggle="tab" onclick="loadDataList_BOMDAUNUOCTHONGGIO()" href="#BOMDAU-NUOC-THONGGIO">Bơm dầu, nước, thông gió</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="tabTRANGBIKHAC" data-toggle="tab" onclick="loadDataList_TRANGBIKHAC()" href="#TRANGBIKHAC">Trang bị khác</a>
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
                                            <button id="btn_add_DANGKYCLHANGHAI" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-DANGKYCLHANGHAI" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span> Thêm</button>
                                        </div>
                                        <table id="table-DANGKYCLHANGHAI" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="VUKHI" class=" tab-pane">
                                        <br>
                                        <h5>VŨ KHÍ</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_VUKHI()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_VUKHI" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-VUKHI" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span> Thêm</button>
                                        </div>
                                        <table id="table-VUKHI" class="table table-bordered table-striped table-md" style="width: 100%">
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
                                    <div id="TOMAY" class=" tab-pane">
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
                                    </div>
                                    <div id="BOMDAU-NUOC-THONGGIO" class=" tab-pane">
                                        <br>
                                        <h5>BẢNG THỐNG KÊ CÁC BƠM DẦU, NƯỚC VÀ THÔNG GIÓ</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_BOMDAUNUOCTHONGGIO()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_BOMDAUNUOCTHONGGIO" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-BOMDAUNUOCTHONGGIO" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span> Thêm bơm dầu, nước và thông gió</button>
                                        </div>
                                        <table id="table-BOMDAUNUOCTHONGGIO" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="TRANGBIKHAC" class=" tab-pane">
                                        <br>
                                        <h5>CÁC TRANG BỊ KHÁC</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_TRANGBIKHAC()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_TRANGBIKHAC" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-TRANGBIKHAC" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span> Thêm trang bị khác</button>
                                        </div>
                                        <table id="table-TRANGBIKHAC" class="table table-bordered table-striped table-md" style="width: 100%">
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
            if (i == 1)
                $("#tabDANGKYCLHANGHAI").tab('show');
            else if (i == 2)
                $("#tabVUKHI").tab('show');
            else if (i == 3) {
                $("#tabDANGKYCLRADA").tab('show');
                loadDataList_DANGKYCLRADA();
            }
            else if(i==4)
                $("#tabTOMAY").tab('show');
            else if(i==5)
                $("#tabHETRUCHANVIT").tab('show');
            else if(i==6)
                $("#tabNEOXICHNEO").tab('show');
            else if(i==7)
                $("#tabBOMDAU-NUOC-THONGGIO").tab('show');
            else if (i == 8)
                $("#tabTRANGBIKHAC").tab('show');
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
                }
            }
        });

        // HÀNG HẢI

        // VŨ KHÍ

        // RADA
        function loadRada() {
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
            loadRada();
            $.ajax({
                type: "GET",
                url: linkapi + "v2/dangkyclrada?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
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
                    var IDPT;
                    for (i = 0; i < lenPt; i++) {
                        tabletext += "<tr><td style='text-align: center;'>" + (i + 1) + "</td><td>" + listPt[i] + "</td><td>" + listSL[i] + "</td>";
                        for (j = 0; j < listlen; j++) {
                            TRANGTHAI = '';
                            $.each(data, function (key, item) {
                                debugger
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
                        tabletext += '<td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Thêm đăng ký" data-toggle="modal" data-target="#model-add-DANGKYCLRADA"><i class="bi bi-plus-circle-fill"></i></a></div></td></tr>';
                    }
                    tabletext += "</tbody>";
                    $('#table-DANGKYCLRADA').html(tabletext);
                    console.log("okGET");
                    loadTableDANGKYCLRADA();
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
        };
        function loadTableDANGKYCLRADA() {
            $('table[id=table-DANGKYCLRADA]').each(function () {
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
            });
        };
        // Chưa được
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
                    $('#' + input ).html(selRegion);
                }, error: function (ret) {
                },
            });
        }
        function click_add_DANGKYCLRADA(id = null) {
            debugger
            if (id != null) {
                $('#add-DANGKYCLRADA-DANGKYCHATLUONG-TRANGTHAI').attr('disabled', '');
            }
            else {
                $('#add-DANGKYCLRADA-DANGKYCHATLUONG-TRANGTHAI').removeAttr('disabled', '');
            }
            loadTrangThai('add-DANGKYCLRADA-DANGKYCHATLUONG_TRANGTHAI', '');
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
                    url: linkapi + "v2/themdangkyclrada?id=" + getParameterByName("Ship_ID"),
                    dataType: "json",
                    data: JSON.stringify(DANGKYCLRADA),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm thông tin đăng ký chất lượng rada thành công.");
                        loadDataList_DANGKYCLRADA();
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $("#add-DANGKYCLRADA-DANGKYCHATLUONG-NAMDANGKY").val("");
                        $("#add-DANGKYCLRADA-DANGKYCHATLUONG-TRANGTHAI").val("");
                        $('#model-add-DANGKYCLRADA').modal("hide");
                    },
                });
            }
            return false;
        }
        function onclick_edit_DANGKYCLRADA(IDRADA, KYHIEU, SOLUONG, DANGKYCHATLUONG_ID, DANGKYCHATLUONG_NAMDANGKY, DANGKYCHATLUONG_TRANGTHAI) {
            loadTrangThai('edit-DANGKYCLRADA-DANGKYCHATLUONG_TRANGTHAI', DANGKYCHATLUONG_TRANGTHAI);
            console.log(IDRADA, KYHIEU, SOLUONG, DANGKYCHATLUONG_ID, DANGKYCHATLUONG_NAMDANGKY, DANGKYCHATLUONG_TRANGTHAI);
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
                        loadDataList_DANGKYCLRADA();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-DANGKYCLRADA').modal("hide");
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
                    loadDataList_DANGKYCLRADA();
                    toastSuccess("Thành công", "Xóa thông tin đăng ký thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa thông tin đăng ký không thành công!");
                })
            } else {

            }
        }
    </script>
</asp:Content>
