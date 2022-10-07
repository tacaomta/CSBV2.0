<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="TheoDoiSuaChuaTau.aspx.cs" Inherits="CSB.Page_Master.TheoDoiSuaChuaTau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #table_SuaChuaTau_wrapper {
            overflow-x: hidden;
        }
    </style>
        <div id="form1">
        <div class="section" style="background-color: #fff; padding-bottom: 5px;">
            <div class="section-header" style="background-color: #fff;">
                <h4 id="title_suachuatau" style="color: black; margin: 0; margin-left: 15px;">THEO DÕI SỬA CHỮA TÀU</h4>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ </a></div>
                    <div class="breadcrumb-item active"><a href="Manage_Tau?vung=1" style="color: #01b5f9">Quản lý tàu</a></div>
                    <div class="breadcrumb-item active"><a href="#" onclick="HoSoTau()" style="color: #01b5f9">Hồ sơ tàu</a></div>
                    <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Theo dõi sữa chửa tàu</a></div>
                </div>
            </div>
            <div class="section-content">
                <div class="section">
                    <div class="col-md-12">
                        <div class="btn-group">
                            <button onclick="btn_loadDataList_SuaChuaTau()" class="btn btn-secondary mb-2"><i class="bi-arrow-clockwise"></i>&nbsp;Load dữ liệu</button>
                            <button id="btn_add_SuaChuaTau" onclick="btn_add_SuaChuaTau()" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-SuaChuaTau" style="padding-top: 4px;"><i class="bi bi-plus-circle"></i>&nbsp; Thêm mới</button>
                        </div>
                        <table id="table_SuaChuaTau" class="table table-bordered table-striped table-md" style="width: 100%">
                            <%--<thead><tr><th colspan='2'>TG SỬA CHỮA</th><th rowspan='2'>NƠI SỬA CHỮA</th><th rowspan='2'>CẤP SỬA CHỮA</th><th rowspan='2'>GIÁ THÀNH(VNĐ)</th><th rowspan='2'>NỘI DUNG SỬA CHỮA</th><th rowspan='2'>CHẤT LƯỢNG</th><th rowspan='2'>GHI CHÚ</th><th rowspan='2'>TÁC VỤ</th></tr><tr><th>Bắt đầu</th><th>Kết thúc</th></tr></thead><tbody>
                                <tr>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>5</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>8</td>
                                    <td>9</td>
                                </tr>
                            </tbody>--%>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-SuaChuaTau" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <form id="form-add-SuaChuaTau" onsubmit="return false">
                    <div class="card auth_form" style="margin-bottom: 0px">
                        <div class="modal-header" style="padding: 10px 16px;">
                            <h4 class="title-modal-banve font-weight-bold">Thêm sửa chữa tàu</h4>
                        </div>
                        <div class="modal-body" style="padding: 6px 16px;">
                            <div class="">
                                <h4 class="sub-title">Thời gian sửa chữa</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">TG bắt đầu: </label>
                                            <div class="col-sm-8">
                                                <input type="date" id="SuaChua_addTGbatdau" class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">TG kết thúc: </label>
                                            <div class="col-sm-8">
                                                <input type="date"  id="SuaChua_addTGketthuc" class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                             
                                <h4 class="sub-title">Các thông tin khác</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Nơi sửa chưa: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_addNoiSuaChua" class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Cấp sửa chữa: </label>
                                            <div class="col-sm-8">
                                                <select class="form-control" id="SuaChua_addCapSuaChua" onchange="onchangeCapBac(this.value)">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Phương án kê đà: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_addPhuongAn" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Giá thành (VNĐ): </label>
                                            <div class="col-sm-8">
                                                <input type="number" min="0" step="any" id="SuaChua_addGiaThanh" class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Ghi chú: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_addGhiChu" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">Tóm tắt nội dung sửa chữa</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Máy chính: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_addNoiDungSC_MC" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Hệ trục: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_addNoiDungSC_HT" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Thân vỏ: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_addNoiDungSC_TV" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Trang bị khác: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_addNoiDungSC_TBK" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">Đánh giá chất lượng sửa chữa</h4>
                                
                                 <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Tốc độ tối đa: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_addChatLuongSC_TDTD" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Tổng thể: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_addChatLuongSC_TongThe" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Tồn tại: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_addChatLuongSC_TonTai" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer" style="padding: 8px 16px;">
                            <button type="submit" onclick="submit_add_SuaChua()" class="btn btn-info">Thêm</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

        <div class="modal fade" id="model-edit-SuaChuaTau" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <form id="form-edit-SuaChuaTau" onsubmit="return false">
                     <input type="hidden" id="SuaChua_editID" />
                    <div class="card auth_form" style="margin-bottom: 0px">
                        <div class="modal-header" style="padding: 10px 16px;">
                            <h4 class="title-modal-banve font-weight-bold">Thay đổi sửa chữa tàu</h4>
                        </div>
                        <div class="modal-body" style="padding: 6px 16px;">
                            <div class="">
                                <h4 class="sub-title">Thời gian sửa chữa</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">TG bắt đầu: </label>
                                            <div class="col-sm-8">
                                                <input type="date" id="SuaChua_editTGbatdau" class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">TG kết thúc: </label>
                                            <div class="col-sm-8">
                                                <input type="date"  id="SuaChua_editTGketthuc" class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                             
                                <h4 class="sub-title">Các thông tin khác</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Nơi sửa chưa: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_editNoiSuaChua" class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Cấp sửa chữa: </label>
                                            <div class="col-sm-8">
                                                <select class="form-control" id="SuaChua_editCapSuaChua" onchange="onchangeCapBac(this.value)">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Phương án kê đà: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_editPhuongAn" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Giá thành (VNĐ): </label>
                                            <div class="col-sm-8">
                                                <input type="number" min="0" step="any" id="SuaChua_editGiaThanh" class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Ghi chú: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_editGhiChu" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                  <h4 class="sub-title">Tóm tắt nội dung sửa chữa</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Máy chính: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_editNoiDungSC_MC" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Hệ trục: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_editNoiDungSC_HT" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Thân vỏ: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_editNoiDungSC_TV" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Trang bị khác: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_editNoiDungSC_TBK" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">Đánh giá chất lượng sửa chữa</h4>
                                                                 <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Tốc độ tối đa: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_editChatLuongSC_TDTD" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Tổng thể: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_editChatLuongSC_TongThe" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Tồn tại: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="SuaChua_editChatLuongSC_TonTai" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer" style="padding: 8px 16px;">
                            <button type="submit" onclick="submit_edit_SuaChua()" class="btn btn-info">Lưu</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        var date = new Date();
        if (Number(date.getMonth()) + 1 < 10) {
            debugger
            var strDate_ntn = '' + date.getFullYear() + '-' + '0' + (Number(date.getMonth()) + 1) + '-' + date.getDate();
        }
        else {
            var strDate_ntn = '' + date.getFullYear() + '-' + (Number(date.getMonth()) + 1) + '-' + date.getDate();
        }
        var Ship_ID;
        var shipName;
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }
        $(document).ready(function () {
            Ship_ID = getParameterByName('Ship_ID');
            if (Ship_ID == null) {
                history.back();
            }
            else {
                Load_Title(Ship_ID);
                list_CapSuaChua('','SuaChua_addCapSuaChua');
                loadDataList_SuaChuaTau(Ship_ID);
            }

        });
        function list_CapSuaChua(id_cap, string_cap) {
            debugger
            $.ajax({
                type: "GET",
                url: linkapi + "v2/caccapsuachuatau",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $('#' + string_cap).empty();
                    $.each(data, function (key, item) {

                        if (item.ID == id_cap) {
                            $('#' + string_cap).append($('<option>', {
                                selected: true,
                                value: item.ID,
                                text: item.CAP
                            }));
                        }
                        else {
                            $('#' + string_cap).append($('<option>', {
                                selected: false,
                                value: item.ID,
                                text: item.CAP
                            }));
                        }

                    });
                    if (id_cap == '') {
                        $('#' + string_cap + 'select').val(data[0].ID);

                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });

        }

        function btn_add_SuaChuaTau() {
            list_CapSuaChua('', 'SuaChua_addCapSuaChua');
        }
        function Load_Title(Ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/ship_detail?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    $("#title_suachuatau").html("THEO DÕI SỬA CHỮA TÀU " + data.TTCOBAN.SOHIEU);
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.


                },
            });
        }

        function HoSoTau() {
            window.location = baseaddress + "Page_Master/Ship_profile?Ship_ID=" + Ship_ID;
        }
        function loadDataList_SuaChuaTau(Ship_ID) {
            {
                $.ajax({
                    type: "GET",
                    url: linkapi + "v2/xemdanhmucsuachuatau?id=" + Ship_ID,
                    dataType: "json",
                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                        //$('#loader').removeClass('hidden');
                    },
                    success: function (data) {
                        var tabletext = "<thead><tr><th rowspan='2'>STT</th><th colspan='2'>TG SỬA CHỮA</th><th rowspan='2'>NƠI SỬA CHỮA</th><th rowspan='2'>CẤP SỬA CHỮA</th><th rowspan='2'>GIÁ THÀNH(VNĐ)</th><th rowspan='2'>PHƯƠNG ÁN KÊ ĐÀ</th><th colspan='4'>TÓM TẮT N.DUNG SC</th><th colspan='3'>ĐÁNH GIÁ C.LƯỢNG SC</th><th rowspan='2'>TÁC VỤ</th></tr><tr><th>Bắt đầu</th><th>Kết thúc</th><th>Máy chính</th><th>Hệ trục</th><th>Thân vỏ</th><th>Trang bị khác</th><th>T.Độ max</th><th>Tổng thể</th><th>Tồn tại</th></tr></thead><tbody>";
                        var i = 1;
                        $.each(data, function (key, item) {
                            tabletext += "<tr><td style='text-align: center;'>" + i + "</td><td>" + item.THOIGIAN.BATDAU + "</td><td>" + item.THOIGIAN.KETTHUC + "</td><td>" + item.NOISUACHUA + "</td><td>" + item.CAPSUACHUA.CAP + "</td><td>" + item.GIATHANH + "</td><td>" + item.PHUONGANKEDA + "</td><td>" + item.TOMTATNOIDUNG.MAYCHINH + "</td><td>" + item.TOMTATNOIDUNG.HETRUC + "</td><td>" + item.TOMTATNOIDUNG.THANVO + "</td><td>" + item.TOMTATNOIDUNG.TRANGBIKHAC + "</td><td>" + item.DANHGIACHATLUONG.TOCDOTOIDA + "</td><td>" + item.DANHGIACHATLUONG.TONGTHE + "</td><td>" + item.DANHGIACHATLUONG.TONTAI + "</td>" + '<td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-SuaChuaTau" onclick="edit_suachuatau(`' + item.ID + '`,`' + item.THOIGIAN.BATDAU + '`,`' + item.THOIGIAN.KETTHUC + '`,`' + item.NOISUACHUA + '`,`' + item.CAPSUACHUA.ID + '`,`' + item.PHUONGANKEDA + '`,`' + item.GIATHANH + '`,`' + item.TOMTATNOIDUNG.MAYCHINH + '`,`' + item.TOMTATNOIDUNG.HETRUC + '`,`' + item.TOMTATNOIDUNG.THANVO + '`,`' + item.TOMTATNOIDUNG.TRANGBIKHAC + '`,`' + item.DANHGIACHATLUONG.TOCDOTOIDA + '`,`' + item.DANHGIACHATLUONG.TONGTHE + '`,`' + item.DANHGIACHATLUONG.TONTAI + '`,`' + item.GHICHU + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_suachuatau(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                            i = i + 1;
                        });
                        tabletext += "</tbody>";
                        $('#table_SuaChuaTau').html(tabletext);
                        loadTableSuaChuaTau();
                        //$('#tableship_wrapper .row .col-sm-12').first().html('<button onclick="btn_addship()" class="btn btn-info btn-lg col-md-6" /*data-toggle="modal" data-target="#model-add-ship"*/ style="height: 40px; margin-bottom: 8px; margin-top: -4px; font-size: 18px;"><span class="glyphicon glyphicon-plus"></span>Thêm tàu</button>');

                    }, error: function (ret) {
                        console.log('errorGET');
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.


                    },
                });
            }
        }
        function loadTableSuaChuaTau() {
            $('table[id=table_SuaChuaTau]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    //"columns": [
                    //    { name: 'STT', width: 20 },
                    //    { name: 'TG SỬA CHỮA', width: 100 },
                    //    { name: 'NƠI XUẤT PHÁT', width: 100 },
                    //    { name: 'NƠI ĐẾN', width: 100 },
                    //    { name: 'SỐ NGÀY HOẠT ĐỘNG', width: 120 },
                    //    { name: 'TỔNG SỐ HLHT', width: 100 },
                    //    { name: 'GHI CHÚ', width: 100 },
                    //    { name: 'TÁC VỤ', width: 60 },
                    //],
                    lengthChange: false,
                    "columnDefs": [
                        {
                            "targets": [0, 3, 4, 5],
                            "searchable": false,
                        },
                        {
                            "targets": [5],
                            "orderable": false
                        },
                        {
                            "targets": [0, 1, 2, 3, 4],
                            "orderable": true
                        }
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
        function ChuyenThoiGian(date_in) {
            var year = date_in.substring(0, 4);
            var month = date_in.substring(5, 7);
            var day = date_in.substring(8, 10);
            date_in = day + '/' + month + '/' + year;
        }
        function btn_loadDataList_SuaChuaTau() {
            location.reload(true);
        }
        function submit_add_SuaChua() {
            var form = document.getElementById("form-add-SuaChuaTau");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {

                var date_bd = new Date($("#SuaChua_addTGbatdau").val());
                var day = date_bd.getDate();
                var month = date_bd.getMonth();
                month++;
                var year = date_bd.getFullYear();
                if (day < 10) {
                    day = '0' + day;
                }
                if (month < 10) {
                    month = '0' + month;
                }
                date_bd = day + '/' + month + '/' + year;

                var date_kt = new Date($("#SuaChua_addTGketthuc").val());
                var day = date_kt.getDate();
                var month = date_kt.getMonth();
                month++;
                var year = date_kt.getFullYear();
                if (day < 10) {
                    day = '0' + day;
                }
                if (month < 10) {
                    month = '0' + month;
                }
                date_kt = day + '/' + month + '/' + year;

                var SuaChuaTau= {
                    THOIGIAN: {
                        BATDAU: date_bd,
                        KETTHUC: date_kt
                    },
                    NOISUACHUA: $("#SuaChua_addNoiSuaChua").val(),
                    CAPSUACHUA: {
                        ID: $("#SuaChua_addCapSuaChua").val()
                    },
                    PHUONGANKEDA: $("#SuaChua_addPhuongAn").val(),
                    GIATHANH: $("#SuaChua_addGiaThanh").val(),
                    TOMTATNOIDUNG: {
                        MAYCHINH: $("#SuaChua_addNoiDungSC_MC").val(),
                        HETRUC: $("#SuaChua_addNoiDungSC_HT").val() ,
                        THANVO: $("#SuaChua_addNoiDungSC_TV").val(),
                        TRANGBIKHAC: $("#SuaChua_addNoiDungSC_TBK").val()
                    }, 
                    DANHGIACHATLUONG: {
                        TOCDOTOIDA: $("#SuaChua_addChatLuongSC_TDTD").val(),
                        TONGTHE: $("#SuaChua_addChatLuongSC_TongThe").val(),
                        TONTAI: $("#SuaChua_addChatLuongSC_TonTai").val()
                    },
                    GHICHU: $("#SuaChua_addGhiChu").val(),
                };
                console.log(SuaChuaTau);
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/themtheodoisuachuatau?id=" + Ship_ID,
                    dataType: "json",
                    data: JSON.stringify(SuaChuaTau),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm sửa chữa thành công.");
                        loadDataList_SuaChuaTau(Ship_ID);
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $("#SuaChua_addTGbatdau").val("");
                        $("#SuaChua_addTGketthuc").val("");
                          //Thiếu cấp bậc
                        $("#SuaChua_addNoiSuaChua").val("");
                        $("#SuaChua_addPhuongAn").val("");
                        $("#SuaChua_addGiaThanh").val("");
                        $("#SuaChua_addNoiDungSC_MC").val("");
                        $("#SuaChua_addNoiDungSC_HT").val("");
                        $("#SuaChua_addNoiDungSC_TV").val("");
                        $("#SuaChua_addNoiDungSC_TBK").val("");
                        $("#SuaChua_addChatLuongSC_TDTD").val("");
                        $("#SuaChua_addChatLuongSC_TongThe").val("");
                        $("#SuaChua_addChatLuongSC_TonTai").val("");
                        $("#SuaChua_addGhiChu").val("");
                        $('#model-add-SuaChuaTau').modal("hide");
                    },
                });
            }
        }

        function edit_suachuatau(ID, THOIGIANBD, THOIGIANKT, NOISUACHUA, CAPSUACHUA_ID, PHUONGANKEDA, GIATHANH, MAYCHINH, HETRUC, THANVO, TRANGBIKHAC, TOCDOTOIDA, TONGTHE, TONTAI,GHICHU) {
            var day = THOIGIANBD.substring(0, 2);
            var month = THOIGIANBD.substring(3, 5);
            var year = THOIGIANBD.substring(6, 10);
            THOIGIANBD = year + '-' + month + '-' + day;
            var day = THOIGIANKT.substring(0, 2);
            var month = THOIGIANKT.substring(3, 5);
            var year = THOIGIANKT.substring(6, 10);
            THOIGIANKT = year + '-' + month + '-' + day;
            $("#SuaChua_editID").val(ID);
            $("#SuaChua_editTGbatdau").val(THOIGIANBD);
            $("#SuaChua_editTGketthuc").val(THOIGIANKT);
            list_CapSuaChua(CAPSUACHUA_ID, 'SuaChua_editCapSuaChua');
            $("#SuaChua_editNoiSuaChua").val(NOISUACHUA);
            $("#SuaChua_editPhuongAn").val(PHUONGANKEDA);
            $("#SuaChua_editGiaThanh").val(GIATHANH);

            
            $("#SuaChua_editNoiDungSC_MC").val(MAYCHINH);
            $("#SuaChua_editNoiDungSC_HT").val(HETRUC);
            $("#SuaChua_editNoiDungSC_TV").val(THANVO);
            $("#SuaChua_editNoiDungSC_TBK").val(TRANGBIKHAC);
            $("#SuaChua_editChatLuongSC_TDTD").val(TOCDOTOIDA);
            $("#SuaChua_editChatLuongSC_TongThe").val(TOCDOTOIDA);
            $("#SuaChua_editChatLuongSC_TonTai").val(TOCDOTOIDA);
          
            $("#SuaChua_editGhiChu").val(GHICHU);
        }

        function submit_edit_SuaChua() {
            var form = document.getElementById("form-edit-SuaChuaTau");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                debugger
                var date_bd = new Date($("#SuaChua_editTGbatdau").val());
                var day = date_bd.getDate();
                var month = date_bd.getMonth();
                month++;
                var year = date_bd.getFullYear();
                if (day < 10) {
                    day = '0' + day;
                }
                if (month < 10) {
                    month = '0' + month;
                }
                date_bd = day + '/' + month + '/' + year;

                var date_kt = new Date($("#SuaChua_editTGketthuc").val());
                var day = date_kt.getDate();
                var month = date_kt.getMonth();
                month++;
                var year = date_kt.getFullYear();
                if (day < 10) {
                    day = '0' + day;
                }
                if (month < 10) {
                    month = '0' + month;
                }
                date_kt = day + '/' + month + '/' + year;
                var SuaChuaTau = {
                    ID: $("#SuaChua_editID").val(),
                    THOIGIAN: {
                        BATDAU: date_bd,
                        KETTHUC: date_kt
                    },
                    NOISUACHUA: $("#SuaChua_editNoiSuaChua").val(),
                    CAPSUACHUA: {
                        ID: $("#SuaChua_editCapSuaChua").val()
                    },
                    PHUONGANKEDA: $("#SuaChua_editPhuongAn").val(),
                    GIATHANH: $("#SuaChua_editGiaThanh").val(),
                    TOMTATNOIDUNG: {
                        MAYCHINH: $("#SuaChua_editNoiDungSC_MC").val(),
                        HETRUC: $("#SuaChua_editNoiDungSC_HT").val(),
                        THANVO: $("#SuaChua_editNoiDungSC_TV").val(),
                        TRANGBIKHAC: $("#SuaChua_editNoiDungSC_TBK").val()
                    },
                    DANHGIACHATLUONG: {
                        TOCDOTOIDA: $("#SuaChua_editChatLuongSC_TDTD").val(),
                        TONGTHE: $("#SuaChua_editChatLuongSC_TongThe").val(),
                        TONTAI: $("#SuaChua_editChatLuongSC_TonTai").val()
                    },
                    GHICHU: $("#SuaChua_editGhiChu").val(),
                };
                console.log(SuaChuaTau);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/suatheodoisuachuatau?id=" + $("#SuaChua_editID").val(),
                    dataType: "json",
                    data: JSON.stringify(SuaChuaTau),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thay đổi thông tin sửa chữa thành công.");
                        loadDataList_SuaChuaTau(Ship_ID);
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        //$("#SuaChua_addTGbatdau").val("");
                        //$("#SuaChua_addTGketthuc").val("");
                        ////Thiếu cấp bậc
                        //$("#SuaChua_addNoiSuaChua").val("");
                        //$("#SuaChua_addPhuongAn").val("");
                        //$("#SuaChua_addGiaThanh").val("");
                        //$("#SuaChua_addNoiDungSC").val("");
                        //$("#SuaChua_addDanhGia").val("");
                        //$("#SuaChua_addGhiChu").val("");
                        $('#model-edit-SuaChuaTau').modal("hide");
                    },
                });
            }
        }

        function delete_suachuatau(id_suachua) {
            let text = "Bạn có chắc muốn xóa TT sửa chữa này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/xoatheodoisuachuatau?id=" + id_suachua,
                    type: "DELETE",

                }).done(function (res) {
                    loadDataList_SuaChuaTau(Ship_ID);
                    toastSuccess("Thành công", "Xóa TT sửa chữa thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa TT sửa chữa không thành công!");
                })
            } else {

            }
        }
    </script>
</asp:Content>
