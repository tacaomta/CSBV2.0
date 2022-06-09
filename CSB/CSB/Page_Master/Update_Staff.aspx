<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Update_Staff.aspx.cs" Inherits="CSB.Page_Master.Update_Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-body">
        <div class="page-wrapper">
            <div class="card">
                <div class="card-header">
                    <h5 id="title_Update_Staff">THÔNG TIN CÁN BỘ, NHÂN VIÊN TÀU</h5>
                    <div class="page-header-breadcrumb">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Null.aspx" style="font-size: 14px;">Trang chủ</a>
                            </li>
                            <li class="breadcrumb-item"><a href="#" style="font-size: 14px;">Quản lý nhân viên</a>
                            </li>
                            <li class="breadcrumb-item"><a href="Add_Staff.aspx" style="font-size: 14px;">Thông tin nhân viên</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="card-block">
                    <form>
                        <h4 class="sub-title">Thông tin cơ bản</h4>
                        <div class="row">
                            <div class="col-lg-6 col-md-12">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-md-3 col-form-label">Họ và tên <span style="color: red;">(*)</span>: </label>
                                    <div class="col-lg-8 col-md-9">
                                        <input type="text" id="edit-staffFullName" class="form-control" placeholder="Ví dụ: Nguyễn Văn A" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-md-3 col-form-label">Năm sinh <span style="color: red;">(*)</span>: </label>
                                    <div class="col-lg-8 col-md-9">
                                        <input type="text" id="edit-staffBirthYear" class="form-control" placeholder="Ví dụ: 1982" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-12">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-md-3 col-form-label">Quê quán <span style="color: red;">(*)</span>: </label>
                                    <div class="col-lg-8 col-md-9">
                                        <input type="text" id="edit-staffResidence" class="form-control" placeholder="Ví dụ: Diễn Châu - Nghệ An - Nghệ An" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-md-3 col-form-label">Nhập ngũ <span style="color: red;">(*)</span>: </label>
                                    <div class="col-lg-8 col-md-9">
                                        <input type="text" id="edit-staffEnlist" class="form-control" placeholder="Ví dụ: 9/2001" required>
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
                                        <select class="form-control" id="edit-staffRanking" onchange="onchangeCapBac(this.value)">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Chức vụ <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="edit-staffPosition" onchange="onchangeChucVu(this.value)">
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
                                        <select class="form-control" id="edit-staffMajoring" onchange="onchangeChuyenNganh(this.value)">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Trình độ <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="edit-staffDegree" onchange="onchangeTrinhDo(this.value)">
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
                                        <select class="form-control" id="edit-staffInstitution" onchange="onchangeTruong(this.value)">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Năm tốt nghiệp : </label>
                                    <div class="col-sm-8">
                                        <input type="text" id="edit-staffGraduation" class="form-control" placeholder="Ví dụ: 2007" required>
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
                                        <input type="text" id="edit-staffFrom" class="form-control" placeholder="Ví dụ: 9/2001" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Ngày, tháng : </label>
                                    <div class="col-sm-8">
                                        <input type="text" id="edit-staffFromDate" class="form-control" placeholder="Ví dụ: 2007" required>
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
                                        <input type="text" id="edit-staffLeave" class="form-control" placeholder="Ví dụ: 9/2001" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Ngày, tháng : </label>
                                    <div class="col-sm-8">
                                        <input type="text" id="edit-staffLeaveDate" class="form-control" placeholder="Ví dụ: 2007" required>
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
                                        <input type="text" id="edit-staffNote" class="form-control" placeholder="Nhập ghi chú: " required>
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
                                    <button type="button" onclick="remove_input_edit_ship()" class="btn btn-danger"><i class="bi bi-x-circle"></i>&nbsp;Xoá ô nhập</button>
                                    <button type="button" class="btn btn-primary right" onclick="editStaff()"><i class="bi bi-plus-circle"></i>&nbsp;Lưu thông tin</button>
                                </div>

                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script>
        var Staff_ID;
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
            Staff_ID = getParameterByName('Staff_ID');
            if (Staff_ID == null) {
                history.back();
            }
            else {
               
                Load_TT_Staff();
                $("#edit-staffFullName").focusout(function () {
                    $("#edit-staffFullName").addClass("need-validated");
                });
                $("#edit-staffResidence").focusout(function () {
                    $("#edit-staffResidence").addClass("need-validated");
                });
                $("#edit-staffBirthYear").focusout(function () {
                    $("#edit-staffBirthYear").addClass("need-validated");
                });
                $("#edit-staffEnlist").focusout(function () {
                    $("#edit-staffEnlist").addClass("need-validated");
                });
            }

        });


        function Load_TT_Staff() {
            $.ajax({
                type: "GET",
                url: linkapi + "personnel?id=" + Staff_ID,
                dataType: "json",
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    debugger
                    Load_Title(data.ShipID);

                    list_Ranking(data.Ranking.ID, 'edit-staffRanking');
                    list_Majoring(data.Majoring.ID, 'edit-staffMajoring');
                    list_Institution(data.Institution.ID, 'edit-staffInstitution');
                    list_Position(data.Position.ID, 'edit-staffPosition');
                    list_Degree(data.Degree.ID, 'edit-staffDegree');

                    $("#edit-staffFullName").val(data.FullName);
                    $("#edit-staffBirthYear").val(data.BirthYear);
                    $("#edit-staffResidence").val(data.Residence);
                    $("#edit-staffEnlist").val(data.Enlist);
                    $("#edit-staffGraduation").val(data.Graduation);
                    $("#edit-staffFrom").val(data.From);
                    $("#edit-staffFromDate").val(data.FromDate);
                    $("#edit-staffLeave").val(data.Leave);
                    $("#edit-staffLeaveDate").val(data.LeaveDate);
                    $("#edit-staffNote").val(data.Note);
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.


                },
            });
        }


        function Load_Title(Ship_ID) {
            debugger
            $.ajax({
                type: "GET",
                url: linkapi + "v2/ship_detail?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    $("#title_Update_Staff").html("THÔNG TIN CÁN BỘ, NHÂN VIÊN TÀU " + data.TTCOBAN.SOHIEU);
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.


                },
            });
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

        function editStaff() {
            if ($("#edit-staffFullName").val() == "") {
                alert("Vui lòng nhập họ tên của cán bộ, nhân viên!");
            }
            else if ($("#edit-staffBirthYear").val() == "") {
                alert("Vui lòng nhập ngày sinh của cán bộ, nhân viên!");
            }
            else if ($("#edit-staffResidence").val() == "") {
                alert("Vui lòng nhập quê quán của cán bộ, nhân viên!");
            }
            else if ($("#edit-staffEnlist").val() == "") {
                alert("Vui lòng nhập ngày nhập ngũ của cán bộ, nhân viên!");
            }
            else {
                var Staff = {
                    ID: Staff_ID,
                    FullName: $("#edit-staffFullName").val(),
                    BirthYear: $("#edit-staffBirthYear").val(),
                    Residence: $("#edit-staffResidence").val(),
                    Enlist: $("#edit-staffEnlist").val(),
                    Majoring: {
                        ID: $("#edit-staffMajoring").val()
                    },
                    Ranking: {
                        ID: $("#edit-staffRanking").val()
                    },
                    Position: {
                        ID: $("#edit-staffPosition").val()
                    },
                    Institution: {
                        ID: $("#edit-staffInstitution").val()
                    },
                    Graduation: $("#edit-staffGraduation").val(),
                    Degree: {
                        ID: $("#edit-staffDegree").val()
                    },
                    From: $("#edit-staffFrom").val(),
                    FromDate: $("#edit-staffFromDate").val(),
                    Leave: $("#edit-staffLeave").val(),
                    LeaveDate: $("#edit-staffLeaveDate").val(),
                    Note: $("#edit-staffNote").val(),
                };
                console.log(Staff);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "update_personnel?id=" + Staff_ID,
                    dataType: "json",
                    data: JSON.stringify(Staff),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        debugger
                        toastSuccess("Thành công", "Sửa cán bộ, nhân viên mới thành công.");
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.


                    },
                });
            }

        }
        function remove_input_edit_ship() {
            $("#edit-staffFullName").val("");
            $("#edit-staffBirthYear").val("");
            $("#edit-staffResidence").val("");
            $("#edit-staffEnlist").val("");
            $("#edit-staffGraduation").val("");
            $("#edit-staffFrom").val("");
            $("#edit-staffFromDate").val("");
            $("#edit-staffLeave").val("");
            $("#edit-staffLeaveDate").val("");
            $("#edit-staffNote").val("");

            $("#edit-staffFullName").removeClass("need-validated");
            $("#edit-staffBirthYear").removeClass("need-validated");
            $("#edit-staffResidence").removeClass("need-validated");
            $("#edit-staffEnlist").removeClass("need-validated");
        }


    </script>
</asp:Content>
