<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ReturnBooks.aspx.cs" Inherits="ReturnBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Return Books</title>
    <style>
        .col-md-6 {
            display: inline-block;
        }
        .container {
            width: 36%;
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
         .form-control{
            padding: 8px 72px;
        }
        .btn-outline-success {
             width: 149px;
             height: 22px;
             margin-left: 150px;
             margin-top: 8px;
             margin-bottom: 5px;
             background-color:wheat;
        }
        #birthday{
             padding: 8px 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="frm" runat="server">
        <div class="container background">
            <div class="row">
                <h3>ISSUE BOOKS</h3>
                <div class="col-md-6">
                    <label for="inputname">Subject</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="fname" placeholder="First name" />--%>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Subject"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="inputname">Year</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="lname" placeholder="Last name" />--%>
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Year"></asp:TextBox>
                </div>
               <div class="form-group col-md-6">
                 <label for="inputState">Publication</label><br />
                 <select id="inputState" class="form-control">
                 <option selected>Choose...</option>
                 <option>Techmax</option>
                 <option>Vipul's</option>
                 <option>Sheth</option>
                  <option>Himalayan</option>
                 </select>
            </div>
                 <div class="form-group col-md-6">
                     <label for="inputZip">Book Id</label><br />
                     <input type="text" class="form-control" id="inputZip" placeholder="Book Id">
                    </div>
                <div class="col-md-6">
                    <label for="inputname">Student Name</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="fname" placeholder="First name" />--%>
                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Name"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="inputname">Student Id</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="lname" placeholder="Last name" />--%>
                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="ID"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="inputname">Due Date</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="fname" placeholder="First name" />--%>
                    <input type="date" id="birthday" name="birthday">
                </div>
                <div class="col-md-6">
                    <label for="inputname">Return Date</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="lname" placeholder="Last name" />--%>
                   <input type="date" id="birthday" name="birthday">
                </div>
                 <div>
                     <button type="button" class="btn btn-outline-success">Add</button>
                 </div>
                </div>
            </div>
       </form>
</asp:Content>

