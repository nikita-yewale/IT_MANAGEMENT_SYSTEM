<%@ Page Title="" Language="C#" MasterPageFile="~/Library/Library.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Library_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>Home</title>
    <style>
        .center {
            display: contents;
            margin-left: 50px;
            margin-right: 50px;
            width: 165px;
            padding:100px;
}
        div {
            display: block;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="img">
    <img src="\Images\libogo.jpg" alt="logo" style="height:266px; width: 600px; margin-left: 400px; margin-top: 160px;"center">
    </div>
</asp:Content>

