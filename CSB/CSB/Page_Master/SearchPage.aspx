<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="CSB.Page_Master.SearchPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .page-container {
            background-color: #92ddff;
            padding-top: 30px;
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
                background-color: darkblue;
                text-decoration: none;
                color: #ffffff;
            }
    </style>
    <div class="page-container">
        <div class="search-gif"></div>
        <div class="search-container">
            <p>TRANG TÌM KIẾM THÔNG TIN TÀU</p>
            <div class="row" style="justify-content: center;">
                <input class="search-box" type="text" />
                <a href="../Page_Master/SearchResult.aspx" class="search-button ml-3">Tìm kiếm</a>
            </div>
        </div>
    </div>
</asp:Content>
