<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_user.aspx.cs" Inherits="CSB.Page_Master.Manage_user" %>
<asp:Content ID="Manage_User" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="section-header">
        <div class="container">
            
            <div class="row" style="margin-top: 0">

                <div class="col-12">
                    <table id="example2" class="table table-bordered table-striped table-md" style="width:100%">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Họ tên</th>
                                <th>Tên DN</th>
                                <th>Mật khẩu</th>
                                <th>Quyền</th>
                                <th>Cập nhật gần đây</th>
                                <th>Khóa</th>
                                <th>Tác vụ</th>
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
                                <td>
                                    <a href="#"> <i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Garrett Winters</td>
                                <td>Accountant</td>
                                <td>Tokyo</td>
                                <td>63</td>
                                <td>2011/07/25</td>
                                <td>$170,750</td>
                                <td>
                                    <a href="#"> <i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Ashton Cox</td>
                                <td>Junior Technical Author</td>
                                <td>San Francisco</td>
                                <td>66</td>
                                <td>2009/01/12</td>
                                <td>$86,000</td>
                                <td>
                                    <a href="#"> <i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Cedric Kelly</td>
                                <td>Senior Javascript Developer</td>
                                <td>Edinburgh</td>
                                <td>22</td>
                                <td>2012/03/29</td>
                                <td>$433,060</td>
                                <td>
                                    <a href="#"> <i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>Airi Satou</td>
                                <td>Accountant</td>
                                <td>Tokyo</td>
                                <td>33</td>
                                <td>2008/11/28</td>
                                <td>$162,700</td>
                                <td>
                                    <a href="#"> <i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>Brielle Williamson</td>
                                <td>Integration Specialist</td>
                                <td>New York</td>
                                <td>61</td>
                                <td>2012/12/02</td>
                                <td>$372,000</td>
                                <td>
                                    <a href="#"> <i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>Herrod Chandler</td>
                                <td>Sales Assistant</td>
                                <td>San Francisco</td>
                                <td>59</td>
                                <td>2012/08/06</td>
                                <td>$137,500</td>
                                <td>
                                    <a href="#"> <i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>Rhona Davidson</td>
                                <td>Integration Specialist</td>
                                <td>Tokyo</td>
                                <td>55</td>
                                <td>2010/10/14</td>
                                <td>$327,900</td>
                                <td>
                                    <a href="#"> <i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>Colleen Hurst</td>
                                <td>Javascript Developer</td>
                                <td>San Francisco</td>
                                <td>39</td>
                                <td>2009/09/15</td>
                                <td>$205,500</td>
                                <td>
                                    <a href="#"> <i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>Sonya Frost</td>
                                <td>Software Engineer</td>
                                <td>Edinburgh</td>
                                <td>23</td>
                                <td>2008/12/13</td>
                                <td>$103,600</td>
                                <td>
                                    <a href="#"> <i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>11</td>
                                <td>Jena Gaines</td>
                                <td>Office Manager</td>
                                <td>London</td>
                                <td>30</td>
                                <td>2008/12/19</td>
                                <td>$90,560</td>
                                <td>
                                    <a href="#"> <i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>12</td>
                                <td>Quinn Flynn</td>
                                <td>Support Lead</td>
                                <td>Edinburgh</td>
                                <td>22</td>
                                <td>2013/03/03</td>
                                <td>$342,000</td>
                                <td>
                                    <a href="#"> <i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>13</td>
                                <td>Charde Marshall</td>
                                <td>Regional Director</td>
                                <td>San Francisco</td>
                                <td>36</td>
                                <td>2008/10/16</td>
                                <td>$470,600</td>
                                <td>
                                    <a href="#"> <i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>14</td>
                                <td>Haley Kennedy</td>
                                <td>Senior Marketing Designer</td>
                                <td>London</td>
                                <td>43</td>
                                <td>2012/12/18</td>
                                <td>$313,500</td>
                                <td>
                                    <a href="#"> <i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>15</td>
                                <td>Tatyana Fitzpatrick</td>
                                <td>Regional Director</td>
                                <td>London</td>
                                <td>19</td>
                                <td>2010/03/17</td>
                                <td>$385,750</td>
                                <td>
                                    <a href="#"> <i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                    
                                </td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

