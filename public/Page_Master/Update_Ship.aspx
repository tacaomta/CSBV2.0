<%@ Page Title="Sửa thông tin tàu" Language="C#" MasterPageFile="~/Master/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Update_Ship.aspx.cs" Inherits="CSB.Page_Master.Update_Ship" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentAdmin" runat="server">
    <style type="text/css">
        .row {
            margin-bottom: 20px;
        }

        .select-inform {
            padding: 10px 10px;
            font-size: 13px;
            line-height: 42px;
            background-color: rgba(179,164,164,0.1);
            border-color: rgba(252,252,252,0.1);
            width: 100%;
            color: #555;
        }
    </style>
    <div class="" style="margin: 0 auto">
        <form id="form_update_ship" runat="server" style="background-color: #f4f6f9;">
            <div class="section">
                <div class="section-header">
                    <h4 id="title" style="color: black; margin: 0">SỬA THONG TIN TẦU</h4>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="Null.aspx" style="color: #01b5f9; font-size: 18px;">Trang chủ</a></div>
                        /<div class="breadcrumb-item active"><a href="Manage_ship?vung=1" style="color: #01b5f9; font-size: 18px;">Quản lý tàu</a></div>
                        /<div class="breadcrumb-item active"><a href="#" style="color: #01b5f9; font-size: 18px;">Sửa thông tin tầu</a></div>
                    </div>
                </div>

                <br />
                <div class="panel panel-info">
                    <div class="panel-body" style="background-color: #ffffff">
                        <input type="hidden" class="form-control" id="Ship_ID">
                        <div class="row">
                            <div class="col-md-6" style="padding: 15px 50px;">
                                <div class="imageupload panel panel-success" style="height: 100%; display: flex; flex-direction: column; justify-content: space-between;">
                                    <div class="panel-heading">
                                        <h3 id="panel-title" class="panel-title" style="padding: 5px 10px; margin: 0;">Chọn hình ảnh cho tàu</h3>
                                    </div>
                                    <div class="file-tab panel-body" style="padding: 0;">
                                        <img class="img-responsive" id="upload_imageproduct" src="../Image/Ships/boat.jpg" style="max-height: 300px; margin: 0 auto;" />
                                    </div>
                                    <div class="panel-footer text-justify" style="padding: 0;">
                                        <%--<input type="file" name="Anh" id="Anh" title="Cập nhật ảnh mới" class="btn btn-default" style="width: stretch" />--%>
                                        <asp:FileUpload ID="FileImgsave_update" onchange="PreviewImage()" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6" style="padding: 30px 50px 30px 0px;">
                                <div class="row">
                                    <div class="form-group has-feedback col-md-12">
                                        <label class="col-md-4 control-label" style="text-align: right"><strong>Tên tàu <span style="color: red;">(*)</span>: </strong></label>
                                        <div class="col-md-8 input-group updateTenTau">
                                            <span class="input-group-addon">ví dụ: 4008</span>
                                            <%--   <input type="text" class="form-control" placeholder="Tên tàu">--%>
                                            <asp:TextBox ID="update_TenTau" class="form-control" required="required" name="update_TenTau" runat="server"></asp:TextBox>

                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group has-feedback col-md-12">
                                        <label class="col-md-4 control-label" style="text-align: right"><strong>Số hiệu <span style="color: red;">(*)</span>: </strong></label>
                                        <div class="col-md-8 input-group">
                                            <span class="input-group-addon">ví dụ: 22-44-66</span>
                                            <input type="text" id="update_SoHieu" class="form-control" readonly placeholder="Số hiệu tàu">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group has-feedback col-md-12">
                                        <label class="col-md-4 control-label" style="text-align: right"><strong>Nơi cấp: </strong></label>
                                        <div class="col-md-8 input-group">
                                            <span class="input-group-addon">ví dụ: Đà Nẵng</span>
                                            <input type="text" id="update_NoiCap" class="form-control" placeholder="Nơi cấp phép">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group has-feedback col-md-12">
                                        <label class="col-md-4 control-label" style="text-align: right"><strong>Ngày cấp: </strong></label>
                                        <div class='col-md-8 input-group' id='dateIssued'>
                                            <input type='date' id="update_NgayCap" class="form-control" placeholder="Ngày cấp phép" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label class="col-md-4 control-label" style="text-align: right">Hải đội</label>
                                        <div class="col-md-8 input-group">
                                            <select id="update_HaiDoi" class="select-inform">
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label class="col-md-4 control-label" style="text-align: right"><strong>Thuyền trưởng: </strong></label>
                                        <div class="col-md-8 input-group">
                                            <div class="row">
                                                <div class="col-md-9">
                                                    <select id="update_ThuyenTruong" class="select-inform">
                                                    </select>
                                                </div>
                                                <div class="col-md-3">
                                                    <span class="btn btn-info btn-sm glyphicon glyphicon-eye-open pull-left" title="Xem thông tin"></span>
                                                    <span class="btn btn-primary btn-sm glyphicon glyphicon-plus pull-right" title="Thêm thuyền trưởng"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group has-feedback col-md-12">
                                        <label class="col-md-4 control-label" style="text-align: right">Số thuyền viên: </label>
                                        <div class="col-md-8 input-group">
                                            <input type="number" id="update_SoThuyenVien" class="form-control" placeholder="Số thuyền viên">
                                            <span class="input-group-addon">người</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6" style="padding: 15px 50px;">
                                <label class="col-md-4 control-label" style="text-align: right">Lượng nhiên liệu</label>
                                <div class="col-md-8 input-group">
                                    <input type="number" class="form-control" step="0.01" id="update_NhienLieuToiDa" placeholder="Lượng nhiên liệu đối đa">
                                    <span class="input-group-addon">tấn
                                    </span>
                                </div>
                                <br />
                                <label class="col-md-4 control-label" style="text-align: right">Lượng nước ngọt</label>
                                <div class="col-md-8 input-group">
                                    <input type="number" class="form-control" id="update_NuocNgotToiDa" step="0.01" placeholder="Lượng nước ngọt tối đa">
                                    <span class="input-group-addon">tấn
                                    </span>
                                </div>
                                <br />
                                <label class="col-md-4 control-label" style="text-align: right">Tốc độ</label>
                                <div class="col-md-8 input-group">
                                    <input type="number" class="form-control" id="update_TocDo" step="0.01" placeholder="Tốc độ tối đa">
                                    <span class="input-group-addon">hải lý/giờ</span>
                                </div>
                                <br />
                                <label class="col-md-4 control-label" style="text-align: right">Th/g hành trình tối đa</label>
                                <div class="col-md-8 input-group">
                                    <input type="number" class="form-control" id="update_TG_HanhTrinhToiDa" step="0.01" placeholder="Thời gian hành trình tối đa">
                                    <span class="input-group-addon">năm</span>
                                </div>
                                <br />
                                <label class="col-md-4 control-label" style="text-align: right">Ngày tạo</label>
                                <div class="col-md-8 input-group">
                                    <input type="text" class="form-control" id="update_NgayTao" placeholder="Ngày tạo" readonly>
                                </div>
                                <br />
                                <label class="col-md-4 control-label" style="text-align: right">Ngày cập nhật</label>
                                <div class="col-md-8 input-group">
                                    <input type="text" class="form-control" id="update_NgayCapNhat" placeholder="Ngày cập nhật cuối cùng" readonly>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-6" style="padding: 15px 50px 0px 0px;">
                                <label class="col-md-4 control-label" style="text-align: right">Trọng tải</label>
                                <div class="col-md-8 input-group">
                                    <input type="number" class="form-control" id="update_TrongTai" step="0.01" placeholder="Trọng tải">
                                    <span class="input-group-addon">tấn</span>
                                </div>
                                <br />
                                <label class="col-md-4 control-label" style="text-align: right">Chiều dài</label>
                                <div class="col-md-8 input-group">
                                    <input type="number" class="form-control" id="update_ChieuDai" step="0.01" placeholder="Chiều dài">
                                    <span class="input-group-addon">mét</span>
                                </div>
                                <br />
                                <label class="col-md-4 control-label" style="text-align: right">Chiều rộng</label>
                                <div class="col-md-8 input-group">
                                    <input type="number" class="form-control" id="update_ChieuRong" step="0.01" placeholder="Chiều rộng">
                                    <span class="input-group-addon">mét</span>
                                </div>
                                <br />
                                <label class="col-md-4 control-label" style="text-align: right">Mớn nước</label>
                                <div class="col-md-8 input-group">
                                    <input type="number" class="form-control" id="update_MonNuoc" step="0.01" placeholder="Mớn nước">
                                    <span class="input-group-addon">mét</span>
                                </div>
                                <br />
                                <label class="col-md-4 control-label" style="text-align: right">Vật liệu</label>
                                <div class="col-md-8 input-group">
                                    <input type="text" class="form-control" id="update_VatLieu" placeholder="Vật liệu">
                                    <span class="input-group-addon">Ví dụ: Thép, gỗ...</span>
                                </div>
                                <br />
                                <label class="col-md-4 control-label" style="text-align: right">Năm hạ thuỷ</label>
                                <div class="col-md-8 input-group">
                                    <input type="number" class="form-control" id="update_NamHaThuy" step="0.01" placeholder="Năm hạ thuỷ">
                                    <span class="input-group-addon">Ví dụ: 2000</span>
                                </div>
                                <br />
                            </div>
                        </div>
                    </div>

                    <div class="panel-footer text-right">
                        <a href="../Page_Master/Manage_ship?vung=1" style="float: left" class="btn btn-success"><span class="glyphicon glyphicon-arrow-left"></span>&nbsp;Quay lại</a>
                        <div onclick="remove_input_update_ship()" class="btn btn-danger"><span class="glyphicon glyphicon-remove-sign"></span>&nbsp;Xoá ô nhập</div>
                        <div onclick="refresh_input_update_ship()" class="btn btn-warning"><span class="glyphicon glyphicon-repeat"></span>&nbsp;Khôi phục</div>
                        <asp:Button ID="btn_save" class="btn btn-info" runat="server" Text="Lưu thông tin" OnClick="btn_update_Click" />

                        <%--      <button class="btn btn-success"><span class="glyphicon glyphicon-floppy-saved"></span>Lưu thông tin</button>--%>
                    </div>
                </div>

            </div>
        </form>


    </div>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <%--   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.14.30/js/bootstrap-datetimepicker.min.js"></script>--%>
    <%--  <script type="text/javascript">
        $(function () {
            $('#add_NgayCap').datepicker({
                format: 'LT'
            });
        });
    </script>--%>
    <script>
        var date = new Date();
        var strDate = '' + date.getDate() + '/' + (Number(date.getMonth()) + 1) + '/' + date.getFullYear() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
        var selectedValue_Captain_ID;
        var selectedValue_Flotilla_ID;
        var Ship_ID = getParameterByName('Ship_ID');
        $(document).ready(function () {
            ViewInforShip(Ship_ID);
            check_input();
            //list_captain('', 'add_ThuyenTruong');
            //list_flotilla('', 'add_HaiDoi');
        });
        function check_input() {
            $("#MainContentAdmin_update_TenTau").change(function () {
                if ($("#MainContentAdmin_update_TenTau").val() == '') {
                    $(".updateTenTau span").remove(".glyphicon-ok");
                    $(".updateTenTau").append('<span class="glyphicon glyphicon-remove form-control-feedback text-danger"></span>');
                }
                else {
                    $(".updateTenTau span").remove(".glyphicon-remove");
                    $(".updateTenTau").append('<span class="glyphicon glyphicon-ok form-control-feedback text-success"></span>');
                }


            })

            //$("#add_NoiCap").change(function () {
            //    if ($("#add_NoiCap").val() == '') {
            //        $(".add_NoiCap span").remove(".glyphicon-ok");
            //        $(".add_NoiCap").append('<span class="glyphicon glyphicon-remove form-control-feedback text-danger"></span>');
            //    }
            //    else {
            //        $(".add_NoiCap span").remove(".glyphicon-remove");
            //        $(".add_NoiCap").append('<span class="glyphicon glyphicon-ok form-control-feedback text-success"></span>');
            //    }
            //})
            $("#update_SoThuyenVien").change(function () {
                debugger
                if (Number($("#update_SoThuyenVien").val()) < 0) {
                    alert("Nhập số thuyền viên > 0");
                    $("#update_SoThuyenVien").val("");
                }


            })
            $("#update_NhienLieuToiDa").change(function () {
                debugger
                if (Number($("#update_NhienLieuToiDa").val()) < 0) {
                    alert("Nhập lượng nhiên liệu tối đa > 0");
                    $("#update_NhienLieuToiDa").val("");
                }

            })
            $("#update_NuocNgotToiDa").change(function () {
                debugger
                if (Number($("#update_NuocNgotToiDa").val()) < 0) {
                    alert("Nhập lượng nước ngọt tối đa > 0");
                    $("#update_NuocNgotToiDa").val("");
                }

            })
            $("#update_TocDo").change(function () {
                debugger
                if (Number($("#update_TocDo").val()) < 0) {
                    alert("Nhập tốc độ tối đa > 0");
                    $("#update_TocDo").val("");
                }

            })
            $("#update_TG_HanhTrinhToiDa").change(function () {
                debugger
                if (Number($("#update_TG_HanhTrinhToiDa").val()) < 0) {
                    alert("Nhập thời gian hành trình tối đa > 0");
                    $("#update_TG_HanhTrinhToiDa").val("");
                }

            })
            $("#update_TrongTai").change(function () {
                debugger
                if (Number($("#update_TrongTai").val()) < 0) {
                    alert("Nhập trọng tải > 0");
                    $("#update_TrongTai").val("");
                }

            })
            $("#update_ChieuDai").change(function () {
                debugger
                if (Number($("#update_ChieuDai").val()) < 0) {
                    alert("Nhập chiều dài > 0");
                    $("#update_ChieuDai").val("");
                }

            })
            $("#update_ChieuRong").change(function () {
                debugger
                if (Number($("#update_ChieuRong").val()) < 0) {
                    alert("Nhập chiều rộng > 0");
                    $("#update_ChieuRong").val("");
                }

            })
            $("#update_MonNuoc").change(function () {
                debugger
                if (Number($("#update_MonNuoc").val()) < 0) {
                    alert("Nhập mớn nước > 0");
                    $("#update_MonNuoc").val("");
                }

            })
            $("#update_NamHaThuy").change(function () {
                debugger
                if (Number($("#update_NamHaThuy").val()) < 0) {
                    alert("Nhập năm hạ thủy > 0");
                    $("#update_NamHaThuy").val("");
                }

            })
        }

        function remove_input_update_ship() {
            $("#MainContentAdmin_update_TenTau").val("");
            $("#update_NoiCap").val("");
            $("#update_SoThuyenVien").val("");
            $("#update_NhienLieuToiDa").val("");
            $("#update_NuocNgotToiDa").val("");
            $("#update_TocDo").val("");
            $("#update_TG_HanhTrinhToiDa").val("");
            $("#update_TrongTai").val("");
            $("#update_ChieuDai").val("");
            $("#update_ChieuRong").val("");
            $("#update_MonNuoc").val("");
            $("#update_VatLieu").val("");
            $("#update_NamHaThuy").val("");
            $(".updateTenTau span").remove(".glyphicon-ok");
            $(".updateTenTau").append('<span class="glyphicon glyphicon-remove form-control-feedback text-danger"></span>');

        }
        function refresh_input_update_ship() {
            location.reload(true);
        }
        function list_flotilla(id_flotilla, string_HaiDoi) {
            $.ajax({
                type: "GET",
                url: linkapi + "flotillas",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $.each(data, function (key, item) {

                        if (item.Id == id_flotilla) {
                            $('#' + string_HaiDoi).append($('<option>', {
                                selected: true,
                                value: item.Id,
                                text: item.Name
                            }));
                        }
                        else {
                            $('#' + string_HaiDoi).append($('<option>', {
                                selected: false,
                                value: item.Id,
                                text: item.Name
                            }));
                        }

                    });
                    //debugger
                    if (id_flotilla == '') {
                        $('#' + string_HaiDoi + 'select').val(data[0].Id);
                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                },
            });

        }
        function list_captain(id_captain, string_thuyentruong) {
            $.ajax({
                type: "GET",
                url: linkapi + "captains",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $('#' + string_thuyentruong).empty();
                    $.each(data, function (key, item) {

                        if (item.ID == id_captain) {
                            $('#' + string_thuyentruong).append($('<option>', {
                                selected: true,
                                value: item.ID,
                                text: item.Fullname
                            }));
                        }
                        else {
                            $('#' + string_thuyentruong).append($('<option>', {
                                selected: false,
                                value: item.ID,
                                text: item.Fullname
                            }));
                        }

                    });
                    if (id_captain == '') {
                        $('#' + string_thuyentruong + 'select').val(data[0].ID);
                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                },
            });

        }

        function ViewInforShip(ID) {
            //debugger;
            $.ajax({
                type: "GET",
                url: linkapi + "ship_detail?id=" + ID,
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    if (data.Image == "default.jpg") {
                        $("#panel-title").html("Hình ảnh tàu kiểm ngư " + data.Name + "( chưa có ảnh)");
                    }
                    else {
                        $("#panel-title").html("Hình ảnh tàu kiểm ngư " + data.Name);
                    }

                    $('#Ship_ID').val(data.ID);
                    $("#upload_imageproduct").attr("src", "../Image/Ships/" + data.Image);
                    $("#MainContentAdmin_update_TenTau").val(data.Name);
                    $("#update_SoHieu").val(data.RegistrationNumber);
                    $("#update_NoiCap").val(data.RegistrationPlace);
                    $("#update_NgayCap").val(data.RegistrationDate);
                    $("#update_NamHaThuy").val(data.LaunchYear);
                    $("#update_TrongTai").val(data.Weight);
                    $("#update_NhienLieuToiDa").val(data.Fuel);
                    $("#update_NuocNgotToiDa").val(data.Water);
                    $("#update_SoThuyenVien").val(data.Personel);
                    list_captain(data.Captain.ID, 'update_ThuyenTruong');
                    $("#update_TocDo").val(data.Speed);
                    $("#update_TG_HanhTrinhToiDa").val(data.Time);
                    $("#update_NgayTao").val(data.Created);
                    $("#update_NgayCapNhat").val(data.Updated);
                    $("#update_ChieuDai").val(data.Width);
                    $("#update_ChieuRong").val(data.Wide);
                    $("#update_VatLieu").val(data.Material);
                    list_flotilla(data.Flotilla.Id, 'update_HaiDoi');
                    $("#update_MonNuoc").val(data.Draught);
                    debugger
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                },
            });

        }
        $("#form_update_ship").submit(function () {
            var id_Flotilla = $('#update_HaiDoi').val();
            var id_Captain = $('#update_ThuyenTruong').val();
            var New_Ship = {
                ID: $('#Ship_ID').val(),
                Image: $('#MainContentAdmin_update_TenTau').val() + ".jpg",
                Name: $('#MainContentAdmin_update_TenTau').val(),
                RegistrationNumber: $('#update_SoHieu').val(),
                Weight: $('#update_TrongTai').val(),
                Fuel: $('#update_NhienLieuToiDa').val(),
                Water: $('#update_NuocNgotToiDa').val(),
                Personel: $('#update_SoThuyenVien').val(),
                Captain: {
                    ID: id_Captain
                },
                Speed: $("#update_TocDo").val(),
                Time: $("#update_TG_HanhTrinhToiDa").val(),
                LaunchYear: $("#update_NamHaThuy").val(),
                RegistrationDate: $("#update_NgayCap").val(),
                RegistrationPlace: $("#update_NoiCap").val(),
                Width: $("#update_ChieuDai").val(),
                Wide: $("#update_ChieuRong").val(),
                Draught: $("#update_MonNuoc").val(),
                Material: $("#update_VatLieu").val(),
                Created: $("#update_NgayTao").val(),
                Updated: strDate,
                Flotilla: {
                    Id: id_Flotilla
                }
            };
            console.log(New_Ship);
            $.ajax({
                type: "PUT",
                url: linkapi + "ship_update",
                dataType: "json",
                data: JSON.stringify(New_Ship),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    console.log("okPUT");
                    alert("Cập nhập thông tin tầu thành công!")
                    //toastSuccess("Thành công", "Cập tàu thành công.");
                    loadDataListShips(vung_id);
                }, error: function (ret) {
                    alert("Cập nhập thông tin tầu thất bại!")
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                   
                },
            });
        });
        function Update_Ship() {
            var id_Flotilla = $('#HaiDoi').val();
            var id_Captain = $('#ThuyenTruong').val();
            var New_Ship = {
                ID: $('#Ship_ID').val(),
                Image: $('#MainContentAdmin_update_TenTau').val() + ".jpg",
                Name: $('#MainContentAdmin_update_TenTau').val(),
                RegistrationNumber: $('#update_SoHieu').val(),
                Weight: $('#update_TrongTai').val(),
                Fuel: $('#update_NhienLieuToiDa').val(),
                Water: $('#update_NuocNgotToiDa').val(),
                Personel: $('#update_SoThuyenVien').val(),
                Captain: {
                    ID: id_Captain
                },
                Speed: $("#update_TocDo").val(),
                Time: $("#update_TG_HanhTrinhToiDa").val(),
                LaunchYear: $("#update_NamHaThuy").val(),
                RegistrationDate: $("#update_NgayCap").val(),
                RegistrationPlace: $("#update_NoiCap").val(),
                Width: $("#update_ChieuDai").val(),
                Wide: $("#update_ChieuRong").val(),
                Draught: $("#update_MonNuoc").val(),
                Material: $("#update_VatLieu").val(),
                Created: $("#update_NgayTao").val(),
                Updated: strDate,
                Flotilla: {
                    Id: id_Flotilla
                }
            };
            console.log(New_Ship);
            $.ajax({
                type: "PUT",
                url: linkapi + "ship_update",
                dataType: "json",
                data: JSON.stringify(New_Ship),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    toastSuccess("Thành công", "Cập tàu thành công.");
                    loadDataListShips(vung_id);
                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                    $('#model-infordetail-ship').modal("hide");
                },
            });
        }
        function PreviewImage() {
            var oFReader = new FileReader();
            if (document.getElementById("MainContentAdmin_FileImgsave_update").files[0] == null) alert("1");
            oFReader.readAsDataURL(document.getElementById("MainContentAdmin_FileImgsave_update").files[0]);

            oFReader.onload = function (oFREvent) {
                document.getElementById("upload_imageproduct").src = oFREvent.target.result;
            };
        };
        function Xoa() {
            $('#MainContentAdmin_FileImgsave_update').attr('disabled', '');
            document.getElementById("upload_imageproduct").src = ""
        }
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }
    </script>

</asp:Content>
