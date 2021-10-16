<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sua.aspx.cs" Inherits="Bullshit.Sua" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Sửa</h2>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="masv" DataSourceID="SqlDataSource1" DefaultMode="Edit" Width="250px">
                <EditItemTemplate>
                    Mã sinh viên:
                    <asp:Label ID="masvLabel1" runat="server" Text='<%# Eval("masv") %>' />
                    <br />
                    Họ tên:
                    <asp:TextBox ID="hotenTextBox" runat="server" Text='<%# Bind("hoten") %>' />
                    <br />
                    Địa chỉ:
                    <asp:TextBox ID="diachiTextBox" runat="server" Text='<%# Bind("diachi") %>' />
                    <br />
                    Số điện thoại:
                    <asp:TextBox ID="dienthoaiTextBox" runat="server" Text='<%# Bind("dienthoai") %>' />
                    <br />
                    Mã lớp:
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="tenlop" DataValueField="malop" SelectedValue='<%# Bind("malop") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>" SelectCommand="SELECT * FROM [lophoc]"></asp:SqlDataSource>
                    <br />
                    Ảnh:
                    <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    hoten:
                    <asp:TextBox ID="hotenTextBox" runat="server" Text='<%# Bind("hoten") %>' />
                    <br />
                    diachi:
                    <asp:TextBox ID="diachiTextBox" runat="server" Text='<%# Bind("diachi") %>' />
                    <br />
                    dienthoai:
                    <asp:TextBox ID="dienthoaiTextBox" runat="server" Text='<%# Bind("dienthoai") %>' />
                    <br />
                    malop:
                    <asp:TextBox ID="malopTextBox" runat="server" Text='<%# Bind("malop") %>' />
                    <br />
                    anh:
                    <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    masv:
                    <asp:Label ID="masvLabel" runat="server" Text='<%# Eval("masv") %>' />
                    <br />
                    hoten:
                    <asp:Label ID="hotenLabel" runat="server" Text='<%# Bind("hoten") %>' />
                    <br />
                    diachi:
                    <asp:Label ID="diachiLabel" runat="server" Text='<%# Bind("diachi") %>' />
                    <br />
                    dienthoai:
                    <asp:Label ID="dienthoaiLabel" runat="server" Text='<%# Bind("dienthoai") %>' />
                    <br />
                    malop:
                    <asp:Label ID="malopLabel" runat="server" Text='<%# Bind("malop") %>' />
                    <br />
                    anh:
                    <asp:Label ID="anhLabel" runat="server" Text='<%# Bind("anh") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>" DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @masv" InsertCommand="INSERT INTO [sinhvien] ([hoten], [diachi], [dienthoai], [malop], [anh]) VALUES (@hoten, @diachi, @dienthoai, @malop, @anh)" SelectCommand="SELECT * FROM [sinhvien] where [masv] = @masv" UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [dienthoai] = @dienthoai, [malop] = @malop, [anh] = @anh WHERE [masv] = @masv">
                <SelectParameters>
                    <asp:QueryStringParameter Name="masv" Type="Int32" QueryStringField="masv"/>
                </SelectParameters>
                
                <DeleteParameters>
                    <asp:Parameter Name="masv" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="hoten" Type="String" />
                    <asp:Parameter Name="diachi" Type="String" />
                    <asp:Parameter Name="dienthoai" Type="String" />
                    <asp:Parameter Name="malop" Type="Int32" />
                    <asp:Parameter Name="anh" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="hoten" Type="String" />
                    <asp:Parameter Name="diachi" Type="String" />
                    <asp:Parameter Name="dienthoai" Type="String" />
                    <asp:Parameter Name="malop" Type="Int32" />
                    <asp:Parameter Name="anh" Type="String" />
                    <asp:Parameter Name="masv" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <a href="Danhsach.aspx">Danh sach sinh vien</a> 
        </div>
    </form>
</body>
</html>
