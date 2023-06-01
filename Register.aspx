<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebaspIntraMail07092022.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <table>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="Label1" runat="server" Text="Register"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtcpass" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnreg" runat="server" Text="Register" OnClick="btnreg_Click" />
                        </td>
                        <td>
                            <asp:Button ID="txtlogin" runat="server" Text="Login" OnClick="txtlogin_Click" />
                        </td>
                    </tr>
                     <tr>
                        <td colspan="2">
                            <asp:Label ID="lbldisp" runat="server" ForeColor="Red" ></asp:Label>
                        </td>
                    </tr> 

                </table>
            </center>
        </div>
    </form>
</body>
</html>
