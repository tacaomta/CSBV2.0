<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="CSB.Page_Master.SearchResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .page-container {
            background-color: transparent;
        }

            .page-container p {
                margin: 0;
                font-weight: bold;
                color: #909090;
            }

        .left-result {
            padding: 20px 30px;
            border-right: 1px solid #d0d0d0;
        }
        /*Custom radio button*/
        .label-container {
            display: block;
            position: relative;
            padding-left: 35px;
            margin-bottom: 12px;
            cursor: pointer;
            font-size: 16px;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

            .label-container input {
                position: absolute;
                opacity: 0;
                cursor: pointer;
            }

        .checkmark {
            position: absolute;
            top: 4px;
            left: 8px;
            height: 16px;
            width: 16px;
            background-color: #eee;
            border-radius: 50%;
        }

        .label-container:hover input ~ .checkmark {
            background-color: #ccc;
        }

        .label-container input:checked ~ .checkmark {
            background-color: #2196F3;
        }

        .checkmark:after {
            content: "";
            position: absolute;
            display: none;
        }

        .label-container input:checked ~ .checkmark:after {
            display: block;
        }

        .label-container .checkmark:after {
            top: 4px;
            left: 4px;
            width: 8px;
            height: 8px;
            border-radius: 50%;
            background: white;
        }

        .result-message {
            font-size: 20px;
        }

            .result-message span {
                color: dodgerblue;
            }

        .result-container {
            display: flex;
            padding: 0 15px;
            flex-direction: column;
        }

            .result-container p {
                color: #000000;
                font-weight: normal;
            }

        .result-card {
            padding: 15px;
            margin-bottom: 25px;
            background-color: #ffffff;
            width: 99%;
            border-radius: 10px;
            box-shadow: rgba(0, 0, 0, 0.15) 2px 2px 3px;
        }

        .res-button {
            background-color: Highlight;
            border-radius: 5px;
            color: #ffffff;
            padding: 10px;
            border: none;
            margin-top: 10px;
        }

            .res-button:hover {
                background-color: darkblue;
            }
                .search-box {
            width: 86%;
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
    <div class="page-container row">
        <div class="left-result col-2">
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
              <input type="radio" id="res-cap" value="res-cb" name="radio1">
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
        <div class="center-result col-8 p-0">
            <div class="row" style="padding: 18px 0px 0px 30px" >
                <input id="keyword_result" class="search-box" type="text" />
                <a onclick="Search_Ship()" class="search-button ml-3">Tìm kiếm</a>
            </div>
            <div id="result-message" class="result-message" style="padding: 20px 15px">
                <%--Tìm thấy <span id="result-num">3</span> kết quả phù hợp--%>
                Đang tìm kiếm ...
                <div class="blue-hr"></div>
            </div>
            <div id="List_Result" class="result-container">
            </div>
        </div>
        <div class="right-result col-2" style="border-left: 1px solid #d0d0d0">

        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        var type_search = "res-all";
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }
        $(document).ready(function () {
            Keyword_Search = getParameterByName('keyword');
            if (Keyword_Search == null) {
                history.back();
            }
            else {
                var checkbox = document.getElementsByName("radio1")
                for (var i = 0; i < checkbox.length; i++) {
                    if (checkbox[i].checked === true) {
                        type_search = checkbox[i].value;
                    }
                }
                $('#keyword_result').val(Keyword_Search);
                Result_Search(Keyword_Search);
            }

        });
        $('#keyword_result').keypress(function (event) {
            var keycode = (event.keyCode ? event.keyCode : event.which);
            if (keycode == '13') {
                Search_Ship();
            }
        });
        function Search_Ship() {
            var trimStr = $.trim($('#keyword_result').val());
            if (trimStr == '') {
                alert('Bạn chưa nhập thông tin tìm kiếm!');
            }
            else {
                Result_Search(trimStr);
            }

        }
        $("input[name='radio1']").change(function () {
            var checkbox = document.getElementsByName("radio1")
            for (var i = 0; i < checkbox.length; i++) {
                if (checkbox[i].checked === true) {
                    type_search = checkbox[i].value;
                }
            }
            Result_Search(Keyword_Search);
        })
        function Result_Search(Keyword) {
            if (type_search == "res-all") {
                LinkApi = linkapi + "v2/search?keyword=" + Keyword;
            }
            else if (type_search == "res-cb") {
                LinkApi = linkapi + "v3/searchbycb?keyword=" + Keyword;
            }
            $.ajax({
                type: "GET",
                url: LinkApi,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $("#result-message").html('Đang tìm kiếm ...' + '<div class="blue-hr"></div>');
                    $('#List_Result').html("");
                },
                success: function (data) {
                    if (data == null) {
                        $("#result-message").html('Không tìm thấy kết quả phù hợp' + '<div class="blue-hr"></div>');
                       
                    }
                    else {
                        var tabletext = '';
                        var i = 0;
                        $.each(data, function (key, item) {
                            if (type_search == "res-all") {
                                tabletext += '<div class="result-card"><p style="font-size: 30px; color: #2070cc; font-weight: bold;">Tàu CSB số hiệu: ' + item.TTCOBAN.SOHIEU + '</p><p>- Ký hiệu: ' + item.TTCOBAN.KYHIEU + '</p><p>- Nơi sản xuất: ' + item.TTCOBAN.NOISANXUAT + '</p><p>- Năm hạ thủy: ' + item.TTCOBAN.NAMHATHUY + '</p> <p>- Chức năng: ' + item.TTCOBAN.CHUCNANG + '</p><button class="res-button"  onclick="View_HoSoTau(`' + item.ID + '`)">Xem hồ sơ tàu</button></div>';

                            }
                            else if (type_search == "res-cb") {
                                tabletext += '<div class="result-card"><p style="font-size: 30px; color: #2070cc; font-weight: bold;">Cán bộ: ' + item.CB.FullName + '</p><p>- Năm sinh: ' + item.CB.BirthYear + '</p><p>- Cấp bậc: ' + item.CB.Ranking.Name + '</p><p>- Chức vụ: ' + item.CB.Position.Name + '</p> <p>- Số hiệu tàu: ' + item.TAU.TTCOBAN.SOHIEU + '</p><button class="res-button"  onclick="View_HoSoTau(`' + item.TAU.ID + '`)">Xem hồ sơ tàu</button></div>';

                            }
                            i++;
                        });
                        $("#result-message").html('Tìm thấy ' + '<span id="result-num">' + i + '</span>' + ' kết quả phù hợp' + '<div class="blue-hr"></div>');
                        /*$('#result-num').html(i);*/
                        $('#List_Result').html(tabletext);
                    }

                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.


                },
            });

        }
        function View_HoSoTau(Ship_ID) {

            window.location = baseaddress + "Page_Master/Ship_profile?Ship_ID=" + Ship_ID;
        }
    </script>
</asp:Content>
