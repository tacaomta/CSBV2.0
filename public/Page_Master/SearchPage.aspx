<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="CSB.Page_Master.SearchPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .page-container {
            background-color: #92ddff;
            padding-top: 30px;
            height: 65vh;
        }
        .search-gif {
            background-image: url(../Image/ship5.gif);
            background-size: contain;
            height: 250px;
            background-repeat: no-repeat;
            background-position: center;
            background-color: #92ddff;
            margin-bottom: 30px;
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
                <input  id="keyword" class="search-box" type="text" />
                <a onclick="Search_Ship()" class="search-button ml-3">Tìm kiếm</a>           
            </div>
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
    