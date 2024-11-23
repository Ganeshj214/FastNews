<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FastNews.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /* General body settings */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f7f7f7;
}

/* Form Container */
.form-container {
    background-color: #fff;
    padding: 30px;
    width: 500px;
    margin: 0 auto;
    border-radius: 8px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
}

/* Form Heading */
h2 {
    text-align: center;
    color: #333;
    margin-bottom: 30px;
}

/* Form Group (Aligns Label and Textbox) */
.form-group {
    margin-bottom: 20px;
    display: flex;
    align-items:flex-end; /* Align vertically in the center */
    justify-content: space-between; /* Spread out label and textbox */
}

.form-group label {
    width: 120px; /* Fixed width for labels */
    font-weight: bold;
    color: #555;
}

.form-control {
    width: 200px; /* Width for textboxes */
    padding: 10px;
    font-size: 14px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

       
    </style>
</head>
<body>
      <div class="form-container">
          <h2>Create New Account</h2>
    <form id="form1" runat="server">
        <div class="form-group">

           <%-- <asp:Label ID="Label8" runat="server" Text="Create new account"></asp:Label>
            <br />
            <br />--%>
            <div class="form-group">
               
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                  
                </div>
            <br />
            <br />
            <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtLName" runat="server"></asp:TextBox> 
                </div>
            <br />
            <br />
            <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUName" runat="server"></asp:TextBox>
                </div>
            <br />
            <br />
            <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Email ID"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEMail" runat="server"></asp:TextBox>
                </div>
            <br />
            <br />
            <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Mobile"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                </div>
            <br />
            <br />
           <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
               </div>
            <br />
            <br />
            <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="txtconfirmpassword" runat="server"></asp:TextBox>
                </div>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtconfirmpassword" ErrorMessage="Password must be same as you entered earlier." ValueToCompare="txtPassword"></asp:CompareValidator>
            <br />
            <br />
            <div class="form-actions">
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" style="height: 26px" Text="Register" CssClass="style-button" />
                </div>
&nbsp;
            <div class="form-footer">
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#003399" NavigateUrl="LoginForm.aspx">Already have an account?</asp:HyperLink>
                </div>
        </div>
    </form>
          </div>
</body>
</html>
