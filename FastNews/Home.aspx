<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FastNews.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style>
   body {
    border: 2px solid #000;
    border-radius: 10px;
    box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.5);
    max-width: 100%;
    height: auto;
}
   .link-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #007BFF;
            text-decoration: none;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
        }

        .link-button:hover {
            background-color: #0056b3;
        }

        .link-button:active {
            background-color: #004085;
        }
 </style>
</head>
<body >
    <form id="form1" runat="server">
        <div >
            <%--    <img src="Content/Fast News.jpeg" alt="Example Image" class="styled-image" />--%>
            <center> <a href="Home.aspx" class="link-button">Home</a>&nbsp;&nbsp;&nbsp;
                   <a href="About.aspx" class="link-button">Aboutus</a>&nbsp;&nbsp;&nbsp;
                    <a href="Contact.aspx" class="link-button">Contactus</a></center>
               <link href="Articles.aspx"  rel="Articles" runat="server" name="News" />
        </div>
        <div>
            <center>
            <h1 > <a class="one" href="News.aspx" class="link-button"> News</a></h1><br />
             <h1 > <a class="one" href="Articles.aspx" class="link-button">Articles</a>&nbsp;&nbsp;
                 <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
                </h1>
                </center>
        </div>
    </form>
</body>
</html>
