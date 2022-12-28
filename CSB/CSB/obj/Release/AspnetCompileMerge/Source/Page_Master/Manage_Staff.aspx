<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_Staff.aspx.cs" Inherits="CSB.Page_Master.Manage_Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #table_Staff_wrapper {
            overflow-x: hidden;
        }

        tbody tr td {
            vertical-align: middle;
            text-align: center;
        }
    </style>
    <div id="form1">
        <div class="section" style="background-color: #fff; padding-bottom: 5px;">
            <div class="section-header" style="background-color: #fff;">
                <h4 id="title_manage_staff" style="color: black; margin: 0; margin-left: 15px;">QUẢN LÝ CÁN BỘ, NHÂN VIÊN TÀU</h4>
                <div class="section-header-breadcrumb" style="margin-right: 15px;">
                    <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9; font-size: 14px;">Trang chủ </a></div>
                    <div class="breadcrumb-item active"><a href="Manage_Tau?vung=1" style="color: #01b5f9; font-size: 14px;">Quản lý tàu</a></div>
                    <div class="breadcrumb-item active"><a href="#" onclick="HoSoTau()" style="color: #01b5f9; font-size: 14px;">Hồ sơ tàu</a></div>
                    <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9; font-size: 14px;">Quản lí nhân viên</a></div>
                </div>
            </div>
            <div class="section-content">
                <div class="section">
                    <div class="col-md-12">
                        <div class="btn-group">
                            <button onclick="btn_Load_liststaff()" class="btn btn-secondary mb-2"><i class="bi-arrow-clockwise"></i>Load dữ liệu</button>
                            <button id="btn_addstaff" onclick="btn_addstaff()" class="btn btn-secondary mb-2"><i class="bi bi-plus-circle"></i>Thêm mới</button>
                            <input type="file" id="input_excel" accept=".xls,.xlsx" class="btn btn-secondary mb-2">
                            <button id="btn_LoadExcel" class="btn btn-secondary mb-2">Convert Excel</button>
                        </div>
                        <table id="table_Staff" class="table table-bordered table-striped table-md" style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="loader" class="spinner-border text-primary" role="status"></div>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>--%>
    <script>
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
                loadDataList_Staff(Ship_ID);
            }

        });
        function Load_Title(Ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/ship_detail?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    $("#title_manage_staff").html("QUẢN LÝ CÁN BỘ, NHÂN VIÊN TÀU " + data.TTCOBAN.SOHIEU);
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
        function loadDataList_Staff(Ship_ID) {
            {
                $.ajax({
                    type: "GET",
                    url: linkapi + "personnels?id=" + Ship_ID,
                    dataType: "json",
                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                        $('#loader').removeClass('hidden');
                    },
                    success: function (data) {
                        var tabletext = "<thead><tr><th>STT</th><th>HỌ VÀ TÊN</th><th>NĂM SINH</th><th>QUÊ QUÁN</th><th>GHI CHÚ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                        var i = 1;
                        $.each(data, function (key, item) {
                            tabletext += "<tr><td style='text-align: center;'>" + i + "</td><td>" + item.FullName + "</td><td>" + item.BirthYear + "</td><td>" + item.Residence + "</td><td>" + item.Note + "</td>" + '<td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" onclick="editstaff(`' + item.ID + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_staff(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                            i = i + 1;
                        });
                        tabletext += "</tbody>";
                        $('#table_Staff').html(tabletext);
                        loadTableStaff();
                        //$('#tableship_wrapper .row .col-sm-12').first().html('<button onclick="btn_addship()" class="btn btn-info btn-lg col-md-6" /*data-toggle="modal" data-target="#model-add-ship"*/ style="height: 40px; margin-bottom: 8px; margin-top: -4px; font-size: 18px;"><span class="glyphicon glyphicon-plus"></span>Thêm tàu</button>');

                    }, error: function (ret) {
                        console.log('errorGET');
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#loader').addClass('hidden');
                    },
                });
            }
        }
        function loadTableStaff() {
            $('table[id=table_Staff]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 40 },
                        { name: 'HỌ VÀ TÊN', width: 160 },
                        { name: 'NĂM SINH', width: 160 },
                        { name: 'QUÊ QUÁN', width: 160 },
                        { name: 'GHI CHÚ', width: 160 },
                        { name: 'TÁC VỤ', width: 40 },
                    ],
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
        function editstaff(Staff_ID) {
            window.location = baseaddress + "Page_Master/Update_Staff?Staff_ID=" + Staff_ID;
        }
        function btn_addstaff() {
            debugger
            window.location = baseaddress + "Page_Master/Add_Staff?Ship_ID=" + Ship_ID;
        }
        function btn_Load_liststaff() {
            Load_Title(Ship_ID);
            loadDataList_Staff(Ship_ID);
        }

        function btn_Load_Excel() {

        }
        function delete_staff(Staff_ID) {
            let text = "Bạn có chắc muốn xóa cán bộ, nhân viên này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_personnel?id=" + Staff_ID,
                    type: "DELETE",

                }).done(function (res) {
                    Load_Title(Ship_ID);
                    loadDataList_Staff(Ship_ID);
                    toastSuccess("Thành công", "Xóa cán bộ, nhân viên thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa cán bộ, nhân viên không thành công!");
                })
            } else {

            }
        }

        let selectedFile;
        document.getElementById("input_excel").addEventListener("change", (event) => {
            selectedFile = event.target.files[0];
        });

       
        function Load_Data_Staff_CB(staff) {
            Return_Ranking(staff);
        }
        //function Return_Ranking(string_value) {
        function Return_Ranking(staff) {
            debugger
            $.ajax({
                async: false,
                type: "GET",
                url: linkapi + "ranks",
                dataType: "json",
            }).done(function (data) {
                var tmt = 0;
                $.each(data, function (key, item) {
                    if (item.Name == staff.Ranking.ID) {
                        staff.Ranking.ID = item.ID;
                        return Return_Position(staff);
                        tmt = 1;
                    }

                });
                if (tmt == 0) {
                    return Return_Position(staff);
                }
                
            }).fail(function (jqXHR, textStatus, errorThrown) {
            })
        }
        function Return_Position(staff) {
            debugger
            $.ajax({
                async: false,
                type: "GET",
                url: linkapi + "positions",
                dataType: "json",
                success: function (data) {
                    var tmt = 0;
                    $.each(data, function (key, item) {
                        if (item.Name == staff.Position.ID) {
                            staff.Position.ID = item.ID;
                            return Return_Institution(staff);
                            tmt = 1;
                        }

                    });
                    if (tmt == 0) {
                        return Return_Institution(staff);

                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () {

                },
            });

        }
        function Return_Institution(staff) {
            debugger
            $.ajax({
                async: false,
                type: "GET",
                url: linkapi + "institutions",
                dataType: "json",
                success: function (data) {
                    var tmt = 0;
                    $.each(data, function (key, item) {
                        if (item.Name == staff.Institution.ID) {
                            staff.Institution.ID = item.ID;
                            return Return_Majoring(staff);
                            tmt = 1;
                        }

                    });
                    if (tmt == 0) {
                        return Return_Majoring(staff);

                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () {

                },
            });

        }
        function Return_Majoring(staff) {
            debugger
            $.ajax({
                async: false,
                type: "GET",
                url: linkapi + "majors",
                dataType: "json",
                success: function (data) {
                    debugger
                    var tmt = 0;
                    $.each(data, function (key, item) {

                        if (item.Name == staff.Majoring.ID) {
                            staff.Majoring.ID = item.ID;
                            return Return_Degree(staff);
                            tmt = 1;
                        }

                    });
                    if (tmt==0) {
                        return Return_Degree(staff);
                    }

                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () {
                },
            });

        }
        function Return_Degree(staff) {
            debugger
            $.ajax({
                async: false,
                type: "GET",
                url: linkapi + "degrees",
                dataType: "json",
                success: function (data) {
                    var tmt = 0;
                    $.each(data, function (key, item) {
                        if (item.Name == staff.Degree.ID) {
                            staff.Degree.ID = item.ID;
                           
                            return staff;
                            tmt = 1;
                        }

                    });
                    if (tmt == 0) {

                        return staff;
                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () {

                },
            });

        }
        document.getElementById("btn_LoadExcel").addEventListener("click", () => {
            if (selectedFile) {
                let fileReader = new FileReader();
                fileReader.readAsBinaryString(selectedFile);
                fileReader.onload = (event) => {
                    let data = event.target.result;
                    let workbook = XLSX.read(data, { type: "binary" });
                    console.log(workbook);
                    let rowObject_CB = XLSX.utils.sheet_to_row_object_array(workbook.Sheets["Cán bộ, nhân viên"]);
                   
                    let rowObject_TV = XLSX.utils.sheet_to_row_object_array(workbook.Sheets["Thân vỏ"]);
                    console.log("row: ", rowObject_TV);
                    var data_CB = JSON.parse(JSON.stringify(rowObject_CB, undefined, 4));
                    var data_TV = JSON.parse(JSON.stringify(rowObject_TV, undefined, 4));
                    console.log(data_TV);
                    $.each(data_CB, function (i, item) {
                        var FullName;
                        var BirthYear;
                        var Residence;
                        var Enlist;
                        var Ranking;
                        var Position;
                        var Degree;
                        var Institution;
                        var Graduation;
                        var From;
                        var FromDate;
                        var Leave;
                        var LeaveDate;
                        var Note;
                     
                        $.each(item, function (key, value) {
                            if (key == "HỌ VÀ TÊN (*)") {
                                FullName = value;
                                debugger
                            }
                            else if (key == "NĂM SINH (*)") {
                                BirthYear = value;
                                debugger
                            }
                            else if (key == "QUÊ QUÁN (*)") {
                                Residence = value;
                                debugger
                            }
                            else if (key == "NHẬP NGŨ (*)") {
                                Enlist = value;
                                debugger
                            }
                            else if (key == "CẤP BẬC") {
                                Ranking = value;
                            }
                            else if (key == "CHỨC VỤ") {
                                Position = value;
                            }
                            else if (key == "CHUYÊN NGÀNH") {
                                Majoring = value;
                            }
                            else if (key == "TRÌNH ĐỘ") {
                                Degree = value;
                            }
                            else if (key == "TRƯỜNG ĐÀO TẠO") {
                                Institution = value;
                            }
                            else if (key == "NĂM TỐT NGHIỆP") {
                                Graduation = value;
                            }
                            else if (key == "CHUYỂN ĐẾN TỪ ĐÂU") {
                                From = value;
                            }
                            else if (key == "NGÀY THÁNG ĐẾN") {
                                FromDate = value;
                            }
                            else if (key == "CHUYỂN ĐI ĐÂU") {
                                Leave = value;
                            }
                            else if (key == "NGÀY THÁNG ĐI") {
                                LeaveDate = value;
                            }
                            else if (key == "GHI CHÚ") {
                                Note = value;
                            }
                        });
                        var Staff = {
                            FullName: FullName,
                            BirthYear: BirthYear,
                            Residence: Residence,
                            Enlist: Enlist,
                            Majoring: {
                                ID: Majoring,
                            },
                            Ranking: {
                                ID: Ranking,
                            },
                            Position: {
                                ID: Position,
                            },
                            Institution: {
                                ID: Institution,
                            },
                            Graduation: Graduation,
                            Degree: {
                                ID: Degree,
                            },
                            From: From,
                            FromDate: FromDate,
                            Leave: Leave,
                            LeaveDate: LeaveDate,
                            Note: Note,
                            ShipID: Ship_ID,
                        };
                        Load_Data_Staff_CB(Staff);
                        console.log("st: ", Staff);
                        debugger
                        $.ajax({
                            type: "POST",
                            url: linkapi + "insert_personnel",
                            dataType: "json",
                            data: JSON.stringify(Staff),
                            contentType: "application/json",
                            beforeSend: function () {
                            },
                            success: function (data) {
                                loadDataList_Staff(Ship_ID);
                            }, error: function (ret) {
                            },
                            complete: function () {
                            },
                        });
                    });
                }
            }
        });
    </script>
</asp:Content>
