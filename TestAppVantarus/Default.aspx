<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TestAppVantarus._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/user/user.css" rel="stylesheet" />
    <h3>page 1</h3>
<hr />


<table class="table table_style">
    <tr style="display:none;">
        <td>
        </td>
        <td>
        </td>
        <td>
        </td>
        <td>
        </td>
        <td>
        </td>
        <td>
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td>
            Title<span class="red">*</span>
        </td>
        <td colspan="3">
            <input id="Title"  name="Title" type="text" class = "form-control title" />

        </td>
        <td>
            Address
        </td>
        <td colspan="2">
           
            <input id="address" name="address" type="text" class = "form-control address" />
        </td>
    </tr>
    <tr>
        <td>
            Type
        </td>
        <td colspan="6">
               <asp:DropDownList id="ColorList" name="ColorList"
                    runat="server">

                  <asp:ListItem Selected="True" Value="-1"> Select One </asp:ListItem>
                  <asp:ListItem Value="Employee"> Employee </asp:ListItem>
                  <asp:ListItem Value="Student"> Student </asp:ListItem>
                  <asp:ListItem Value="Parents"> Parents </asp:ListItem>
                 

               </asp:DropDownList>
           
        </td>
    </tr>
    <tr>
        <td>
            Date<span class="red">*</span>
        </td>
        <td>
             <input id="date" name="date" type="text" class = "form-control date" />
             
        </td>
        <td>
            Time<span class="red">*</span>
        </td>
        <td>
             <input id="time" name="time" type="text" class = "form-control time" />
            
        </td>
        <td>
            Remarks
        </td>
        <td>
             <input id="remarks" name="remarks" type="text" class = "form-control remarks" />
           
        </td>
        <td>
           
            <asp:Button ID="Button1" class="btn btn-default" runat="server" OnClick="Button1_Click" Text="Submit" />
        </td>
    </tr>
</table>
<span class="itemtooltip notApear">
    Search with title or address.
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square" onclick="CloseTooltip()" viewBox="0 0 16 16">
        <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
        <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
    </svg>
</span>
<div class="input-group mb-3">

    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle show-tt" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
        <path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z" />
    </svg>
    <input type="text"  AutoPostBack="true" OnTextChanged="Search_User" runat="server" id="SearchText" name="SearchText" class="form-control Search" />
    <asp:Button ID="Button3" class="btn btn-default" runat="server" Text="Search" />

</div>


     
    <asp:DataGrid ID="DataGrid1" runat="server">  

    </asp:DataGrid>  
   

 <asp:Button ID="Button2" class="btn btn-default" runat="server" OnClick="Button2_Click" Text="Submit" />
    <script src="Scripts/User/user.js"></script>

</asp:Content>

