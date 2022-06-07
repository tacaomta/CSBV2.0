<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Add_Staff.aspx.cs" Inherits="CSB.Page_Master.Add_Staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>

    </style>
    <div class="main-body">
        <div class="page-wrapper">
            <div class="card">
                <div class="card-header">
                    <h5>THÊM MỚI CÁN BỘ, NHÂN VIÊN KỸ THUẬT</h5>
                    <div class="page-header-breadcrumb">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Null.aspx" style="font-size: 14px;">Trang chủ</a>
                            </li>
                            <li class="breadcrumb-item"><a href="#" style="font-size: 14px;">Quản lý nhân viên</a>
                            </li>
                            <li class="breadcrumb-item"><a href="Add_Staff.aspx" style="font-size: 14px;">Thêm mới nhân viên</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="card-block">
                    <form>
                        <h4 class="sub-title">Thông tin cơ bản</h4>
                        <div class="row">
                            <div class="col-lg-8 col-md-12">
                                <div class="form-group row">
                                    <label class="col-lg-3 col-md-3 col-form-label">Họ và tên <span style="color: red;">(*)</span>: </label>
                                    <div class="col-lg-9 col-md-9">
                                        <input type="text" id="add-staff-HOTEN" class="form-control" placeholder="Ví dụ: Nguyễn Văn A" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-12">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-md-3 col-form-label">Năm sinh <span style="color: red;">(*)</span>: </label>
                                    <div class="col-lg-8 col-md-9">
                                        <input type="text" id="add-staff-NAMSINH" class="form-control" placeholder="Ví dụ: 1982" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8 col-md-12">
                                <div class="form-group row">
                                    <label class="col-lg-3 col-md-3 col-form-label">Quê quán <span style="color: red;">(*)</span>: </label>
                                    <div class="col-lg-9 col-md-9">
                                        <input type="text" id="add-staff-QUEQUAN" class="form-control" placeholder="Ví dụ: Diễn Châu - Nghệ An - Nghệ An" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-12">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-md-3 col-form-label">Nhập ngũ <span style="color: red;">(*)</span>: </label>
                                    <div class="col-lg-8 col-md-9">
                                        <input type="text" id="add-staff-NHAPNGU" class="form-control" placeholder="Ví dụ: 9/2001" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h4 class="sub-title">Thông tin trình độ</h4>
                        <div class="row">
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Cấp bậc <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="add-staff-CAPBAC" onchange="onchangeCapBac(this.value)">
                                            <option selected="" disabled="" value="">Chưa chọn...</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Chức vụ <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="add-staff-CHUCVU" onchange="onchangeChucVu(this.value)">
                                            <option selected="" disabled="" value="">Chưa chọn...</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Chuyên ngành <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="add-staff-CHUYENNGANH" onchange="onchangeChuyenNganh(this.value)">
                                            <option selected="" disabled="" value="">Chưa chọn...</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Trình độ <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="add-staff-TRINHDO" onchange="onchangeTrinhDo(this.value)">
                                            <option selected="" disabled="" value="">Chưa chọn...</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Trường đào tạo <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="add-staff-TRUONG" onchange="onchangeTruong(this.value)">
                                            <option selected="" disabled="" value="">Chưa chọn...</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Năm tốt nghiệp <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <input type="text" id="add-staff-TOTNGHIEP" class="form-control" placeholder="Ví dụ: 2007" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-footer">
                            <button type="button" class="btn btn-primary right" onclick="addStaff()">Lưu thông tin</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script>
        $(document).ready(function () {
            loadVung();

            $('table').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    info: false,
                    paging: false,
                    lengthChange: false,
                    "columns": [
                        { name: 'Tháng, năm', width: 200 },
                        { name: 'Số hiệu', width: 200 },
                        { name: 'Cấp quy định', width: 400 },
                    ],
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
                        
            $("#addTTC-SOHIEU").focusout(function () {
                $("#addTTC-SOHIEU").addClass("need-validated");
            });

            $("#addTTC-KYHIEU").focusout(function () {
                $("#addTTC-KYHIEU").addClass("need-validated");
            });

            $("#addTTC-NAMTIEPNHAN").focusout(function () {
                $("#addTTC-NAMTIEPNHAN").addClass("need-validated");
            });

            $("#addTTC-CHUCNANG").focusout(function () {
                $("#addTTC-CHUCNANG").addClass("need-validated");
            });


        });

        function loadVung() {
            $.ajax({
                type: "GET",
                url: linkapi + "naval_region",
                dataType: "json",
                success: function (data) {
                    var selRegion = "";
                    $.each(data, function (key, item) {
                        selRegion += "<option value=" + item.ID + ">" + item.ShortName + "</option>";
                    });
                    $('#addTTC-VUNG').html(selRegion);
                    onchangeVung(data[0].ID);
                }, error: function (ret) {
                    console.log('errorGetnaval_region');
                },
            });
        }

        function onchangeVung(idRegion){
            $.ajax({
                type: "GET",
                url: linkapi + "squadrons_by_region?id=" + idRegion,
                dataType: "json",
                success: function (data) {
                    var selSquadron = '<option value="0" >Trực thuộc BTL Vùng</option>';
                    $.each(data, function (key, item) {
                        selSquadron += "<option value=" + item.Id + ">" + item.Name + "</option>";
                    });
                    $('#addTTC-HAIDOAN').html(selSquadron);
                    onchangeHaiDoan("0");
                }, error: function (ret) {
                    console.log('errorGetsquadrons_by_region');
                },
            });
        }

        function onchangeHaiDoan(idSquadron) {
            if (idSquadron == '0') {
                var idRegion = $('#addTTC-VUNG').val();
                var selFlotilla;
                $.ajax({
                    type: "GET",
                    url: linkapi + "flotilla_by_navalregion?id=" + idRegion,
                    dataType: "json",
                    success: function (data) {
                        var selFlotilla = '';
                        $.each(data, function (key, item) {
                            if (item.Squadron == null) {
                                selFlotilla += "<option value=" + item.Id + ">" + item.Name + "</option>";
                            }
                        });
                        $('#addTTC-HAIDOI').html(selFlotilla);
                    }, error: function (ret) {
                        console.log('errorGet flotilla_by_navalregion');
                    },
                });
            }
            else {
                $.ajax({
                    type: "GET",
                    url: linkapi + "flotilla_by_squadron?id=" + idSquadron,
                    dataType: "json",
                    success: function (data) {
                        $.each(data, function (key, item) {
                            selFlotilla += "<option value=" + item.Id + ">" + item.Name + "</option>";
                        });
                        $('#addTTC-HAIDOI').html(selFlotilla);
                    }, error: function (ret) {
                        console.log('errorGet flotilla_by_navalregion');
                    },
                });
            }
        }

        function addTau() {
            var date = new Date();
            var strDate = '' + date.getDate() + '/' + (Number(date.getMonth()) + 1) + '/' + date.getFullYear() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
            var newShip = {
                TTCOBAN: {
                    SOHIEU: $("#addTTC-SOHIEU").val(),
                    KYHIEU: $("#addTTC-KYHIEU").val(),
                    NOISANXUAT: $("#addTTC-NOISANXUAT").val(),
                    NAMHATHUY: $("#addTTC-NAMHATHUY").val(),
                    NAMTIEPNHAN: $("#addTTC-NAMTIEPNHAN").val(),
                    CHUCNANG: $("#addTTC-CHUCNANG").val()
                },
                GIANNUOC: {
                    Dmax: $("#addLGN-Dmax").val(),
                    Dmin: $("#addLGN-Dmin").val()
                },
                KT: {
                    Lmax: $("#addKT-Lmax").val(),
                    Ltk: $("#addKT-Ltk").val(),
                    Bmax: $("#addKT-Bmax").val(),
                    Htb: $("#addKT-Htb").val(),
                    Hmax: $("#addKT-Hmax").val(),
                    Dmax: $("#addKT-Dmax").val()
                },
                MN: {
                    Tm: $("#addMN-Tm").val(),
                    Ttb: $("#addMN-Ttb").val(),
                    Td: $("#addMN-Td").val(),
                    Tmax: $("#addMN-Tmax").val()
                },
                VT: {
                    Vmax: $("#addVT-Vmax").val(),
                    Vkt: $("#addVT-Vkt").val()
                },
                KNHD: {
                    H1: $("#addKNHD-H1").val(),
                    Tm: $("#addKNHD-Tm").val(),
                    Wmax: $("#addKNHD-Wmax").val(),
                },
                LDT: {
                    DCKH: $("#addLDT-DCKH").val(),
                    DCSL: $("#addLDT-DCSL").val(),
                    DNKH: $("#addLDT-DNKH").val(),
                    DNSL: $("#addLDT-DNSL").val(),
                    MN: $("#addLDT-MN").val(),
                    MNSL: $("#addLDT-MNSL").val()
                },
                BC: {
                    QS: String(Number($("#addBC-SQ").val()) + Number($("#addBC-VCQP").val()) + Number($("#addBC-QNCN").val()) + Number($("#addBC-HSQCS").val())),
                    SQ: $("#addBC-SQ").val(),
                    VCQP: $("#addBC-VCQP").val(),
                    QNCN: $("#addBC-QNCN").val(),
                    HSQCS: $("#addBC-HSQCS").val()
                },
                Meta: {
                    Created: strDate,
                    LastUpdated: strDate
                },
                FlotID: $("#addTTC-HAIDOI").val()
            };
            console.log(newShip);
            console.log(linkapi + "v2/insert_ship");
            $.ajax({
                type: "POST",
                url: linkapi + "v2/insert_ship",
                dataType: "json",
                data: JSON.stringify(newShip),
                contentType: "application/json",
                success: function (data) {
                    toastSuccess("Thành công", "Thêm tàu thành công!");
                    console.log("data: " + data);
                    debugger
                }, error: function (ret) {
                    debugger
                    alert("Có thể số hiệu tàu này đã tồn tại!" + ret.responseJSON.Message);
                    //toastError("Thất bại! Có thể số hiệu tàu này đã tồn tại", ret.responseJSON.Message);
                },
            });
            debugger
        }

    </script>
</asp:Content>
