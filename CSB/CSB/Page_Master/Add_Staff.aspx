<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Add_Staff.aspx.cs" Inherits="CSB.Page_Master.Add_Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    </style>
    <div class="main-body">
        <div class="page-wrapper">
            <div class="row">
                <div class="col-sm-12" style="padding: 0px 5px;">
                    <div class="card">
                        <div class="card-header">
                            <h5>THÊM MỚI CÁN BỘ, NHÂN VIÊN TÀU</h5>
                            <div class="page-header-breadcrumb">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="Null.aspx" style="font-size: 14px;">Trang chủ</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#" onclick="QuanLiNhanVien()" style="font-size: 14px;">Quản lý nhân viên</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="Add_Staff.aspx" style="font-size: 14px;">Thêm mới nhân viên</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-block">
                            <form id="form_add_staff" onsubmit="return false">
                                <h4 class="sub-title">Thông tin cơ bản</h4>
                                <div class="row">
                                    <div class="col-lg-6 col-md-12">
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-md-3 col-form-label">Họ và tên <span style="color: red;">(*)</span>: </label>
                                            <div class="col-lg-8 col-md-9">
                                                <input type="text" id="add-staffFullName" class="form-control" placeholder="Ví dụ: Nguyễn Văn A" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12">
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-md-3 col-form-label">Năm sinh <span style="color: red;">(*)</span>: </label>
                                            <div class="col-lg-8 col-md-9">
                                                <input type="number" id="add-staffBirthYear" class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-12">
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-md-3 col-form-label">Quê quán <span style="color: red;">(*)</span>: </label>
                                            <div class="col-lg-8 col-md-9">
                                                <input type="text" id="add-staffResidence" class="form-control" placeholder="Ví dụ: Diễn Châu - Nghệ An - Nghệ An" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12">
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-md-3 col-form-label">Nhập ngũ <span style="color: red;">(*)</span>: </label>
                                            <div class="col-lg-8 col-md-9">
                                                <input type="text" id="add-staffEnlist" class="form-control" placeholder="Ví dụ: 9/2001" required>
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
                                                <select class="form-control" id="add-staffRanking" onchange="onchangeCapBac(this.value)">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Chức vụ <span style="color: red;">(*)</span>: </label>
                                            <div class="col-sm-8">
                                                <select class="form-control" id="add-staffPosition" onchange="onchangeChucVu(this.value)">
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
                                                <select class="form-control" id="add-staffMajoring" onchange="onchangeChuyenNganh(this.value)">
                                                    <option selected="" disabled="" value="">Chưa chọn...</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Trình độ <span style="color: red;">(*)</span>: </label>
                                            <div class="col-sm-8">
                                                <select class="form-control" id="add-staffDegree" onchange="onchangeTrinhDo(this.value)">
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
                                                <select class="form-control" id="add-staffInstitution" onchange="onchangeTruong(this.value)">
                                                    <option selected="" disabled="" value="">Chưa chọn...</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Năm tốt nghiệp : </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="add-staffGraduation" class="form-control" placeholder="Ví dụ: 2007" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">Chuyển đến</h4>
                                <div class="row">
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Từ đâu đến : </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="add-staffFrom" class="form-control" placeholder="Ví dụ: Thái Nguyên" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Ngày, tháng : </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="add-staffFromDate" class="form-control" placeholder="Ví dụ: 2007" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">Chuyển đi</h4>
                                <div class="row">
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Đi đâu : </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="add-staffLeave" class="form-control" placeholder="Ví dụ: Hà Nội" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Ngày, tháng : </label>
                                            <div class="col-sm-8">
                                                <input type="text" id="add-staffLeaveDate" class="form-control" placeholder="Ví dụ: 2007" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">Thông tin khác</h4>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-group row">
                                            <label class="col-lg-2 col-md-3 col-form-label">Ghi chú : </label>
                                            <div class="col-lg-10 col-md-9">
                                                <input type="text" id="add-staffNote" class="form-control" placeholder="Nhập ghi chú: " required>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-footer">
                                    <div class="left">
                                        <a href="javascript: history.go(-1)" style="float: left" class="btn btn-success"><i class="bi bi-arrow-left-circle"></i>&nbsp;Quay lại</a>
                                    </div>
                                    <div class="right">
                                        <div class="btn-group">
                                            <button type="button" onclick="remove_input_add_ship()" class="btn btn-danger"><i class="bi bi-x-circle"></i>&nbsp;Xoá ô nhập</button>
                                            <button type="submit" class="btn btn-primary right" onclick="addStaff()">
                                                <i class="bi bi-plus-circle"></i>
                                                <span id="text-save">Lưu thông tin</span>
                                            </button>
                                        </div>

                                    </div>

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
        var Ship_ID;
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
                list_Ranking('', 'add-staffRanking');
                list_Majoring('', 'add-staffMajoring');
                list_Institution('', 'add-staffInstitution');
                list_Position('', 'add-staffPosition');
                list_Degree('', 'add-staffDegree');
                $("#add-staffFullName").focusout(function () {
                    $("#add-staffFullName").addClass("need-validated");
                });
                $("#add-staffResidence").focusout(function () {
                    $("#add-staffResidence").addClass("need-validated");
                });
                $("#add-staffBirthYear").focusout(function () {
                    $("#add-staffBirthYear").addClass("need-validated");
                });
                $("#add-staffEnlist").focusout(function () {
                    $("#add-staffEnlist").addClass("need-validated");
                });
            }

        });
        function QuanLiNhanVien() {
            window.location = baseaddress + "Page_Master/Manage_Staff?Ship_ID=" + Ship_ID;
        }
        function list_Ranking(id_Rank, string_Rank) {
            debugger
            $.ajax({
                type: "GET",
                url: linkapi + "ranks",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $('#' + string_Rank).empty();
                    $.each(data, function (key, item) {

                        if (item.ID == id_Rank) {
                            $('#' + string_Rank).append($('<option>', {
                                selected: true,
                                value: item.ID,
                                text: item.Name
                            }));
                        }
                        else {
                            $('#' + string_Rank).append($('<option>', {
                                selected: false,
                                value: item.ID,
                                text: item.Name
                            }));
                        }

                    });
                    if (id_Rank == '') {
                        $('#' + string_Rank + 'select').val(data[0].ID);

                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });

        }
        function list_Majoring(id_Major, string_Major) {
            debugger
            $.ajax({
                type: "GET",
                url: linkapi + "majors",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $('#' + string_Major).empty();
                    $.each(data, function (key, item) {

                        if (item.ID == id_Major) {
                            $('#' + string_Major).append($('<option>', {
                                selected: true,
                                value: item.ID,
                                text: item.Name
                            }));
                        }
                        else {
                            $('#' + string_Major).append($('<option>', {
                                selected: false,
                                value: item.ID,
                                text: item.Name
                            }));
                        }

                    });
                    if (id_Major == '') {
                        $('#' + string_Major + 'select').val(data[0].ID);

                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });

        }

        function list_Institution(id_Institution, string_Institution) {
            debugger
            $.ajax({
                type: "GET",
                url: linkapi + "institutions",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $('#' + string_Institution).empty();
                    $.each(data, function (key, item) {

                        if (item.ID == id_Institution) {
                            $('#' + string_Institution).append($('<option>', {
                                selected: true,
                                value: item.ID,
                                text: item.Name
                            }));
                        }
                        else {
                            $('#' + string_Institution).append($('<option>', {
                                selected: false,
                                value: item.ID,
                                text: item.Name
                            }));
                        }

                    });
                    if (id_Institution == '') {
                        $('#' + string_Institution + 'select').val(data[0].ID);

                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });

        }

        function list_Position(id_Position, string_Position) {
            debugger
            $.ajax({
                type: "GET",
                url: linkapi + "positions",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $('#' + string_Position).empty();
                    $.each(data, function (key, item) {

                        if (item.ID == id_Position) {
                            $('#' + string_Position).append($('<option>', {
                                selected: true,
                                value: item.ID,
                                text: item.Name
                            }));
                        }
                        else {
                            $('#' + string_Position).append($('<option>', {
                                selected: false,
                                value: item.ID,
                                text: item.Name
                            }));
                        }

                    });
                    if (id_Position == '') {
                        $('#' + string_Position + 'select').val(data[0].ID);

                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });

        }

        function list_Degree(id_Degree, string_Degree) {
            debugger
            $.ajax({
                type: "GET",
                url: linkapi + "degrees",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $('#' + string_Degree).empty();
                    $.each(data, function (key, item) {

                        if (item.ID == id_Degree) {
                            $('#' + string_Degree).append($('<option>', {
                                selected: true,
                                value: item.ID,
                                text: item.Name
                            }));
                        }
                        else {
                            $('#' + string_Degree).append($('<option>', {
                                selected: false,
                                value: item.ID,
                                text: item.Name
                            }));
                        }

                    });
                    if (id_Degree == '') {
                        $('#' + string_Degree + 'select').val(data[0].ID);

                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });

        }

        function addStaff() {
            //if ($("#add-staffFullName").val() == "") {
            //    alert("Vui lòng nhập họ tên của cán bộ, nhân viên!");
            //}
            //else if ($("#add-staffBirthYear").val() == "") {
            //    alert("Vui lòng nhập ngày sinh của cán bộ, nhân viên!");
            //}
            //else if ($("#add-staffResidence").val() == "") {
            //    alert("Vui lòng nhập quê quán của cán bộ, nhân viên!");
            //}
            //else if ($("#add-staffEnlist").val() == "") {
            //    alert("Vui lòng nhập ngày nhập ngũ của cán bộ, nhân viên!");
            //}
            //else {
                var Staff = {
                    FullName: $("#add-staffFullName").val(),
                    BirthYear: $("#add-staffBirthYear").val(),
                    Residence: $("#add-staffResidence").val(),
                    Enlist: $("#add-staffEnlist").val(),
                    Majoring: {
                        ID: $("#add-staffMajoring").val()
                    },
                    Ranking: {
                        ID: $("#add-staffRanking").val()
                    },
                    Position: {
                        ID: $("#add-staffPosition").val()
                    },
                    Institution: {
                        ID: $("#add-staffInstitution").val()
                    },
                    Graduation: $("#add-staffGraduation").val(),
                    Degree: {
                        ID: $("#add-staffDegree").val()
                    },
                    From: $("#add-staffFrom").val(),
                    FromDate: $("#add-staffFromDate").val(),
                    Leave: $("#add-staffLeave").val(),
                    LeaveDate: $("#add-staffLeaveDate").val(),
                    Note: $("#add-staffNote").val(),
                    ShipID: Ship_ID,
                };
            console.log(Staff);
            var form = document.getElementById("form_add_staff");
            if (form.checkValidity() == true) {
                $.ajax({
                    type: "POST",
                    url: linkapi + "insert_personnel",
                    dataType: "json",
                    data: JSON.stringify(Staff),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        debugger
                        toastSuccess("Thành công", "Thêm cán bộ, nhân viên mới thành công.");
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.


                    },
                });
            }
               
            //}

        }
        function remove_input_add_ship() {
            $("#add-staffFullName").val("");
            $("#add-staffBirthYear").val("");
            $("#add-staffResidence").val("");
            $("#add-staffEnlist").val("");
            $("#add-staffGraduation").val("");
            $("#add-staffFrom").val("");
            $("#add-staffFromDate").val("");
            $("#add-staffLeave").val("");
            $("#add-staffLeaveDate").val("");
            $("#add-staffNote").val("");

            $("#add-staffFullName").removeClass("need-validated");
            $("#add-staffBirthYear").removeClass("need-validated");
            $("#add-staffResidence").removeClass("need-validated");
            $("#add-staffEnlist").removeClass("need-validated");
        }
    </script>
</asp:Content>
