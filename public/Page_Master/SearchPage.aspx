<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="CSB.Page_Master.SearchPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .page-container {
            background-color: #92ddff;
            padding-top: 30px;
            height: 65vh;
            position:relative;
        }

        .search-gif {
            background-image: url(../Image/search.jpeg);
            background-size: contain;
            height: 250px;
            background-repeat: no-repeat;
            background-position: center;
            background-color: #92ddff;
        /*    margin-bottom: 30px;*/
        }

        .search-container {
            background-color: #92ddff;
            color: #ffffff;
            text-align: center;
            padding-bottom: 30px;
        }

            .search-container p {
                font-size: 24px;
                font-weight: bold;
            }

        .search-box {
            width: 50%;
            height: 50px;
            line-height: 30px;
            border-radius: 15px;
            padding: 0 15px;
            border: none;
        }

            .search-box:focus {
                outline: none;
            }

        .search-button {
            background-color: Highlight;
            border-radius: 15px;
            color: #ffffff;
            padding: 0 10px;
            border: none;
            text-decoration: none;
            line-height: 50px;
        }

            .search-button:hover {
                background-color: #4141b3;
                text-decoration: none;
                color: #ffffff;
                cursor: pointer;
            }



    </style>
    <div class="page-container">
        <div class="search-gif"></div>
        <div class="search-container">
            <p>TRANG TÌM KIẾM THÔNG TIN TÀU</p>
            <div class="row" style="justify-content: center;">
                <input id="keyword" class="search-box" type="text" />
                <a onclick="Search_Ship()" class="search-button ml-3">Tìm kiếm</a>
            </div>
   <%--         <div class=" row">
                <div class="left-result col-12">
                    <p>Tìm kiếm theo</p>
                    <label class="label-container" for="res-all">
                        All
              <input type="radio" checked="checked" id="res-all" value="res-all" name="radio1">
                        <span class="checkmark"></span>
                    </label>
                    <label class="label-container" for="res-id">
                        ID tàu
              <input type="radio" id="res-id" value="res-id" name="radio1">
                        <span class="checkmark"></span>
                    </label>
                    <label class="label-container" for="res-name">
                        Tên tàu
              <input type="radio" id="res-name" value="res-name" name="radio1">
                        <span class="checkmark"></span>
                    </label>
                    <label class="label-container" for="res-cap">
                        Cán bộ
              <input type="radio" id="res-cap" value="res-cap" name="radio1">
                        <span class="checkmark"></span>
                    </label>
                    <label class="label-container" for="res-year">
                        Năm hạ thủy
              <input type="radio" id="res-year" value="res-year" name="radio1">
                        <span class="checkmark"></span>
                    </label>

                    <p>Lọc theo đơn vị</p>
                    <label class="label-container" for="res-all-unit">
                        All
              <input type="radio" checked="checked" id="res-all-unit" value="res-all-unit" name="radio2">
                        <span class="checkmark"></span>
                    </label>
                    <label class="label-container" for="res-region">
                        Vùng
              <input type="radio" id="res-region" value="res-region" name="radio2">
                        <span class="checkmark"></span>
                    </label>
                    <label class="label-container" for="res-squad">
                        Hải đoàn
              <input type="radio" id="res-squad" value="res-squad" name="radio2">
                        <span class="checkmark"></span>
                    </label>
                    <label class="label-container" for="res-flot">
                        Hải đội
              <input type="radio" id="res-flot" value="res-flot" name="radio2">
                        <span class="checkmark"></span>
                    </label>
                </div>
            </div>--%>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        $('#keyword').keypress(function (event) {
            var keycode = (event.keyCode ? event.keyCode : event.which);
            if (keycode == '13') {
                Search_Ship();
            }
        });
        function Search_Ship() {
            var trimStr = $.trim($('#keyword').val());
            if (trimStr == '') {
                alert('Bạn chưa nhập thông tin tìm kiếm!');
            }
            else {
                window.location = baseaddress + "Page_Master/SearchResult?keyword=" + trimStr;
            }

        }
    </script>
</asp:Content>
