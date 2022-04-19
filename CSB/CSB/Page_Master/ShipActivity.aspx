<%@ Page Title="Hoạt động tàu" Language="C#" MasterPageFile="~/Master/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="ShipActivity.aspx.cs" Inherits="CSB.Page_Master.ShipActivity" %>
<asp:Content ID="ShipActivity" ContentPlaceHolderID="MainContentAdmin" runat="server">
    <style>

    </style>

    <div id="form1">
        <div class="section-header">
            <div class="section">
                <div class="section-header">
                    <h4 style="color: black; margin: 0; margin-left: 15px;">THEO DÕI HOẠT ĐỘNG TÀU</h4>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ</a></div>
                        <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Hoạt động tàu</a></div>
                    </div>
                </div>
                <div class="section-header" style="display: block;">
                    <div class="col-md-12">
                    <div class="section-body-card" style="color:black;margin-bottom: 20px;">
                        <div class="navalueRegion" style="display: flex">
                            <div class="form-group text-uppercase text-left" style="padding: 15px 5px 5px 5px;">
                                <h6>Vùng</h6>
                            </div>
                            <div class="">
                                <select id="selRegion" onchange="onchangeRegion(this.value)" valueue="" aria-controls="dataTables-example" class="form-control input-sm">
                                    <option value="5AEBB23FF45F3C235AFD86B510BF9E8C">Vùng 1</option>
                                    <option value="5AEBB23FF45F3C235AFD86B510BF9E8B">Vùng 2</option>
                                    <option value="5AEBB23FF45F3C235AFD86B510BF9E8D">Vùng 3</option>
                                    <option value="5AEBB23FF45F3C235AFD86B510BF9E8E">Vùng 4</option>
                                </select>
                            </div>
                        </div>
                        <div class="squadron" style="display: flex">
                            <div class="form-group text-uppercase text-left" style="padding: 15px 5px 5px 5px;">
                                <h6>Hải đoàn</h6>
                            </div>
                            <div class="">
                                <select id="selSquadron" onchange="onchangeSquadron(this.value)" valueue="" aria-controls="dataTables-example" class="form-control input-sm">
                                    <option value="">Vùng 1</option>
                                </select>
                            </div>
                        </div>
                        <div class="flotilla" style="display: flex">
                            <div class="form-group text-uppercase text-left" style="padding: 15px 5px 5px 5px;">
                                <h6>Hải đội</h6>
                            </div>
                            <div class="">
                                <select id="selFlotilla" onchange="onchangeFlotilla(this.value)" valueue="" aria-controls="dataTables-example" class="form-control input-sm">
                                    <option value="">Vùng 1</option>
                                </select>
                            </div>
                        </div>
                        <div>
                            <button class="btn btn-info btn-lg" onclick="ViewShipActivity()">Xem</button>
                        </div>
                    </div>

                    </div>
                    
                    <div class="section-body-card">
                        <div class="col-md-12">
                            <div class="card-donvi">
                                <p class="section-lead" style="font-size:18px; margin-left:1%">
                                    Tàu, xuồng tại đơn vị <span id="number-donvi"></span>
                                </p>
                                <div class="row">
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="card card-danger">
                                            <div class="card-header">
                                                <div class ="card-header-title">
                                                    <a><h4>Tàu abc</h4></a>
                                                    <a><p>Số hiệu tàu</p></a>
                                                </div>
                                                <div>
                                                    <a class="delete"><i class="material-icons">expand_circle_down</i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="card card-danger">
                                            <div class="card-header">
                                                <a><h4>Tàu abc</h4></a><a><p>Số hiệu tàu</p></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="card card-danger">
                                            <div class="card-header">
                                                <a><h4>Tàu abc</h4></a><a><p>Số hiệu tàu</p></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="card card-danger">
                                            <div class="card-header">
                                                <a><h4>Tàu abc</h4></a><a><p>Số hiệu tàu</p></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="card card-danger">
                                            <div class="card-header">
                                                <a><h4>Tàu abc</h4></a><a><p>Số hiệu tàu</p></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="card card-danger">
                                            <div class="card-header">
                                                <a><h4>Tàu abc</h4></a><a><p>Số hiệu tàu</p></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="card card-danger">
                                            <div class="card-header">
                                                <a><h4>Tàu abc</h4></a><a><p>Số hiệu tàu</p></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-trenbien">
                                <p class="section-lead" style="font-size:18px; margin-left:1%">
                                    Tàu, xuồng hoạt động trên biển <span id="number-trenbien"></span>
                                </p>
                                <div class="row">
                                   <div class="col-12 col-md-6 col-lg-4">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <a"><h4>Tàu abc</h4></a>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>
                            <div class="card-nhamay">
                                <p class="section-lead" style="font-size:18px; margin-left:1%">
                                    Tàu, xuồng tại nhà máy <span id="number-nhamay"></span>
                                </p>
                                <div class="row">
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="card card-success">
                                            <div class="card-header">
                                                <a ><h4 >Tàu abc</h4></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="card card-success">
                                            <div class="card-header">
                                                <a ><h4 >Tàu abc</h4></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    
                                </div>
                            <div class="card-suachua">
                                <p class="section-lead" style="font-size:18px; margin-left:1%">
                                    Tàu, xuồng sửa chữa, bảo quản tại đơn vị <span id="number-suachua"></span>
                                </p>
                                <div class="row">
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="card card-info">
                                            <div class="card-header">
                                                <a><h4>Tàu abc</h4></a><a><p>Số hiệu tàu</p></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-trucsscd">
                                <p class="section-lead" style="font-size:18px; margin-left:1%">
                                    Tàu, xuồng trực SSCĐ tại đơn vị <span id="number-trucsscd"></span>
                                </p>
                                <div class="row">
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="card card-warning">
                                            <div class="card-header">
                                                <a><h4>Tàu abc</h4></a><a><p>Số hiệu tàu</p></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-haiquan">
                                <p class="section-lead" style="font-size:18px; margin-left:1%">
                                    Tàu, xuồng phối thuộc tại đơn vị Hải quân <span id="number-haiquan"></span>
                                </p>
                                <div class="row">
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="card card-dark">
                                            <div class="card-header">
                                                <a><h4>Tàu abc</h4></a><a><p>Số hiệu tàu</p></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-khac">
                                <p class="section-lead" style="font-size:18px; margin-left:1%">
                                    Tàu, xuồng ở vị trí khác <span id="number-khac"></span>
                                </p>
                                <div class="row">
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="card card-secondary">
                                            <div class="card-header">
                                                <a><h4>Tàu abc</h4></a><a><p>Số hiệu tàu</p></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
      
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        $(document).ready(function () {
            loadRegion();
            
        });

        function loadRegion() {
            $.ajax({
                type: "GET",
                url: linkapi + "naval_region",
                dataType: "json",
                success: function (data) {
                    var selRegion = "";
                    $.each(data, function (key, item) {
                        selRegion += "<option value=" + item.ID + ">" + item.ShortName + "</option>";
                    });
                    $('#selRegion').html(selRegion);
                    onchangeRegion(data[0].ID);
                }, error: function (ret) {
                    console.log('errorGetnaval_region');
                },
            });
        }

        function onchangeRegion(idRegion) {
            $.ajax({
                type: "GET",
                url: linkapi + "squadrons_by_region?id=" + idRegion,
                dataType: "json",
                success: function (data) {
                    var selSquadron = '<option value="" selected>Tất cả</option><option value="0" >Trực thuộc BTL Vùng</option>';
                    $.each(data, function (key, item) {
                        selSquadron += "<option value=" + item.Id + ">" + item.Name + "</option>";
                    });
                    $('#selSquadron').html(selSquadron);

                    onchangeSquadron("");
                }, error: function (ret) {
                    console.log('errorGetsquadrons_by_region');
                },
            });
        }

        function onchangeSquadron(idSquadron) {
            if (idSquadron == '') {
                var selFlotilla = '<option value="" selected>Tất cả</option>';
                $('#selFlotilla').html(selFlotilla);
            }
            else if (idSquadron == '0') {
                var idRegion = $('#selRegion').val();
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
                        $('#selFlotilla').html(selFlotilla);
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
                        var selFlotilla = '<option value="" selected>Tất cả</option>';
                        $.each(data, function (key, item) {
                            selFlotilla += "<option value=" + item.Id + ">" + item.Name + "</option>";
                        });
                        $('#selFlotilla').html(selFlotilla);
                    }, error: function (ret) {
                        console.log('errorGet flotilla_by_navalregion');
                    },
                });
            }
        }

        function onchangeFlotilla(obj) {

        }

        function ViewShipActivity() {
            var idFlotilla = $('#selFlotilla').val();
            var idSquadron = $('#selSquadron').val();
            var idRegion = $('#selRegion').val();
            console.log('idFlotilla = ' + idFlotilla + ' idSquadron = ' + idSquadron + ' idRegion ' + idRegion);
            let donvi = 0;
            let trenbien = 0;
            let nhamay = 0;
            let suachua = 0;
            let trucsscd = 0;
            let haiquan = 0;
            let khac = 0;
            let rowdonvi = '';
            let rowtrenbien = '';
            let rownhamay = '';
            let rowsuachua = '';
            let rowtrucsscd = '';
            let rowhaiquan = '';
            let rowkhac = '';
            if (idFlotilla != '') {
                $.ajax({
                    type: "GET",
                    url: linkapi + "ship_activities_byflottila?id=" + idFlotilla,
                    dataType: "json",
                    success: function (data) {
                        $.each(data, function (key, item) {
                            if (item.Activity.ID == '63A71319FC97778481E4BC11248087AB') {
                                donvi += 1;
                                rowdonvi += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-danger" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087DE') { //treen bieenr
                                trenbien += 1;
                                rowtrenbien += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-primary" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087MN') { //nha may
                                nhamay += 1;
                                rownhamay += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-success" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087OI') { //suachua
                                suachua += 1;
                                rowsuachua += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-info" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087QA') { //trucsscd
                                trucsscd += 1;
                                rowtrucsscd += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-warning" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';

                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087QW') { //tai don vi hai quan
                                haiquan += 1;
                                rowhaiquan += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-dark" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';

                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087TY') { //vi tri khac
                                khac += 1;
                                rowkhac += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-secondary" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';
                            }

                        });
                        loadsectionbodycard(donvi, trenbien, nhamay, suachua, trucsscd, haiquan, khac, rowdonvi, rowtrenbien, rownhamay, rowsuachua, rowtrucsscd, rowhaiquan, rowkhac)
                    }, error: function (ret) {
                        console.log('errorGet flotilla_by_navalregion');
                    },
                });
            }
            else if (idSquadron == '') {
                $.ajax({
                    type: "GET",
                    url: linkapi + "ship_activities_byregion?id=" + idRegion,
                    dataType: "json",
                    success: function (data) {
                        $.each(data, function (key, item) {
                            if (item.Activity.ID == '63A71319FC97778481E4BC11248087AB') {
                                donvi += 1;
                                rowdonvi += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-danger" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087DE') { //treen bieenr
                                trenbien += 1;
                                rowtrenbien += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-primary" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087MN') { //nha may
                                nhamay += 1;
                                rownhamay += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-success" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087OI') { //suachua
                                suachua += 1;
                                rowsuachua += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-info" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087QA') { //trucsscd
                                trucsscd += 1;
                                rowtrucsscd += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-warning" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';

                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087QW') { //tai don vi hai quan
                                haiquan += 1;
                                rowhaiquan += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-dark" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';

                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087TY') { //vi tri khac
                                khac += 1;
                                rowkhac += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-secondary" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';
                            }

                        });
                        loadsectionbodycard(donvi, trenbien, nhamay, suachua, trucsscd, haiquan, khac, rowdonvi, rowtrenbien, rownhamay, rowsuachua, rowtrucsscd, rowhaiquan, rowkhac)
                    }, error: function (ret) {
                        console.log('errorGet flotilla_by_navalregion');
                    },
                });
            }
            else {
                $.ajax({
                    type: "GET",
                    url: linkapi + "ship_activities_bysquadron?id=" + idSquadron,
                    dataType: "json",
                    success: function (data) {
                        $.each(data, function (key, item) {
                            if (item.Activity.ID == '63A71319FC97778481E4BC11248087AB') {
                                donvi += 1;
                                rowdonvi += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-danger" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087DE') { //treen bieenr
                                trenbien += 1;
                                rowtrenbien += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-primary" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087MN') { //nha may
                                nhamay += 1;
                                rownhamay += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-success" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087OI') { //suachua
                                suachua += 1;
                                rowsuachua += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-info" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087QA') { //trucsscd
                                trucsscd += 1;
                                rowtrucsscd += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-warning" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';

                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087QW') { //tai don vi hai quan
                                haiquan += 1;
                                rowhaiquan += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-dark" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';

                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087TY') { //vi tri khac
                                khac += 1;
                                rowkhac += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-secondary" ><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div><a class="delete"><i class="material-icons">expand_circle_down</i></a></div></div></div></div>';
                            }

                        });
                        loadsectionbodycard(donvi, trenbien, nhamay, suachua, trucsscd, haiquan, khac, rowdonvi, rowtrenbien, rownhamay, rowsuachua, rowtrucsscd, rowhaiquan, rowkhac)
                    }, error: function (ret) {
                        console.log('errorGet flotilla_by_navalregion');
                    },
                });
            }
        }

        function loadsectionbodycard(donvi, trenbien, nhamay, suachua, trucsscd, haiquan, khac, rowdonvi, rowtrenbien, rownhamay, rowsuachua, rowtrucsscd, rowhaiquan, rowkhac) {
            $('.card-donvi .row').html(rowdonvi);
            $('.card-trenbien .row').html(rowtrenbien);
            $('.card-nhamay .row').html(rownhamay);
            $('.card-suachua .row').html(rowsuachua);
            $('.card-trucsscd .row').html(rowtrucsscd);
            $('.card-haiquan .row').html(rowhaiquan);
            $('.card-khac .row').html(rowkhac);
            if (donvi == 0) {
                $('.card-donvi').attr('hidden', 'hidden');
            }
            else {
                $('.card-donvi').removeAttr('hidden');
                $('#number-donvi').html(' - ' + donvi);
            }
            if (trenbien == 0) {
                $('.card-trenbien').attr('hidden', 'hidden');
            }
            else {
                $('.card-trenbien').removeAttr('hidden');
                $('#number-trenbien').html(' - ' + trenbien);
            }
            if (nhamay == 0) {
                $('.card-nhamay').attr('hidden', 'hidden');
            }
            else {
                $('.card-nhamay').removeAttr('hidden');
                $('#number-nhamay').html(' - ' + nhamay);
            }
            if (suachua == 0) {
                $('.card-suachua').attr('hidden', 'hidden');
            }
            else {
                $('.card-suachua').removeAttr('hidden');
                $('#number-suachua').html(' - ' + suachua);
            }
            if (trucsscd == 0) {
                $('.card-trucsscd').attr('hidden', 'hidden');
            }
            else {
                $('.card-trucsscd').removeAttr('hidden');
                $('#number-trucsscd').html(' - ' + trucsscd);
            }
            if (haiquan == 0) {
                $('.card-haiquan').attr('hidden', 'hidden');
            }
            else {
                $('.card-haiquan').removeAttr('hidden');
                $('#number-haiquan').html(' - ' + haiquan);
            }
            if (khac == 0) {
                $('.card-khac').attr('hidden', 'hidden');
            }
            else {
                $('.card-khac').removeAttr('hidden');
                $('#number-khac').html(' - ' + khac);
            }
        }
    </script>
</asp:Content>
