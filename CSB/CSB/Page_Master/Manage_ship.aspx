<%@ Page Title="Quản lý tàu" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_ship.aspx.cs" Inherits="CSB.Page_Master.Manage_ship" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../css/manage_ship.css" rel="stylesheet" />
    <div id="form1">
        <div class="section-header">
            <div class="col-12">
                <div class="section">
                    <div class="section-header" style="margin-bottom: 2%">
                        <h4 id="title" style="color: black; margin: 0">QUẢN LÝ TÀU - VÙNG 1</h4>
                        <div class="section-header-breadcrumb">
                            <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ</a></div>
                            <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Quản lý tàu</a></div>
                        </div>
                    </div>
                    <div class="section-header">
                        <div class="col-12">
                            <table id="tableship" class="table table-bordered table-striped table-md" style="width: 100%">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>TÊN TÀU</th>
                                        <th>SỐ HIỆU</th>
                                        <th>SỐ THUYỀN VIÊN</th>
                                        <th>NĂM HẠ THỦY</th>
                                        <th>TRỌNG TẢI</th>
                                        <th>TỐC ĐỘ</th>
                                        <th title="Thời gian hành trình tối đa">TG HÀNH TRÌNH TỐI ĐA</th>
                                        <th>TÁC VỤ</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>System Architect</td>
                                        <td>
                                            <a href="#"><i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                            <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                        </td>
                                    </tr>

                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-infordetail-ship" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold" id="largeModalLabel">Thông tin chi tiết của tàu</h6>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix " style="border: 3px solid #36aee5">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Tên tàu     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="TenTau" name="TenTau" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Số hiệu     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="SoHieu" name="SoHieu" required value="">
                                    </div>
                                </div>
                            </div>

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Nơi cấp   : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="NoiCap" name="NoiCap" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Ngày Cấp    : </strong></label>
                                    <div class="col-7">
                                        <input type="time" class="form-control" id="NgayCap" name="NgayCap" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Năm hạ thủy    : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="NamHaThuy" name="NamHaThuy" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Trọng tải    : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="TrongTai" name="TrongTai" required value=""> 
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Lượng nhiên liệu tối đa   : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="NhienLieuToiDa" name="NhienLieuToiDa" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Lượng nước ngọt tối đa   : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="NuocNgotToiDa" name="NuocNgotToiDa" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Số thuyền viên   : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="SoThuyenVien" name="SoThuyenVien" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Thuyền trưởng   : </strong></label>
                                    <div class="col-7">
                                        <select class="form-control" id="ThuyenTruong">
                                            <option value="AD">Admin</option>
                                            <option selected value="US">User</option>
                                        </select>
                                    </div>
                                    <button id="btn_SeeCaptain"><i class="bi bi-eye-fill"></i> </button>
                                    <button id="btn_AddCaptai"><i class="bi bi-plus-circle"></i> </button>
                                </div>
                            </div>
                             <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Tốc độ(hải lý/giờ)   : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="TocDo" name="TocDo" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Thời gian hành trình tối đa   : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="TG_HanhTrinhToiDa" name="TG_HanhTrinhToiDa" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Ngày tạo   : </strong></label>
                                    <div class="col-7">
                                        <input type="time" class="form-control" id="NgayTao" name="NgayTao"  value="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
   <script>
       $(document).ready(function () {
           loadDataListShips($('#vung').val());
       });
       function loadDataListShips(vung) {
           
           $.ajax({
               type: "GET",
               url: linkapi + "ships?region=" + vung,
               dataType: "json",
               beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                   $('#loader').removeClass('hidden');
               },
               success: function (data) {
                   var tabletext = "<thead><tr><th>STT</th><th>TÊN TÀU</th><th>SỐ HIỆU</th><th>SỐ THUYỀN VIÊN</th><th>NĂM HẠ THỦY</th><th>TRỌNG TẢI</th><th>TỐC ĐỘ</th><th title='Thời gian hành trình tối đa'>TG HT TỐI ĐA</th><th  title='Xem thiết bị trên tàu'>XEM THIẾT BỊ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                   var i = 1;
                   $.each(data, function (key, item) {
                       tabletext += "<tr><td>" + i + "</td><td>" + item.Ship.Name + "</td><td>" + item.Ship.RegistrationNumber + "</td><td>" + item.Ship.Personel + "</td><td>" + item.Ship.LaunchYear + "</td><td>" + item.Ship.Weight + "</td><td>" + item.Ship.Speed + "</td><td>" + item.Ship.Time + '</td>' + '<td><button class="btn btn-info btn_ViewInforShip" style="padding: 0;"><i class="fas fa-eye icon_action" title="Xem thiết bị trên tàu"></i></button> </td>'+ '<td><button class="btn btn-info btn_ViewInforShip" onclick="ViewInforShip(`' + item.Ship.Name + '`,`' + item.Ship.RegistrationNumber + '`,`' + item.Ship.RegistrationPlace + '`,`' + item.Ship.RegistrationDate + '`,`' + item.Ship.LaunchYear + '`,`' + item.Ship.Weight + '`,`' + item.Ship.Fuel + '`,`' + item.Ship.Water + '`,`' + item.Ship.Personel + '`,`' + item.Ship.Captain + '`,`' + item.Ship.Speed + '`,`' + item.Ship.Time + '`,`' + item.Ship.Created + '`)" data-toggle="modal" data-target="#model-infordetail-ship"  style="padding: 0;"> <i class="fas fa-edit icon_action" title="Xem thông tin chi tiết" ></i></button><button class="btn btn-info btn_ViewEquipment" style="padding: 0;"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></button></td></tr>';
                       i = i + 1;
                   });
                   tabletext += "</tbody>";
                   $('#tableship').html(tabletext);
                   $('#title').text('QUẢN LÝ TÀU - VÙNG ' + vung);
                   console.log(linkapi + "ships?region=" + vung);
                   loadTableShip();
               }, error: function (ret) {
                   console.log('errorGET');
               },
               complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                  
                   $('#loader').addClass('hidden');
                   $('#model-edit-user').addClass('hidden');
               },
           });
       };
       function ViewInforShip(Name, RegistrationNumber, RegistrationPlace, RegistrationDate, LaunchYear, Weight, Fuel, Water, Personel, Captain, Speed, Time, Created) {
           debugger;
           $("#TenTau").val(Name);
       }
       function loadTableShip() {
           $('table[id=tableship]').each(function () {
               var table1 = $(this).DataTable({
                   'destroy': true,
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
   </script>
</asp:Content>
