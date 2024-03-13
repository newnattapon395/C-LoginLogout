<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LoginV2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }
        body{
            background-color:wheat;
            margin: 0 auto;
            width:100%;
            line-height:2rem;
        }


        .auto-style1 {
            width: 122px;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table style="margin:auto; border:5px solid white; border-radius:20px ">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        </td>
                    <td class="auto-style1">
                        <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" /></td>
                </tr>

                <tr>
                    <td></td>
                    <td class="auto-style1">
                        <asp:Label ID="lbErrorMessage" runat="server" Text="Incorrect" ForeColor="red"></asp:Label></td>
                        

                </tr>
            </table>

        </div>
    </form>
</body>
</html>
