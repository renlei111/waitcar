<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="WebApplication2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>车次查询</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="公交车线路" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="公交车线路" HeaderText="公交车线路" ReadOnly="True" SortExpression="公交车线路" />
                <asp:BoundField DataField="途径车站1" HeaderText="途径车站1" SortExpression="途径车站1" />
                <asp:BoundField DataField="2" HeaderText="2" SortExpression="2" />
                <asp:BoundField DataField="3" HeaderText="3" SortExpression="3" />
                <asp:BoundField DataField="4" HeaderText="4" SortExpression="4" />
                <asp:BoundField DataField="5" HeaderText="5" SortExpression="5" />
                <asp:BoundField DataField="6" HeaderText="6" SortExpression="6" />
                <asp:BoundField DataField="7" HeaderText="7" SortExpression="7" />
                <asp:BoundField DataField="8" HeaderText="8" SortExpression="8" />
                <asp:BoundField DataField="9" HeaderText="9" SortExpression="9" />
                <asp:BoundField DataField="10" HeaderText="10" SortExpression="10" />
                <asp:BoundField DataField="11" HeaderText="11" SortExpression="11" />
                <asp:BoundField DataField="12" HeaderText="12" SortExpression="12" />
                <asp:BoundField DataField="13" HeaderText="13" SortExpression="13" />
                <asp:BoundField DataField="14" HeaderText="14" SortExpression="14" />
                <asp:BoundField DataField="15" HeaderText="15" SortExpression="15" />
                <asp:BoundField DataField="16" HeaderText="16" SortExpression="16" />
                <asp:BoundField DataField="17" HeaderText="17" SortExpression="17" />
                <asp:BoundField DataField="18" HeaderText="18" SortExpression="18" />
                <asp:BoundField DataField="19" HeaderText="19" SortExpression="19" />
                <asp:BoundField DataField="20" HeaderText="20" SortExpression="20" />
                <asp:BoundField DataField="21" HeaderText="21" SortExpression="21" />
                <asp:BoundField DataField="22" HeaderText="22" SortExpression="22" />
                <asp:BoundField DataField="23" HeaderText="23" SortExpression="23" />
                <asp:BoundField DataField="24" HeaderText="24" SortExpression="24" />
                <asp:BoundField DataField="25" HeaderText="25" SortExpression="25" />
                <asp:BoundField DataField="26" HeaderText="26" SortExpression="26" />
                <asp:BoundField DataField="27" HeaderText="27" SortExpression="27" />
                <asp:BoundField DataField="28" HeaderText="28" SortExpression="28" />
                <asp:BoundField DataField="29" HeaderText="29" SortExpression="29" />
                <asp:BoundField DataField="30" HeaderText="30" SortExpression="30" />
                <asp:BoundField DataField="31" HeaderText="31" SortExpression="31" />
                <asp:BoundField DataField="32" HeaderText="32" SortExpression="32" />
                <asp:BoundField DataField="33" HeaderText="33" SortExpression="33" />
                <asp:BoundField DataField="34" HeaderText="34" SortExpression="34" />
                <asp:BoundField DataField="35" HeaderText="35" SortExpression="35" />
                <asp:BoundField DataField="36" HeaderText="36" SortExpression="36" />
                <asp:BoundField DataField="37" HeaderText="37" SortExpression="37" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:waitcarConnectionString %>" SelectCommand="SELECT * FROM [car]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label1" runat="server" Text="公交路线查询："></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        公交名：
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="查询" Width="71px" />
        &nbsp;
        <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <asp:Label ID="Label3" runat="server" Text="公交车距离查询："></asp:Label>
        <br />
        <br />
        公交站名：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;

        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="查询" Width="69px" />
&nbsp;
        <asp:Label ID="Label4" runat="server"></asp:Label>
&nbsp;<asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
&nbsp;<iframe src="https://map.baidu.com/search/浙江农林大学(东湖校区)/@13328165.759076073,3515057.0013845893,15.97z?querytype=s&da_src=shareurl&wd=%E6%B5%99%E6%B1%9F%E5%86%9C%E6%9E%97%E5%A4%A7%E5%AD%A6(%E4%B8%9C%E6%B9%96%E6%A0%A1%E5%8C%BA)&c=179&src=0&wd2=%E6%9D%AD%E5%B7%9E%E5%B8%82%E4%B8%B4%E5%AE%89%E5%8C%BA&pn=0&sug=1&l=11&b=(13181599.481387283,3465773.248930636;13350104.985202312,3548161.0310693635)&from=webmap&biz_forward=%7B%22scaler%22:2,%22styles%22:%22pl%22%7D&sug_forward=e7836c09018106d94207c18b&device_ratio=2" style="width: 690px; height: 398px"></iframe>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="注销" />
    </form>
    </body>
</html>
