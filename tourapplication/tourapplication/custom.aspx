﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="custom.aspx.cs" Inherits="tourapplication.custom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Plan your tour</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 334px;
        }
    </style>
</head>
<body>
    
        <%--<div class="navbar navbar-default" role="navigation">
              <div class="navbar-header">
                  <a href="#" class="navbar-brand">Make my Tour</a>
              </div>
              <div class="navbar-collapse collapse">
                  <ul class="nav navbar-nav">
                      <li><a href="index.htm">Home</a></li>
                      <li><a href="topics.htm">Best Tours</a></li>
                      <li><a href="guidelines.htm">Submission Guidelines</a></li>
                      <li><a href="aboutus.htm">About Us</a></li>
                      <li><a href="#">Support</a></li>
                  </ul>
                  <ul class="nav navbar-nav navbar-right">
                      <li class="active"><a href="#">Login</a></li>
                      <li><a href="register.aspx">Register</a></li>
                  </ul>
              </div> 
          </div>--%>

    <div class="navbar navbar-default" role="navigation" runat="server" id="divlogin">
              <div class="navbar-header">
                  <a href="#" class="navbar-brand">Make my Tour</a>
              </div>
              <div class="navbar-collapse collapse">
                  <ul class="nav navbar-nav">
                      <li><a href="index.htm">Home</a></li>
                      <li><a href="topics.htm">Best Tours</a></li>
                      <li><a href="guidelines.htm">Submission Guidelines</a></li>
                      <li><a href="aboutus.htm">About Us</a></li>
                      <li><a href="#">Support</a></li>
                  </ul>
                  <ul class="nav navbar-nav navbar-right" runat="server" id="ullogin">
                      <li runat="server" id="liLogin"><a href="login.aspx" runat="server" id="aLogin">Login</a></li>
                      <li runat="server" id="liRegister"><a href="register.aspx">Register</a></li>
                  </ul>
              </div> 
     </div>
    <div class="jumbotron">
        <h1 style="font-family:'Segoe WP SemiLight';color:#0101DF;">Customize your holiday</h1><br />
        <div class="container">
            <form id="form1" runat="server" class="form-inline">
                <div style="text-align:center">
                <table class="table table-bordered table-responsive">
                    <tr>
                        <td class="auto-style1">
                            <asp:Label runat="server" Text="Location"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddCountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddCountry_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label3" runat="server" Text="Visiting points"></asp:Label>
                        </td>
                        <td>
                            <asp:ListBox ID="lbVisitingPoints" runat="server" SelectionMode="Multiple"></asp:ListBox>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label7" runat="server" Text="Transport"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddTransport" runat="server" AutoPostBack="True">
                                <asp:ListItem Selected="True" Value="0">Select an item</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label5" runat="server" Text="Duration"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddDays" runat="server" AutoPostBack="True">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="Label9" runat="server" Text="days"></asp:Label>
                        </td>
                    </tr>

                    

                    <tr>
                        <td class="auto-style1">
                            <asp:LinkButton ID="lbBack" runat="server">Back</asp:LinkButton>
                        </td>
                        <td>
                            <asp:Button CssClass="btn btn-primary" ID="btnEstimate" runat="server" Text="Get Estimate" />
                        </td>
                    </tr>

                </table>
                </div>
            </form>

            
            

        </div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <!-- slider -->
    <script type='text/javascript' src='scripts/jquery.min.js'></script>
    <!--[if !IE]><!--><script type='text/javascript' src='scripts/jquery.mobile-1.0rc2.customized.min.js'></script><!--<![endif]-->
    <script type='text/javascript' src='scripts/jquery.easing.1.3.js'></script> 
    <script type='text/javascript' src='scripts/jquery.hoverIntent.minified.js'></script> 
    <script type='text/javascript' src='scripts/diapo.js'></script> 
    <script>
        $(function () {
            $('.pix_diapo').diapo();
        });
    </script>
</body>
</html>
