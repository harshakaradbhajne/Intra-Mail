<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainpage.aspx.cs" Inherits="WebaspIntraMail07092022.Mainpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            |
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Compose.aspx"  >Compose </asp:HyperLink>
            |
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Inbox.aspx">Inbox</asp:HyperLink>
            |
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Sent Mail.aspx">Sent Mail</asp:HyperLink>
            |
            <tr>

            
                <td>
                    <asp:Button ID="btnlogout" runat="server" Text="Logout" OnClick="btnlogout_Click" />
                </td>
           
            </tr>
          
                
            
        </div>
    </form>
</body>
</html>
