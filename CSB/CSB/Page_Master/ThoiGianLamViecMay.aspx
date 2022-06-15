<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="ThoiGianLamViecMay.aspx.cs" Inherits="CSB.Page_Master.ThoiGianLamViecMay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-body">
        <div class="page-wrapper">
            <div class="row">
                <div class="col-sm-12" style="padding: 0px 5px;">
                    <div class="card">
                        <div class="card-header">
                            <h5 id="name">THỜI GIAN LÀM VIỆC CỦA CÁC MÁY</h5>
                            <div class="page-header-breadcrumb">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#!">Trang chủ</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#!">Quản lý tàu</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#!">Hồ sơ tàu</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-block">
                            <div class="btn-group">
                                <button onclick="loadDataList_THOIGIANLAMVIECMAY()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                <button id="btn_add_THOIGIANLAMVIECMAY" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-THOIGIANLAMVIECMAY" style="padding-top: 4px;"><span class="bi-plus-circle-fill"></span> Thêm mới</button>
                            </div>
                            <table id="table-THOIGIANLAMVIECMAY" class="table table-bordered table-striped table-md" style="width: 100%">
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-add-THOIGIANLAMVIECMAY" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <form id="form-add-THOIGIANLAMVIECMAY" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header" style="padding: 10px 16px;">
                                <h4 class="title-modal-banve font-weight-bold">Thêm thông tin thời gian làm việc của máy</h4>
                            </div>
                            <div class="modal-body" style="padding: 6px 16px;">
                                <div class="">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu máy: </label>
                                                <div class="col-sm-8">
                                                    <select class="form-control" id="add-THOIGIANLAMVIECMAY-THONGTINMAY-ID" required>
                                                        <option selected="" disabled="" hidden>-- Chọn máy --</option>
                                                        <optgroup label="Máy chính">
                                                        </optgroup>
                                                        <optgroup label="Máy phụ">
                                                        </optgroup>
                                                        <optgroup label="Máy chuyên dụng">
                                                        </optgroup>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Năm hiện tại: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" id="add-THOIGIANLAMVIECMAY-NAM" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Thời gian làm việc trong quý 1 trong năm: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-THOIGIANLAMVIECMAY-QUYI" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Thời gian làm việc trong quý 2 trong năm: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-THOIGIANLAMVIECMAY-QUYII" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Thời gian làm việc trong quý 3 trong năm: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-THOIGIANLAMVIECMAY-QUYIII" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Thời gian làm việc trong quý 4 trong năm: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-THOIGIANLAMVIECMAY-QUYIV" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer" style="padding: 8px 16px;">
                                <button type="submit" onclick="add_THOIGIANLAMVIECMAY()" class="btn btn-info">Thêm</button>
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
        };
        $(document).ready(function () {
            loadDSMay();
        });
        function loadDSMay() {
            var textselect = '<option selected="" disabled="" hidden>-- Chọn máy --</option>';
            $.ajax({
                type: "GET",
                url: linkapi + "v2/maychinh?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    textselect += '<optgroup label="Máy chính">';
                    $.each(data, function (key, item) {
                        textselect += "<option value=" + item.ID + ">" + item.THONGSOCOBAN.KYHIEU + "</option>";
                    });
                    textselect += '</optgroup>';
                    console.log("okGET");
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
            $.ajax({
                type: "GET",
                url: linkapi + "v2/mayphuphatdien?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    textselect += '<optgroup label="Máy phụ">';
                    $.each(data, function (key, item) {
                        textselect += "<option value=" + item.ID + ">" + item.THONGSOCOBAN.KYHIEU + "</option>";
                    });
                    textselect += '</optgroup>';
                    console.log("okGET");
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
            $.ajax({
                type: "GET",
                url: linkapi + "v2/maychuyendung?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    textselect += '<optgroup label="Máy chuyên dụng">';
                    $.each(data, function (key, item) {
                        textselect += "<option value=" + item.ID + ">" + item.THONGSOCOBAN.KYHIEU + "</option>";
                    });
                    textselect += '</optgroup>';
                    console.log("okGET");
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });

            $("#add-THOIGIANLAMVIECMAY-THONGTINMAY-ID").html(textselect);
        }
    </script>
</asp:Content>
