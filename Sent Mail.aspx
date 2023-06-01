<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sent Mail.aspx.cs" Inherits="WebaspIntraMail07092022.SendMail" %>

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
            <asp:GridView  runat="server" ID="gvInbox" AutoGenerateColumns="false" >
                <Columns>
                    <asp:BoundField HeaderText="Mail To" DataField="MailTo" />
                    <asp:BoundField HeaderText="Date" DataField="DateofTran" />
                    <asp:TemplateField HeaderText="Subject">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("InboxId","DispMail.aspx?InboxId={0}") %>' Text='<%# Eval("Subjects")%>'></asp:HyperLink>

                        </ItemTemplate>
                      </asp:TemplateField>
                    
                </Columns>
             </asp:GridView>
             <tr>
                <td>
                    <asp:Button ID="btnback" runat="server" Text="Back" OnClick="btnback_Click" />
                </td>
            </tr>

        </div>
    </form>
</body>
</html>
