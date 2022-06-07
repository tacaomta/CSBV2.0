<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="AddShip.aspx.cs" Inherits="CSB.Page_Master.AddShip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-body">
        <div class="page-wrapper">
            <div class="row">
                <div class="col-sm-12" style="padding: 0px 5px;">
                    <div class="card">
                        <div class="card-header">
                            <h5>THÊM MỚI TÀU</h5>
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
                            <form>
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
                                                <input type="number" id="addTTC-NAMHATHUY" min="0"  class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Vùng <span style="color: red;">(*)</span>: </label>
                                            <div class="col-sm-8">
                                                <select class="form-control" id="addTTC-VUNG" onchange="onchangeVung(this.value)">
                                                    <option selected="" disabled="" value="">Chưa chọn...</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Hải đoàn <span style="color: red;">(*)</span>: </label>
                                            <div class="col-sm-8">
                                                <select class="form-control" id="addTTC-HAIDOAN" onchange="onchangeHaiDoan(this.value)">
                                                    <option selected="" disabled="" value="">Chưa chọn...</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Hải đội <span style="color: red;">(*)</span>: </label>
                                            <div class="col-sm-8">
                                                <select class="form-control" id="addTTC-HAIDOI">
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
                                <%--<div class="form-group row" style="margin-bottom: 5px;">
                                    <label class="col-sm-2 col-form-label">Thay đổi số hiệu: </label>
                                    <div class="col-sm-10">
                                        <div class="btn-group btn-group-right" role="group" aria-label="Basic example">
                                            <button type="button" class="btn btn-primary"><i class="fas fa-bars"></i>Thêm</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-2"></div>
                                    <div class="col-sm-10">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" style="width:100%;">
                                                <thead>
                                                    <tr>
                                                        <th>Tháng, năm</th>
                                                        <th>Số hiệu</th>
                                                        <th>Cấp quy định</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Mark</td>
                                                        <td>Otto</td>
                                                        <td>@mdo</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Jacob</td>
                                                        <td>Thornton</td>
                                                        <td>@fat</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Larry</td>
                                                        <td>the Bird</td>
                                                        <td>@twitter</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>--%>
                                <h4 class="sub-title">Lượng giãn nước (tấn)</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Dmax: </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addLGN-Dmax" min="0"  class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Dmin: </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addLGN-Dmin"  min="0" class="form-control">
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
                                                <input type="number" id="addKT-Lmax" min="0"  class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Dài thiết kế (Ltk): </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addKT-Ltk" min="0"  class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Rộng nhất (Bmax): </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addKT-Bmax"  min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Cao mạn (Htb): </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addKT-Htb"  min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Chiều cao nhất của tàu: </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addKT-Hmax" min="0"  class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Chiều sâu nhất của tàu: </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addKT-Dmax" min="0"  class="form-control">
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
                                                <input type="number" id="addMN-Tm" min="0"  class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Giữa tàu (Ttb): </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addMN-Ttb" min="0"  class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Đuôi tàu (tđ): </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addMN-Td"  min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Lớn nhất (Tmax): </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addMN-Tmax" min="0"  class="form-control">
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
                                                <input type="number" id="addVT-Vmax" min="0"  class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Kinh tế (Vkt): </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addVT-Vkt" min="0"  class="form-control">
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
                                                <input type="number" id="addKNHD-H1" min="0"  class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Thời gian HĐ tối đa (ngày đêm): </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addKNHD-Tm" min="0"  class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Cấp chịu đựng sóng gió (max): </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addKNHD-Wmax" min="0"  class="form-control">
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
                                                <input type="number" id="addLDT-DCSL" min="0"  class="form-control">
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
                                                <input type="number" id="addLDT-DNSL"  min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Nước ngọt: </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addLDT-MN"  min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Số lượng (Tấn): </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addLDT-MNSL" min="0"  class="form-control">
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
                                                <input type="number" id="addBC-QS"  min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Sĩ quan: </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addBC-SQ"  min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">VCQP: </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addBC-VCQP"  min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">QNCN: </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addBC-QNCN" min="0"  class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">HSQ, CS: </label>
                                            <div class="col-sm-8">
                                                <input type="number" id="addBC-HSQCS"  min="0" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-footer">
                                    <button type="button" class="btn btn-primary right" onclick="addTau()">Lưu thông tin</button>
                                </div>
                            </form>

                        </div>

                    </div>
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
