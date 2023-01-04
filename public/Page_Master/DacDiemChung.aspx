<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="DacDiemChung.aspx.cs" Inherits="CSB.Page_Master.AddShip" %>

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
                            <h5 id="name">THÊM MỚI TÀU</h5>
                            <div class="page-header-breadcrumb">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#!">Trang chủ</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#!">Quản lý tàu</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#!">Thêm mới tàu</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-block">
                            <form id="addTau" onsubmit="return false">
                                <input type="hidden" id="addTTC-ID" />
                                <input type="hidden" id="addMeta-Created" />
                                <h4 class="sub-title">Thông tin cơ bản</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Số hiệu tàu <span style="color: red;">(*)</span>: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="addTTC-SOHIEU" class="form-control" placeholder="Ví dụ: CSB 1234" required>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Ký hiệu tàu <span style="color: red;">(*)</span>: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="addTTC-KYHIEU" class="form-control" placeholder="Ví dụ: K123" required>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Năm tiếp nhận <span style="color: red;">(*)</span>: </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addTTC-NAMTIEPNHAN" min="0" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Năm hạ thủy:</label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addTTC-NAMHATHUY" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row" id="chonVung">
                                            <label class="col-sm-4 col-form-label">Vùng <span style="color: red;">(*)</span>: </label>
                                            <div class="col-sm-8">
                                                <select class="form-control" id="addTTC-VUNG" onchange="onchangeVung(this.value)" required>
                                                    <option selected="" disabled="" value="">Chưa chọn...</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row" id="chonHaiDoan">
                                            <label class="col-sm-4 col-form-label">Hải đoàn <span style="color: red;">(*)</span>: </label>
                                            <div class="col-sm-8">
                                                <select class="form-control" id="addTTC-HAIDOAN" onchange="onchangeHaiDoan(this.value)" required>
                                                    <option selected="" disabled="" value="">Chưa chọn...</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row" id="chonHaiDoi">
                                            <label class="col-sm-4 col-form-label">Hải đội <span style="color: red;">(*)</span>: </label >
                                            <div class="col-sm-8">
                                                <select class="form-control" id="addTTC-HAIDOI" required>
                                                    <option selected="" disabled="" value="">Chưa chọn...</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Nơi sản xuất:</label>
                                            <div class="col-sm-8">
                                                <input type="text" id="addTTC-NOISANXUAT" class="form-control" placeholder="Ví dụ: Liên Xô">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Chức năng, nhiệm vụ: </label>
                                    <div class="col-sm-10">
                                        <input type="text" id="addTTC-CHUCNANG" class="form-control" placeholder="Ví dụ: Tuần tra" required>
                                    </div>
                                </div>
                                <a id="xemThanVo" onclick="xemThanVo()" href="#">Xem thông tin thân vỏ</a>
                                <div id="divSoHieu" disabled="">
                                    <h4 class="sub-title">Thay đổi số hiệu</h4>
                                    <div class="form-group row" style="margin-bottom: 5px;">
                                        <div class="col-sm-12">
                                            <div class="btn-group btn-group-right" role="group" aria-label="Basic example">
                                                <a class="btn btn-primary" data-toggle="modal" data-target="#model-add-THAYDOISOHIEU"><i class="bi bi-plus-circle"></i> Thay đổi</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-12">
                                            <div class="table-responsive">
                                                <table id="table-THAYDOISOHIEU" class="table table-bordered" style="width: 100%;">
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <h4 class="sub-title">Lượng giãn nước (tấn)</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Dmax: </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addLGN-Dmax" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Dmin: </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addLGN-Dmin" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">Kích thước (m)</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Dài nhất (Lmax): </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addKT-Lmax" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Dài thiết kế (Ltk): </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addKT-Ltk" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Rộng nhất (Bmax): </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addKT-Bmax" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Cao mạn (Htb): </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addKT-Htb" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Chiều cao nhất của tàu: </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addKT-Hmax" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Chiều sâu nhất của tàu: </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addKT-Dmax" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">Mớn nước (m)</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Mũi tàu (Tm): </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addMN-Tm" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Giữa tàu (Ttb): </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addMN-Ttb" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Đuôi tàu (tđ): </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addMN-Td" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Lớn nhất (Tmax): </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addMN-Tmax" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">Vận tốc (HL/h)</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Lớn nhất (Vmax): </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addVT-Vmax" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Kinh tế (Vkt): </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addVT-Vkt" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">Khả năng hoạt động trên biển</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Bán kính hoạt động (H1): </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addKNHD-H1" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Thời gian HĐ tối đa (ngày đêm): </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addKNHD-Tm" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Cấp chịu đựng sóng gió (max): </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addKNHD-Wmax" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                    </div>
                                </div>
                                <h4 class="sub-title">Lượng dự trữ</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Dầu cháy: Ký hiệu: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="addLDT-DCKH" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Số lượng (Tấn): </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addLDT-DCSL" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Dầu nhờn: Ký hiệu: </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="addLDT-DNKH" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Số lượng (Tấn): </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addLDT-DNSL" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Nước ngọt: </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addLDT-MN" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Số lượng (Tấn): </label>
                                            <div class="col-sm-8">
                                                <input type="number" step="any" id="addLDT-MNSL" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">Biên chế</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Tổng quân số: </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addBC-QS" min="0" class="form-control" disabled>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Sĩ quan: </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addBC-SQ" onchange="changeQS()" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">VCQP: </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addBC-VCQP" onchange="changeQS()" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">QNCN: </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addBC-QNCN" min="0" onchange="changeQS()" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">HSQ, CS: </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addBC-HSQCS" onchange="changeQS()" min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-footer">
                                    <div class="left">
                                      <%--  <a onclick="quayLai()" style="float: left" class="btn btn-success"><i class="bi bi-arrow-left-circle"></i> Quay lại</a>--%>
                                    </div>
                                    <div class="right">
                                        <div onclick="remove_input_add_ship()" class="btn btn-danger" style="margin-right: 10px;">
                                            <i class="bi bi-eraser-fill"></i>
                                            <span id="text-remove-input"> Xoá ô nhập</span>
                                        </div>
                                        <button type="submit" class="btn btn-primary right" onclick="addTau()">
                                            <i class='bx bxs-save' style="font-size: 13px;"></i>
                                            <span id="text-save"> Lưu thông tin</span>
                                        </button>
                                    </div>
                                </div>
                            </form>

                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-THAYDOISOHIEU" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-add-THAYDOISOHIEU" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Thêm thông tin thay đổi số hiệu</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Tháng, năm   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="date" class="form-control" id="add-THAYDOISOHIEU-THANGNAM"  required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Số hiệu  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add-THAYDOISOHIEU-SOHIEU" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Cấp quy định  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add-THAYDOISOHIEU-CAPQUYDINH">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="add_THAYDOISOHIEU()" class="btn btn-info">Thêm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
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
            var themtau = true;
            var Ship_ID = "";
            if (getParameterByName("Ship_ID") != null) {
                Ship_ID = getParameterByName("Ship_ID");
                console.log(Ship_ID);
                themtau = false;
            }

            if (themtau) {
                $("#name").text("THÊM MỚI TÀU");
                $("#text-remove-input").text(" Xóa ô nhập");
                $("#text-save").text(" Lưu thông tin");
                $("#divSoHieu").css("display", "none");
                $("#xemThanVo").css("display", "none");
                var donvi_id = sessionStorage.getItem("donvi_id"); 
                var Group_user = sessionStorage.getItem("Group_Name");
                debugger
                if (Group_user.includes("Vùng")) {
                    $("#addTTC-VUNG").attr('disabled', '');
                    $("#addTTC-HAIDOAN").attr('disabled', '');
                    var selFlotilla = '<option selected="" disabled="" value="">Chưa chọn...</option>';
                    $.ajax({
                        type: "GET",
                        url: linkapi + "flotilla_by_squadron?id=" + donvi_id,
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
                else {
                    loadVung();
                }
            }
            else {
                $("#name").text("ĐẶC ĐIỂM CHUNG - TÀU ");
                $("#addTTC-SOHIEU").attr('disabled', '');
                $("#addTTC-VUNG").attr('disabled', '');
                $("#addTTC-HAIDOAN").attr('disabled', '');
                $("#addTTC-HAIDOI").attr('disabled', '');
                $("#text-remove-input").text(" Đặt lại dữ liệu");
                $("#text-save").text(" Cập nhật");
                loadDataShip(Ship_ID);
            }

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

        function changeQS() {
            $("#addBC-QS").val(Number($("#addBC-SQ").val()) + Number($("#addBC-VCQP").val()) + Number($("#addBC-QNCN").val()) + Number($("#addBC-HSQCS").val()));
        };

        function loadVung() {
            var idvung = "";
            $.ajax({
                type: "GET",
                url: linkapi + "naval_region",
                dataType: "json",
                success: function (data) {
                    var selRegion = '<option disabled="" value=null>Chưa chọn...</option>';
                    $.each(data, function (key, item) {
                        console.log(sessionStorage.getItem("vung") + " " + item.ShortName.substring(5, 6));
                        if (sessionStorage.getItem("vung") == item.ShortName.substring(5, 6)) {
                            selRegion += "<option value='" + item.ID + "' selected=''>" + item.ShortName + "</option>";
                            idvung = item.ID;
                        }
                        else {
                            selRegion += "<option value='" + item.ID + "'>" + item.ShortName + "</option>";
                        }
                    });
                    $('#addTTC-VUNG').html(selRegion);
                    if (idvung != "") {
                        onchangeVung(idvung);
                    }
                }, error: function (ret) {
                    console.log('errorGetnaval_region');
                },
            });
        }

        function onchangeVung(idRegion) {
            $.ajax({
                type: "GET",
                url: linkapi + "squadrons_by_region?id=" + idRegion,
                dataType: "json",
                success: function (data) {
                    var selSquadron = '<option selected="" disabled="" >Chưa chọn...</option><option value="0" >Trực thuộc BTL Vùng</option>';
                    $.each(data, function (key, item) {
                        selSquadron += "<option value=" + item.Id + ">" + item.Name + "</option>";
                    });
                    $('#addTTC-HAIDOAN').html(selSquadron);
                }, error: function (ret) {
                    console.log('errorGetsquadrons_by_region');
                },
            });
        }

        function onchangeHaiDoan(idSquadron) {
            if (idSquadron == '0') {
                var idRegion = $('#addTTC-VUNG').val();
                var selFlotilla = '<option selected="" disabled="" value="">Chưa chọn...</option>';
                $.ajax({
                    type: "GET",
                    url: linkapi + "flotilla_by_navalregion?id=" + idRegion,
                    dataType: "json",
                    success: function (data) {
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
            if (getParameterByName("Ship_ID") != null) {
                var newShip = {
                    ID: getParameterByName("Ship_ID"),
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
                        Created: "",
                        LastUpdated: ""
                    },
                    FlotID: $("#addTTC-HAIDOI").val()
                };
                console.log(newShip);
                var form = document.getElementById("addTau");
                if (form.checkValidity() == true) {
                    console.log(getParameterByName("Ship_ID"));
                    $.ajax({
                        type: "PUT",
                        url: linkapi + "v2/update_ship?id=" + getParameterByName("Ship_ID"),
                        dataType: "json",
                        data: JSON.stringify(newShip),
                        contentType: "application/json",
                        success: function (data) {
                            toastSuccess("Thành công", "Sửa thông tin tàu thành công!");
                            console.log("data: " + data);
                        }, error: function (ret) {
                            toastError("Thất bại", ret.responseJSON.Message);
                        },
                    });
                }
            }
            else {
                var date = new Date();
                var strDate = '' + date.getDate() + '/' + (Number(date.getMonth()) + 1) + '/' + date.getFullYear() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
                if (Number(date.getMonth()) + 1 < 10) {
                    var strDate_ntn = '' + date.getFullYear() + '-' + '0' + (Number(date.getMonth()) + 1) + '-' + date.getDate();
                }
                else {
                    var strDate_ntn = '' + date.getFullYear() + '-' + (Number(date.getMonth()) + 1) + '-' + date.getDate();
                }

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
                        Created: "",
                        LastUpdated: ""
                    },
                    FlotID: $("#addTTC-HAIDOI").val()
                };
                console.log(newShip);
                var form = document.getElementById("addTau");
                console.log(form.checkValidity());
                if (form.checkValidity() == true) {
                    $.ajax({
                        type: "POST",
                        url: linkapi + "v2/insert_ship",
                        dataType: "json",
                        data: JSON.stringify(newShip),
                        contentType: "application/json",
                        success: function (data) {
                            toastSuccess("Thành công", "Thêm tàu thành công!");
                            console.log("data: " + data);
                        }, error: function (ret) {
                            toastError("Thất bại", ret.responseJSON.Message);
                        },
                    });
                }
            }
        }

        function remove_input_add_ship() {
            if (getParameterByName("Ship_ID") != null) {
                loadDataShip(getParameterByName("Ship_ID"));
            }
            else {
                $("#addTTC-SOHIEU").val("");
                $("#addTTC-KYHIEU").val("");
                $("#addTTC-NOISANXUAT").val("");
                $("#addTTC-NAMHATHUY").val("");
                $("#addTTC-NAMTIEPNHAN").val("");
                $("#addTTC-CHUCNANG").val("");
                $("#addLGN-Dmax").val("");
                $("#addLGN-Dmin").val("");
                $("#addKT-Lmax").val("");
                $("#addKT-Ltk").val("");
                $("#addKT-Bmax").val("");
                $("#addKT-Htb").val("");
                $("#addKT-Hmax").val("");
                $("#addKT-Dmax").val("");
                $("#addMN-Tm").val("");
                $("#addMN-Ttb").val("");
                $("#addMN-Td").val("");
                $("#addMN-Tmax").val("");
                $("#addVT-Vmax").val("");
                $("#addVT-Vkt").val("");
                $("#addKNHD-H1").val("");
                $("#addKNHD-Tm").val("");
                $("#addKNHD-Wmax").val("");
                $("#addLDT-DCKH").val("");
                $("#addLDT-DCSL").val("");
                $("#addLDT-DNKH").val("");
                $("#addLDT-DNSL").val("");
                $("#addLDT-MN").val("");
                $("#addLDT-MNSL").val("");
                $("#addBC-QS").val("");
                $("#addBC-SQ").val("");
                $("#addBC-VCQP").val("");
                $("#addBC-QNCN").val("");
                $("#addBC-HSQCS").val("");
                $("#addTTC-SOHIEU").removeClass("need-validated");
                $("#addTTC-KYHIEU").removeClass("need-validated");
                $("#addTTC-NAMTIEPNHAN").removeClass("need-validated");
                $("#addTTC-CHUCNANG").removeClass("need-validated");
            }
        }

        function loadDataShip(id) {
            if (id != "") {
                $.ajax({
                    type: "GET",
                    url: linkapi + "dacdiemchung?id=" + id,
                    dataType: "json",
                    success: function (data) {
                        console.log(data.HAIDOI);
                        $("#name").text("ĐẶC ĐIỂM CHUNG - TÀU " + data.THONGTIN.TTCOBAN.SOHIEU);
                        $("#addTTC-ID").val(data.THONGTIN.ID);
                        $("#addMeta-Created").val(data.THONGTIN.Meta.Created);
                        $("#addTTC-SOHIEU").val(data.THONGTIN.TTCOBAN.SOHIEU);
                        $("#addTTC-KYHIEU").val(data.THONGTIN.TTCOBAN.KYHIEU);
                        $("#addTTC-NOISANXUAT").val(data.THONGTIN.TTCOBAN.NOISANXUAT);
                        $("#addTTC-NAMHATHUY").val(data.THONGTIN.TTCOBAN.NAMHATHUY);
                        $("#addTTC-NAMTIEPNHAN").val(data.THONGTIN.TTCOBAN.NAMTIEPNHAN);
                        $("#addTTC-CHUCNANG").val(data.THONGTIN.TTCOBAN.CHUCNANG);
                        $("#addTTC-HAIDOI").html("<option selected>" + data.HAIDOI.Name + '</option>');
                        $("#addTTC-HAIDOAN").html("<option selected>" + data.HAIDOI.Squadron.Name + '</option>');
                        $("#addTTC-VUNG").html("<option selected>" + data.HAIDOI.NavalRegion.ShortName + '</option>');
                        // thông tin thay đổi số hiệu
                        var tabletext = "<thead><tr><th>Tháng, năm</th><th>Số hiệu</th><th>Cấp quy định</th></thead><tbody>";
                        var i = 1;
                        $.each(data.TDSOHIEU, function (key, item) {
                            tabletext += "<tr><td>" + item.THANGNAM + "</td><td>" + item.SOHIEU + "</td><td>" + item.CAPQUYDINH + "</td></tr>";
                            i = i + 1;
                        });
                        if (i == 1) {
                            tabletext += "<tr><td>" + data.THONGTIN.TTCOBAN.NAMHATHUY + "</td><td>" + data.THONGTIN.TTCOBAN.SOHIEU + "</td><td>" + "" + "</td></tr>";
                        }
                        tabletext += "</tbody>";
                        $('#table-THAYDOISOHIEU').html(tabletext);
                        loadTableTHAYDOISOHIEU();
                        $("#addLGN-Dmax").val(data.THONGTIN.GIANNUOC.Dmax);
                        $("#addLGN-Dmin").val(data.THONGTIN.GIANNUOC.Dmin);
                        $("#addKT-Lmax").val(data.THONGTIN.KT.Lmax);
                        $("#addKT-Ltk").val(data.THONGTIN.KT.Ltk);
                        $("#addKT-Bmax").val(data.THONGTIN.KT.Bmax);
                        $("#addKT-Htb").val(data.THONGTIN.KT.Htb);
                        $("#addKT-Hmax").val(data.THONGTIN.KT.Hmax);
                        $("#addKT-Dmax").val(data.THONGTIN.KT.Dmax);
                        $("#addMN-Tm").val(data.THONGTIN.MN.Tm);
                        $("#addMN-Ttb").val(data.THONGTIN.MN.Ttb);
                        $("#addMN-Td").val(data.THONGTIN.MN.Td);
                        $("#addMN-Tmax").val(data.THONGTIN.MN.Tmax);
                        $("#addVT-Vmax").val(data.THONGTIN.VT.Vmax);
                        $("#addVT-Vkt").val(data.THONGTIN.VT.Vkt);
                        $("#addKNHD-H1").val(data.THONGTIN.KNHD.H1);
                        $("#addKNHD-Tm").val(data.THONGTIN.KNHD.Tm);
                        $("#addKNHD-Wmax").val(data.THONGTIN.KNHD.Wmax);
                        $("#addLDT-DCKH").val(data.THONGTIN.LDT.DCKH);
                        $("#addLDT-DCSL").val(data.THONGTIN.LDT.DCSL);
                        $("#addLDT-DNKH").val(data.THONGTIN.LDT.DNKH);
                        $("#addLDT-DNSL").val(data.THONGTIN.LDT.DNSL);
                        $("#addLDT-MN").val(data.THONGTIN.LDT.MN);
                        $("#addLDT-MNSL").val(data.THONGTIN.LDT.MNSL);
                        $("#addBC-QS").val(data.THONGTIN.BC.QS);
                        $("#addBC-SQ").val(data.THONGTIN.BC.SQ);
                        $("#addBC-VCQP").val(data.THONGTIN.BC.VCQP);
                        $("#addBC-QNCN").val(data.THONGTIN.BC.QNCN);
                        $("#addBC-HSQCS").val(data.THONGTIN.BC.HSQCS);
                        $("#addTTC-SOHIEU").removeClass("need-validated");
                        $("#addTTC-KYHIEU").removeClass("need-validated");
                        $("#addTTC-NAMTIEPNHAN").removeClass("need-validated");
                        $("#addTTC-CHUCNANG").removeClass("need-validated");
                    }, error: function (ret) {
                        console.log('errorGET');
                    },
                });
            }

        }

        function loadTableTHAYDOISOHIEU() {
            $('table[id=table-THAYDOISOHIEU]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    stateSave: true,
                    searching: false,
                    "columns": [
                        { name: 'Tháng, năm', width: 40 },
                        { name: 'Số hiệu', width: 160 },
                        { name: 'Cấp quy định', width: 160 },
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
                table1.buttons().container()
                    .appendTo('this_wrapper .col-md-6:eq(0)');
            });
        };

        function xemThanVo() {
            if (getParameterByName("Ship_ID") != null && getParameterByName("Ship_ID") != "") {
                window.location = baseaddress + "Page_Master/ThanVo?Ship_ID=" + getParameterByName("Ship_ID");
            }
        }
        function add_THAYDOISOHIEU() {
            var form = document.getElementById("form-add-THAYDOISOHIEU");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var date_ntn = $("#add-THAYDOISOHIEU-THANGNAM").val();
                var year = date_ntn.substring(0, 4);
                var month = date_ntn.substring(5, 7);
                var day = date_ntn.substring(8, 10);
                date_ntn = month + '/' + year;
                var THAYDOISOHIEU = {
                    THANGNAM: date_ntn,
                    SOHIEU: $("#add-THAYDOISOHIEU-SOHIEU").val(),
                    CAPQUYDINH: $("#add-THAYDOISOHIEU-CAPQUYDINH").val()
                };
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/change_serialnumber?id=" + getParameterByName("Ship_ID"),
                    dataType: "json",
                    data: JSON.stringify(THAYDOISOHIEU),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thay đổi số hiệu tàu thành công.");
                        loadDataShip(getParameterByName("Ship_ID"));
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $("#add-THAYDOISOHIEU-THANGNAM").val("");
                        $("#add-THAYDOISOHIEU-SOHIEU").val("");
                        $("#add-THAYDOISOHIEU-CAPQUYDINH").val("");
                        $('#model-add-THAYDOISOHIEU').modal("hide");
                    },
                });
            }
            return false;
        }
    </script>


</asp:Content>
