<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_Tau.aspx.cs" Inherits="CSB.Page_Master.Manage_Tau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1">

        <div class="section" style="background-color: #fff; padding-bottom: 15px;">
            <div class="section-header" style="background-color: #fff;">
                <h4 id="title" style="color: black; margin: 0">QUẢN LÝ TÀU - VÙNG 1</h4>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item"><a href="Null.aspx" style="color: #01b5f9; font-size: 18px;">Trang chủ</a></div>
                    <div class="breadcrumb-item"><a href="Manage_ship?vung=1" style="color: #01b5f9; font-size: 18px;">Quản lý tàu</a></div>
                </div>
            </div>
            <div class="section-content">
                <div class="subMenu" style="justify-content: flex-start; background-color: #f06137;">
                    <ul class="mainMenu-list">
                        <li><a id="Vung1" class="a_menu" href="../Page_Master/Manage_ship?vung=1">VÙNG 1</a></li>
                        <li><a id="Vung2" class="a_menu" href="../Page_Master/Manage_ship?vung=2">VÙNG 2</a></li>
                        <li><a id="Vung3" class="a_menu" href="../Page_Master/Manage_ship?vung=3">VÙNG 3</a></li>
                        <li><a id="Vung4" class="a_menu" href="../Page_Master/Manage_ship?vung=4">VÙNG 4</a></li>
                        <li><a class="a_menu" href="../Page_Master/Null.aspx">CÁC ĐƠN VỊ TRỰC THUỘC</a></li>
                    </ul>
                </div>
                <div class="section-header" style="padding-bottom: 15px;">
                    <div class="col-md-12" style="padding: 0">
                        <table id="tableship" class="table table-bordered table-striped table-md" style="width: 100%">
                            <tbody>
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    
                                    <th>SỐ HIỆU</th>
                                    <th>KÝ HIỆU</th>
                                    <th>SỐ THUYỀN VIÊN</th>
                                    <th>NƠI SẢN XUẤT</th>
                                    <th>TRỌNG TẢI</th>
                                    <th>TỐC ĐỘ</th>
                                    <th title='Thời gian hành trình tối đa'>TG HT TỐI ĐA</th>
                                    <th title='Xem thiết bị trên tàu'>XEM THIẾT BỊ</th>
                                    <th>TÁC VỤ</th>
                                </tr>
                            </thead>
                            <tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script>
        var date = new Date();
        var strDate = '' + date.getDate() + '/' + (Number(date.getMonth()) + 1) + '/' + date.getFullYear() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
        var vung = getParameterByName('vung');
        var vung_id;
        $(document).ready(function () {
            if (vung == null | vung == 1) {
                vung_id = '5AEBB23FF45F3C235AFD86B510BF9E8C';
            }
            else if (vung == 2) {
                vung_id = '5AEBB23FF45F3C235AFD86B510BF9E8B';
            }
            else if (vung == 3) {
                vung_id = '5AEBB23FF45F3C235AFD86B510BF9E8D';
            }
            else if (vung == 4) {
                vung_id = '5AEBB23FF45F3C235AFD86B510BF9E8E';
            }
            $('#title').text('QUẢN LÝ TÀU - VÙNG ' + vung);
            loadDataListShips(vung_id);

        });
    </script>
</asp:Content>
