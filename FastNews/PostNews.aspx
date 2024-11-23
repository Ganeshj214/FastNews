<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostNews.aspx.cs" Inherits="FastNews.PostNews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label4" runat="server" Text="Post News"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:TextBox runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Title:"></asp:Label>
            <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Content:"></asp:Label>
            <asp:TextBox ID="txtContent" runat="server" Rows="10" TextMode="MultiLine"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnPost" runat="server" OnClick="btnPost_Click" Text="Post" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back to Home" />
        </div>
    </form>
</body>
</html>
