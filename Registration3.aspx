<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration3.aspx.cs" Inherits="Registria3.Registration3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 33%;
            height: 193px;
        }
        table
        {
            background-color:antiquewhite;
        }
        body
        {
            background-color:aquamarine;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table  class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblFirstname" runat="server" Text="Firstname"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="please enter firstname" ControlToValidate="txtFirstname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLastname" runat="server" Text="Lastname"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" ControlToValidate="txtLastname" ErrorMessage="please enter lastname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtEmail"  runat="server" ErrorMessage="please enter valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtEmail" runat="server" ErrorMessage="please enter Email"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblpassword" runat="server" Text="password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" runat="server" ControlToValidate="txtpassword" ErrorMessage="please enter password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblconfirmpassword" runat="server" Text="confirmpassword"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtconfirmpassword" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red"  ControlToValidate="txtconfirmpassword" ErrorMessage="please enter confirmpassword"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtconfirmpassword" ControlToCompare="txtpassword" ForeColor="Red" ErrorMessage="please enter password and confirmpassword should match"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblmobilenumber" runat="server" Text="mobilenumber" ></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtmobilenumber" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" runat="server" ControlToValidate="txtmobilenumber" ErrorMessage="please enter mobile number"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click" />
                        <asp:Button ID="btnupdate" runat="server" Text="update" OnClick="btnupdate_Click" />
                        <asp:Button ID="btndelete" runat="server" Text="delete" OnClick="btndelete_Click" />
                    </td>
                </tr>
            </table>
           <table>
               <tr>
                   <td>
                       <asp:GridView ID="grdData" runat="server" ></asp:GridView>
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                   </td>
               </tr>
           </table>

        </div>
    </form>
</body>
</html>
