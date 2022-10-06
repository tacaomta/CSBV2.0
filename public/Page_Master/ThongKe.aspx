<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="ThongKe.aspx.cs" Inherits="CSB.Page_Master.ThongKe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <div class="container_myChart">
        <canvas id="myChart" style="width: 1600px; height: 700px; margin-left: 50px"></canvas>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/vendor/Chart260.min.js"></script>
    <script>
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
                loadDataList_BieuDoTocDoToiDa(Ship_ID);
            }
        });
        var date = new Date();
        if (Number(date.getMonth()) + 1 < 10) {
            var strDate_ntn = '' + date.getFullYear() + '-' + '0' + (Number(date.getMonth()) + 1) + '-' + date.getDate();
        }
        else {
            var strDate_ntn = '' + date.getFullYear() + '-' + (Number(date.getMonth()) + 1) + '-' + date.getDate();
        }

        var listyear = [];
        var listdata_tocdo = [];
        var list_noidungsc = [];
        var listbackgroundColor_cot = [];
        var name_tau;
        function loadDataList_BieuDoTocDoToiDa(Ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/bieudotocdotoida?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    //$('#loader').removeClass('hidden');
                },
                success: function (data) {
                    if (data == null) {
                        let myChart = document.getElementById('myChart').getContext('2d');
                        // Global Options
                        Chart.defaults.global.defaultFontFamily = 'Lato';
                        Chart.defaults.global.defaultFontSize = 18;
                        Chart.defaults.global.defaultFontColor = '#777';
                        let massPopChart = new Chart(myChart, {
                            type: 'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
                            data: null,
                            options: {
                                tooltips: {
                                    callbacks: {
                                        title: function (tooltipItem, data) {
                                            return 'Năm sửa chữa: ' + tooltipItem[0].xLabel;
                                        },
                                        afterTitle: function (tooltipItem) {
                                            return `Nội dung sửa chữa: ${list_noidungsc[tooltipItem[0].index]}`;
                                        },
                                    }
                                },
                                title: {
                                    display: true,
                                    text: 'CHƯA CÓ DỮ LIỆU CHẤT LƯỢNG SỬA CHỮA CỦA TÀU!: ',
                                    fontSize: 25
                                },
                                legend: {
                                    display: false,
                                    position: 'right',
                                    labels: {
                                        fontColor: '#000'
                                    }
                                },
                                responsive: false,
                                maintainAspectRatio: true,
                                layout: {
                                    padding: {
                                        left: 50,
                                        right: 0,
                                        bottom: 0,
                                        top: 0
                                    }
                                },
                                scales: {
                                    xAxes: [{
                                        display: true,
                                        barPercentage: 0.4,
                                        scaleLabel: {   // To format the scale Lebel
                                            display: true,
                                            labelString: 'Năm sửa chữa',
                                            fontColor: '#000',
                                            fontSize: 16
                                        },
                                        ticks: {
                                            fontColor: "black", // To format the ticks, coming on the axis/lables which we are passing.
                                            fontSize: 16
                                        }
                                    }],
                                    yAxes: [{
                                        display: true,
                                        scaleLabel: {
                                            display: true,
                                            labelString: 'Tốc độ tàu (Hải lý/ giờ)',
                                            fontColor: '#000',
                                            fontSize: 16
                                        },
                                        ticks: {
                                            fontColor: "black",
                                            fontSize: 16,
                                            beginAtZero: true
                                        }
                                    }]
                                },
                            }
                        });
                    }
                    else {
                    
                        var i = 0;

                        $.each(data, function (key, item) {
                            listyear[i] = item.NAM;
                            listdata_tocdo[i] = item.TOCDO;
                            list_noidungsc[i] = item.NOIDUNG_SUACHUA;
                            listbackgroundColor_cot[i] = 'rgba(255, 99, 132, 0.6)';

                            name_tau = item.SHTAU;
                            i++;
                        });
                        console.log(list_noidungsc);
                        let myChart = document.getElementById('myChart').getContext('2d');
                        // Global Options
                        Chart.defaults.global.defaultFontFamily = 'Lato';
                        Chart.defaults.global.defaultFontSize = 18;
                        Chart.defaults.global.defaultFontColor = '#777';
                        let massPopChart = new Chart(myChart, {
                            type: 'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
                            data: {
                                labels: listyear,
                                datasets: [{
                                    label: 'Tốc độ tàu',
                                    data: listdata_tocdo,
                                    //backgroundColor:'green',
                                    backgroundColor: listbackgroundColor_cot,
                                    borderWidth: 1,
                                    borderColor: '#777',
                                    hoverBorderWidth: 3,
                                    hoverBorderColor: '#000'
                                }]
                            },
                            options: {

                                    tooltips: {
                                        callbacks: {

                                            title: function (tooltipItem, data) {
                                                return 'Năm sửa chữa: ' + tooltipItem[0].xLabel;
                                            },
                                            afterTitle: function (tooltipItem) {
                                                return `Nội dung sửa chữa: ${list_noidungsc[tooltipItem[0].index]}`;
                                            },
                                        }
                                    },

                                title: {
                                    display: true,
                                    text: 'Biểu đồ thống kê chất lượng sửa chữa tàu có số hiệu: '+name_tau,
                                    fontSize: 25
                                },
                                legend: {
                                    display: false,
                                    position: 'right',
                                    labels: {
                                        fontColor: '#000'
                                    }
                                },
                                responsive: false,
                                maintainAspectRatio: true,
                                layout: {
                                    padding: {
                                        left: 50,
                                        right: 0,
                                        bottom: 0,
                                        top: 0
                                    }
                                },
                                scales: {
                                    xAxes: [{
                                        display: true,
                                        barPercentage: 0.4,
                                        scaleLabel: {   // To format the scale Lebel
                                            display: true,
                                            labelString: 'Năm sửa chữa',
                                            fontColor: '#000',
                                            fontSize: 16
                                        },
                                        ticks: {
                                            fontColor: "black", // To format the ticks, coming on the axis/lables which we are passing.
                                            fontSize: 16
                                        }
                                    }],
                                    yAxes: [{
                                        display: true,
                                        scaleLabel: {
                                            display: true,
                                            labelString: 'Tốc độ tàu (Hải lý/ giờ)',
                                            fontColor: '#000',
                                            fontSize: 16
                                        },
                                        ticks: {
                                            fontColor: "black",
                                            fontSize: 16,
                                            beginAtZero: true
                                        }
                                    }]
                                },
                            }
                        });
                    }

                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () {
                },
            });

        }



    </script>

</asp:Content>
