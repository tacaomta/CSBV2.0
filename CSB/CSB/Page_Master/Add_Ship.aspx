<%@ Page Title="Thêm mới tàu" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Add_Ship.aspx.cs" Inherits="CSB.Page_Master.Add_Ship" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
        <form id="form_add_ship" runat="server" style="background-color: #f4f6f9;">
            <div class="section">
                <div class="section-header">
                    <h4 id="title" style="color: black; margin: 0">THÊM MỚI TÀU</h4>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="Null.aspx" style="color: #01b5f9; font-size: 18px;">Trang chủ</a></div>
                        /<div class="breadcrumb-item active"><a href="Manage_ship?vung=1" style="color: #01b5f9; font-size: 18px;">Quản lý tàu</a></div>
                        /<div class="breadcrumb-item active"><a href="Add_Ship" style="color: #01b5f9; font-size: 18px;">Thêm mới tàu</a></div>
                    </div>
                </div>

                <br />
                <div class="panel panel-info">
                                    <div class="panel-body" style="background-color: #ffffff">
                    <div class="row">
                        <div class="col-md-6" style="padding: 15px 50px;">
                            <div class="imageupload panel panel-success" style="height: 100%; display: flex; flex-direction: column; justify-content: space-between;">
                                <div class="panel-heading">
                                    <h3 id="add_panel-title" class="panel-title" style="padding: 5px 10px; margin: 0;">Chọn hình ảnh cho tàu</h3>
                                </div>
                                <div class="file-tab panel-body" style="padding: 0;">
                                    <img class="img-responsive" id="upload_imageproduct" src="../Image/Ships/boat.jpg" style="max-height: 300px; margin: 0 auto;" />
                                </div>
                                <div class="panel-footer text-justify" style="padding: 0;">
                                    <%--<input type="file" name="Anh" id="Anh" title="Cập nhật ảnh mới" class="btn btn-default" style="width: stretch" />--%>
                                    <asp:FileUpload ID="FileImgsave" onchange="PreviewImage()" runat="server" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="padding: 30px 50px 30px 0px;">
                            <div class="row">
                                <div class="form-group has-feedback col-md-12">
                                    <label class="col-md-4 control-label" style="text-align: right"><strong>Tên tàu <span style="color: red;">(*)</span>: </strong></label>
                                    <div class="col-md-8 input-group addTenTau">
                                        <span class="input-group-addon">ví dụ: 4008</span>
                                        <%--   <input type="text" class="form-control" placeholder="Tên tàu">--%>
                                        <asp:TextBox ID="addTenTau" class="form-control" placeholder="Tên tàu" required="required" name="add_TenTau" runat="server"></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group has-feedback col-md-12">
                                    <label class="col-md-4 control-label" style="text-align: right"><strong>Số hiệu <span style="color: red;">(*)</span>: </strong></label>
                                    <div class="col-md-8 input-group add_SoHieu">
                                        <span class="input-group-addon">ví dụ: 22-44-66</span>
                                        <input type="text" id="add_SoHieu" required class="form-control" placeholder="Số hiệu tàu">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group has-feedback col-md-12">
                                    <label class="col-md-4 control-label" style="text-align: right"><strong>Nơi cấp: </strong></label>
                                    <div class="col-md-8 input-group add_NoiCap">
                                        <span class="input-group-addon">ví dụ: Đà Nẵng</span>
                                        <input type="text" id="add_NoiCap" class="form-control" placeholder="Nơi cấp phép">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group has-feedback col-md-12">
                                    <label class="col-md-4 control-label" style="text-align: right"><strong>Ngày cấp: </strong></label>
                                    <div class='col-md-8 input-group' id='dateIssued'>
                                        <input type='date' id="add_NgayCap" class="form-control" placeholder="Ngày cấp phép" value="2010-07-12" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="col-md-4 control-label" style="text-align: right"><strong>Hải đội: </strong></label>
                                    <div class="col-md-8 input-group">
                                        <select id="add_HaiDoi" class="select-inform">
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
                                                <select id="add_ThuyenTruong" class="select-inform">
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
                                    <label class="col-md-4 control-label" style="text-align: right"><strong>Số thuyền viên: </strong></label>
                                    <div class="col-md-8 input-group">
                                        <input type="number" id="add_SoThuyenVien" class="form-control" title="Số thuyền viên phải là số nguyên dương" placeholder="Số thuyền viên">
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
                                <input type="number" class="form-control" id="add_NhienLieuToiDa" step="0.01" placeholder="Lượng nhiên liệu đối đa">
                                <span class="input-group-addon">tấn</span>
                            </div>
                            <br />
                            <label class="col-md-4 control-label" style="text-align: right">Lượng nước ngọt</label>
                            <div class="col-md-8 input-group">
                                <input type="number" class="form-control" id="add_NuocNgotToiDa" step="0.01" placeholder="Lượng nước ngọt tối đa">
                                <span class="input-group-addon">tấn</span>
                            </div>
                            <br />
                            <label class="col-md-4 control-label" style="text-align: right">Tốc độ</label>
                            <div class="col-md-8 input-group">
                                <input type="number" class="form-control" id="add_TocDo" step="0.01" placeholder="Tốc độ tối đa">
                                <span class="input-group-addon">hải lý/giờ</span>
                            </div>
                            <br />
                            <label class="col-md-4 control-label" style="text-align: right">Th/g hành trình tối đa</label>
                            <div class="col-md-8 input-group">
                                <input type="number" class="form-control" id="add_TG_HanhTrinhToiDa" step="0.01" placeholder="Thời gian hành trình tối đa">
                                <span class="input-group-addon">năm</span>
                            </div>
                            <br />
                            <label class="col-md-4 control-label" style="text-align: right">Ngày tạo</label>
                            <div class="col-md-8 input-group">
                                <input type="date" class="form-control" id="add_NgayTao" placeholder="Ngày tạo" readonly value="2010-07-12">
                            </div>
                            <br />
                            <label class="col-md-4 control-label" style="text-align: right">Ngày cập nhật</label>
                            <div class="col-md-8 input-group">
                                <input type="date" class="form-control" id="add_NgayCapNhat" placeholder="Ngày cập nhật cuối cùng" readonly value="2010-07-12">
                            </div>
                            <br />
                        </div>
                        <div class="col-md-6" style="padding: 15px 50px 0px 0px;">
                            <label class="col-md-4 control-label" style="text-align: right">Trọng tải</label>
                            <div class="col-md-8 input-group">
                                <input type="number" class="form-control" id="add_TrongTai" step="0.01" placeholder="Trọng tải">
                                <span class="input-group-addon">tấn</span>
                            </div>
                            <br />
                            <label class="col-md-4 control-label" style="text-align: right">Chiều dài</label>
                            <div class="col-md-8 input-group">
                                <input type="number" class="form-control" id="add_ChieuDai" step="0.01" placeholder="Chiều dài">
                                <span class="input-group-addon">mét</span>
                            </div>
                            <br />
                            <label class="col-md-4 control-label" style="text-align: right">Chiều rộng</label>
                            <div class="col-md-8 input-group">
                                <input type="number" class="form-control" id="add_ChieuRong" step="0.01" placeholder="Chiều rộng">
                                <span class="input-group-addon">mét</span>
                            </div>
                            <br />
                            <label class="col-md-4 control-label" style="text-align: right">Mớn nước</label>
                            <div class="col-md-8 input-group">
                                <input type="number" class="form-control" id="add_MonNuoc" step="0.01" placeholder="Mớn nước">
                                <span class="input-group-addon">mét</span>
                            </div>
                            <br />
                            <label class="col-md-4 control-label" style="text-align: right">Vật liệu</label>
                            <div class="col-md-8 input-group">
                                <input type="text" class="form-control" id="add_VatLieu" placeholder="Vật liệu">
                                <span class="input-group-addon">Ví dụ: Thép, gỗ...</span>
                            </div>
                            <br />
                            <label class="col-md-4 control-label" style="text-align: right">Năm hạ thuỷ</label>
                            <div class="col-md-8 input-group">
                                <input type="number" class="form-control" id="add_NamHaThuy" step="0.01" placeholder="Năm hạ thuỷ">
                                <span class="input-group-addon">Ví dụ: 2000</span>
                            </div>

                            <br />
                        </div>
                    </div>
                </div>

                <div class="panel-footer text-right">
                    <a href="../Page_Master/Manage_ship?vung=1" style="float: left" class="btn btn-success"><span class="glyphicon glyphicon-arrow-left"></span>&nbsp;Quay lại</a>
                    <div onclick="remove_input_add_ship()" class="btn btn-danger"><span class="glyphicon glyphicon-remove-sign"></span>&nbsp;Xoá ô nhập</div>
                    <asp:Button ID="btn_save" class="btn btn-info" runat="server" Text="Lưu thông tin" OnClick="btn_save_Click" />
                    <%--      <button class="btn btn-success"><span class="glyphicon glyphicon-floppy-saved"></span>Lưu thông tin</button>--%>
                </div>
                </div>

            </div>
        </form>


    </div>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.14.30/js/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#add_NgayCap').datepicker({
                format: 'lt'
            });
        });
    </script> --%>
    <script>
        var date = new Date();
        if (Number(date.getMonth()) + 1 < 10) {
            debugger
            var strDate_ntn = '' + date.getFullYear() + '-' + '0' + (Number(date.getMonth()) + 1) + '-' + date.getDate();
        }
        else {
            var strDate_ntn = '' + date.getFullYear() + '-' + (Number(date.getMonth()) + 1) + '-' + date.getDate();
        }

        var strDate = '' + date.getDate() + '/' + (Number(date.getMonth()) + 1) + '/' + date.getFullYear() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
        var selectedValue_Captain_ID;
        var selectedValue_Flotilla_ID;
        $(document).ready(function () {

            list_captain('', 'add_ThuyenTruong');
            list_flotilla('', 'add_HaiDoi');
            $("#MainContentAdmin_addTenTau").val("");
            $("#add_NgayCap").val(strDate_ntn);
            $("#add_NgayTao").val(strDate_ntn);
            $("#add_NgayCapNhat").val(strDate_ntn);
            check_input();


        });
        function remove_input_add_ship() {
            $("#MainContentAdmin_addTenTau").val("");
            $("#add_SoHieu").val("");
            $("#add_NoiCap").val("");
            $("#add_SoThuyenVien").val("");
            $("#add_NhienLieuToiDa").val("");
            $("#add_NuocNgotToiDa").val("");
            $("#add_TocDo").val("");
            $("#add_TG_HanhTrinhToiDa").val("");
            $("#add_TrongTai").val("");
            $("#add_ChieuDai").val("");
            $("#add_ChieuRong").val("");
            $("#add_MonNuoc").val("");
            $("#add_VatLieu").val("");
            $("#add_NamHaThuy").val("");
            $(".addTenTau span").remove(".glyphicon-ok");
            $(".addTenTau").append('<span class="glyphicon glyphicon-remove form-control-feedback text-danger"></span>');
            $(".add_SoHieu span").remove(".glyphicon-ok");
            $(".add_SoHieu").append('<span class="glyphicon glyphicon-remove form-control-feedback text-danger"></span>');
        }
        function check_input() {
            $("#MainContentAdmin_addTenTau").change(function () {
                if ($("#MainContentAdmin_addTenTau").val() == '') {
                    $(".addTenTau span").remove(".glyphicon-ok");
                    $(".addTenTau").append('<span class="glyphicon glyphicon-remove form-control-feedback text-danger"></span>');
                }
                else {
                    $(".addTenTau span").remove(".glyphicon-remove");
                    $(".addTenTau").append('<span class="glyphicon glyphicon-ok form-control-feedback text-success"></span>');
                }


            })
            $("#add_SoHieu").change(function () {
                if ($("#add_SoHieu").val() == '') {
                    $(".add_SoHieu span").remove(".glyphicon-ok");
                    $(".add_SoHieu").append('<span class="glyphicon glyphicon-remove form-control-feedback text-danger"></span>');
                }
                else {
                    $(".add_SoHieu span").remove(".glyphicon-remove");
                    $(".add_SoHieu").append('<span class="glyphicon glyphicon-ok form-control-feedback text-success"></span>');
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
            $("#add_SoThuyenVien").change(function () {
                debugger
                if (Number($("#add_SoThuyenVien").val()) < 0) {
                    alert("Nhập số thuyền viên > 0");
                    $("#add_SoThuyenVien").val("");
                }
            })
            $("#add_NhienLieuToiDa").change(function () {
                debugger
                if (Number($("#add_NhienLieuToiDa").val()) < 0) {
                    alert("Nhập lượng nhiên liệu tối đa > 0");
                    $("#add_NhienLieuToiDa").val("");
                }

            })
            $("#add_NuocNgotToiDa").change(function () {
                debugger
                if (Number($("#add_NuocNgotToiDa").val()) < 0) {
                    alert("Nhập lượng nước ngọt tối đa > 0");
                    $("#add_NuocNgotToiDa").val("");
                }

            })
            $("#add_TocDo").change(function () {
                debugger
                if (Number($("#add_TocDo").val()) < 0) {
                    alert("Nhập tốc độ tối đa > 0");
                    $("#add_TocDo").val("");
                }

            })
            $("#add_TG_HanhTrinhToiDa").change(function () {
                debugger
                if (Number($("#add_TG_HanhTrinhToiDa").val()) < 0) {
                    alert("Nhập thời gian hành trình tối đa > 0");
                    $("#add_TG_HanhTrinhToiDa").val("");
                }

            })
            $("#add_TrongTai").change(function () {
                debugger
                if (Number($("#add_TrongTai").val()) < 0) {
                    alert("Nhập trọng tải > 0");
                    $("#add_TrongTai").val("");
                }

            })
            $("#add_ChieuDai").change(function () {
                debugger
                if (Number($("#add_ChieuDai").val()) < 0) {
                    alert("Nhập chiều dài > 0");
                    $("#add_ChieuDai").val("");
                }

            })
            $("#add_ChieuRong").change(function () {
                debugger
                if (Number($("#add_ChieuRong").val()) < 0) {
                    alert("Nhập chiều rộng > 0");
                    $("#add_ChieuRong").val("");
                }

            })
            $("#add_MonNuoc").change(function () {
                debugger
                if (Number($("#add_MonNuoc").val()) < 0) {
                    alert("Nhập mớn nước > 0");
                    $("#add_MonNuoc").val("");
                }

            })
            $("#add_NamHaThuy").change(function () {
                debugger
                if (Number($("#add_NamHaThuy").val()) < 0) {
                    alert("Nhập năm hạ thủy > 0");
                    $("#add_NamHaThuy").val("");
                }

            })
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
        $("#form_add_ship").submit(function () {
            debugger;
            var id_Flotilla = $('#add_HaiDoi').val();
            var id_Captain = $('#add_ThuyenTruong').val();
            var kt_image = $("#MainContentAdmin_FileImgsave").val();
            var image_link;
            if (kt_image == "") {
                image_link = "default.jpg";
            }
            else {
                image_link = $('#MainContentAdmin_addTenTau').val() + ".jpg";
            }
            if ($('#MainContentAdmin_addTenTau').val() == '') {
                alert("Không bỏ trống tên tàu!");
            }
            else if ($('#add_SoHieu').val() == '') {
                alert("Không bỏ trống số hiệu tàu!");
            }
            else {
                var New_Ship = {
                    Image: image_link,
                    Name: $('#MainContentAdmin_addTenTau').val(),
                    RegistrationNumber: $('#add_SoHieu').val(),
                    Weight: $('#add_TrongTai').val(),
                    Fuel: $('#add_NhienLieuToiDa').val(),
                    Water: $('#add_NuocNgotToiDa').val(),
                    Personel: $('#add_SoThuyenVien').val(),
                    Captain: {
                        ID: id_Captain
                    },
                    Speed: $("#add_TocDo").val(),
                    Time: $("#add_TG_HanhTrinhToiDa").val(),
                    LaunchYear: $("#add_NamHaThuy").val(),
                    RegistrationDate: $("#add_NgayCap").val(),
                    RegistrationPlace: $("#add_NoiCap").val(),
                    Width: $("#add_ChieuDai").val(),
                    Wide: $("#add_ChieuRong").val(),
                    Draught: $("#add_MonNuoc").val(),
                    Material: $("#add_VatLieu").val(),
                    Created: $("#add_NgayTao").val(),
                    Updated: strDate,
                    Flotilla: {
                        Id: id_Flotilla
                    }
                };
                $.ajax({
                    type: "POST",
                    url: linkapi + "ship_insert",
                    dataType: "json",
                    data: JSON.stringify(New_Ship),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {

                        //toastSuccess("Thành công", "Thêm tàu thành công!");
                        alert("Thêm tàu thành công!");

                    }, error: function (ret) {
                        alert("Có thể số hiệu tàu này đã tồn tại!");
                        //toastError("Thất bại! Có thể số hiệu tàu này đã tồn tại", ret.responseJSON.Message);

                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                    },
                });
            }

        });
        function PreviewImage() {
            var oFReader = new FileReader();
            if (document.getElementById("MainContentAdmin_FileImgsave").files[0] == null) alert("1");
            oFReader.readAsDataURL(document.getElementById("MainContentAdmin_FileImgsave").files[0]);

            oFReader.onload = function (oFREvent) {
                document.getElementById("upload_imageproduct").src = oFREvent.target.result;
            };
        };
        function Xoa() {
            $('#MainContentAdmin_FileImgsave').attr('disabled', '');
            document.getElementById("upload_imageproduct").src = ""
        }
    </script>
</asp:Content>
