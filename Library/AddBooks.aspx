<%@ Page Title="" Language="C#" MasterPageFile="~/Library/Library.master" AutoEventWireup="true" CodeFile="AddBooks.aspx.cs" Inherits="Library_AddBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>Add Books</title>
    <style>
        .col-md-6 {
            display: inline-block;
        }
        .container {
            width: 35%;
            margin: 2px auto;
            background-color:grey;
            padding:5px;
        }
        h3 {
            text-align: center;
        }
        input[type="text" i] {
            padding: 8px 30px;
        }
        input[type="text1" i] {
            padding: 20px 150px;
        }
        .form-control{
            padding: 8px 30px;
        }
        .btn-outline-success {
             width: 149px;
             height: 22px;
             margin-left: 150px;
             margin-top: 8px;
             margin-bottom: 5px;
             background-color:wheat;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="frm" runat="server">
        <div class="container background">
            <div class="row">
                <h3>ADD BOOKS</h3>
                <div class="col-md-6">
                    <label for="inputname">Name of Book</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="fname" placeholder="First name" />--%>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Book Name"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="inputname">Author</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="lname" placeholder="Last name" />--%>
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Author"></asp:TextBox>
                </div>
                </div>
                 <div class="form-group">
                    <label for="inputAddress2">Book Code</label><br />
                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Book Code"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
      <label for="inputState">Publication</label><br />
       <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Publication"></asp:TextBox>
     </div>
    <div class="form-group col-md-6">
      <label for="inputZip">Quantity</label><br />
       <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Quantity"></asp:TextBox>
    </div>
            <div>
            <asp:Button ID="Button1" runat="server" CssClass="btn-outline-success" Text="ADD" />
            </div>
            <div>
              </div>
     
            </div>
            </form>
</asp:Content>

