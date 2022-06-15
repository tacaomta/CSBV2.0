<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_Staff.aspx.cs" Inherits="CSB.Page_Master.Manage_Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1">
        <div class="section-header">
            <div class="section">
                <div class="section-header">
                    <h4 id="title_manage_staff" style="color: black; margin: 0; margin-left: 15px;">QUẢN LÝ CÁN BỘ, NHÂN VIÊN TÀU </h4>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ </a></div>
                        <div class="breadcrumb-item active"><a href="Manage_Tau?vung=1" style="color: #01b5f9">Quản lý tàu</a></div>
                        <div class="breadcrumb-item active"><a  href="#" onclick="HoSoTau()" style="color: #01b5f9">Hồ sơ tàu</a></div>
                        <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Quản lí nhân viên</a></div>
                    </div>
                </div>
                <div class="section-header">
                    <div class="col-md-12">
                        <table id="table_Staff" class="table table-bordered table-striped table-md" style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
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
                        //$('#loader').removeClass('hidden');
                    },
                    success: function (data) {
                        var tabletext = "<thead><tr><th>STT</th><th>HỌ VÀ TÊN</th><th>NĂM SINH</th><th>QUÊ QUÁN</th><th>GHI CHÚ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                        var i = 1;
                        $.each(data, function (key, item) {
                            tabletext += "<tr><td>" + i + "</td><td>" + item.FullName + "</td><td>" + item.BirthYear + "</td><td>" + item.Residence + "</td><td>" + item.Note + "</td>"+'<td><div style="width: max-content;"><a href="#" class="edit" onclick="editstaff(`' + item.ID + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_staff(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
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
                        //$('#loader').addClass('hidden');
                        $('#model-edit-user').addClass('hidden');
                    },
                });
            }
        }
        function loadTableStaff() {
            $('table[id=table_Staff]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 40 },
                        { name: 'HỌ VÀ TÊN', width: 160 },
                        { name: 'NĂM SINH', width: 160 },
                        { name: 'QUÊ QUÁN', width: 160 },
                        { name: 'GHI CHÚ', width: 160 },
                        { name: 'TÁC VỤ', width: 60 },
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
                    lengthChange: true,
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
                $('.col-sm-12').first().html('<div class="btn-group"><button onclick="btn_Load_liststaff()" class="btn btn-lg btn-secondary mb-3"><i class="bi-arrow-repeat"></i> Load dữ liệu</button><button id="btn_addstaff" onclick="btn_addstaff()" class="btn btn-lg btn-secondary mb-3" style=" padding - top: 4px;margin - top: -4px;"><i class="bi bi-plus-circle"></i> Thêm mới</button></div>');

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
            location.reload(true);
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
    </script>
</asp:Content>
