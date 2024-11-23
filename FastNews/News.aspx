<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="FastNews.News" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .title{
            text-decoration-color:white;
            background-color:blue;
            text-decoration-color:white;
            border-radius:8px;
            color:white;
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
        .auto-style1 {
            margin-right: 0px;
        }
        .button{
            position:fixed;
            background-position-y:right;
            text-decoration-color:white;
            
        }
        h2{
            background-color:red;
        }
        .styled-button {
            border-radius: 100px;  /* Rounded corners */
    padding: 12px 24px;  /* Space inside the button */
    font-size: 16px;     /* Font size of the text */
    color: white;        /* Text color */
    background-color: #28a745; /* Green background */
    border: solid;        /* No border */
    background-position:right;
    cursor: pointer;     /* Cursor pointer on hover */
    text-align:center;   /* Center the text */
    transition: background-color 0.3s, transform 0.3s; /* Smooth hover effects */
    position: fixed;          /* Fix button on the screen */
    bottom: 20px;             /* Button positioned 20px from the bottom */
    right: 20px;              /* Button positioned 20px from the right */
    z-index: 1000;            /* Make sure it appears above other elements */
   
}

/* Hover Effect */
.styled-button:hover {
    background-color: #218838; /* Darker green on hover */
    transform: scale(1.05);    /* Slightly enlarge the button */
}

/* Active Effect */
.styled-button:active {
    background-color: #1e7e34; /* Even darker green on click */
    transform: scale(1);        /* Reset size after clicking */
}

/* Focus Effect for Accessibility */
.styled-button:focus {
    outline: 3px solid #FFD700; /* Gold outline when focused */
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <center> <a href="Home.aspx" class="link-button">Home</a>&nbsp;&nbsp;&nbsp;
                   <a href="About.aspx" class="link-button">Aboutus</a>&nbsp;&nbsp;&nbsp;
                    <a href="Contact.aspx" class="link-button">Contactus</a></center>
        </div>
        <%--  <div>

            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
        <h3><%# Eval("Title") %></h3>
        <p><%# Eval("Content") %></p>
      <small>Published on: <%# Eval("Createdon", "{0:yyyy-MM-dd HH:mm}") %></small>
        <hr />
    </ItemTemplate>
               
            </asp:Repeater>

        </div>--%>
        <center>
        <asp:DataList ID="DataList1" runat="server" CellPadding="50" CellSpacing="5" CssClass="auto-style1">
              <ItemTemplate>
        <h3 class="title"><%# Eval("Title") %></h3>
        <p class="content"><%# Eval("Content") %></p>
      <small class="date">Published on: <%# Eval("Createdon", "{0:yyyy-MM-dd HH:mm}") %></small>
        <hr />
    </ItemTemplate>
              <SeparatorStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
        </asp:DataList>
     <asp:Button ID="btnPostNews" runat="server" OnClick="Button1_Click" Text="Post News"  CssClass="styled-button"/>
            </center>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     </form>
</body>
</html>
