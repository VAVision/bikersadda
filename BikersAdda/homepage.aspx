<%@ Page Language="C#" EnableEventValidation="false"  AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BikersAdda</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="css/heroic-features.css" rel="stylesheet" />
</head>
<!--<body  background="Images/Ktm_oldBg.jpg" style="background-size:cover;background-attachment:fixed;background-position:bottom"> -->

<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a id="a_link1" class="navbar-brand" runat="server" href="#">BikersAdda</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="home.aspx">Logout
            <span class="sr-only">(current)</span>
        </a>
                    </li>
                    <!--<li class="nav-item">
        <a id="a_link"  class="nav-link" href="#" runat="server">My Product</a>
        </li>-->
                </ul>
            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <div class="container">
        <form runat="server">
            <!--<div>
            <div style="float:left;padding-top:10px;padding-right:10px">
            <label class="lead" style="padding-left:10px">My Balance:</label>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <div style="float:right;padding-top:10px;padding-right:10px">
            <asp:Button ID="Button4" class="btn btn-primary btn-lg" runat="server" Text="Add Balance"/>
        </div>
    </div>-->
            <!-- Jumbotron Header -->
            <header class="jumbotron my-4">
                <h1 class="display-3">WELCOME TO Bikers WORLD</h1>
                <p class="lead">Find the <b style="color:blue">new bike</b> for your need, filter by budget, price, and features. Stay updated with upcoming motorcycles, compare bikes in your price range and stay tuned ...</p>
                <!--<asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" Text="Add Product" />-->
            </header>

            <!-- Page Features -->
            <div class="row text-center">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-3 col-md-6 mb-4">
                            <div class="card h-100">
                                <img id="imageview" class="card-img-top" src="Images/<%# Eval(" image ") %>" alt="" style="max-width: 100%; height: 200px;">
                                <div class="card-body">
                                    <asp:HiddenField ID="HiddenField1" Value='<%# Eval("bike_id") %>' runat="server" />
                                    <h4 class="card-title"><%# Eval("bike_name") %></h4>
                                    <p class="card-text">
                                        <%# Eval("colours") %>
                                    </p>
                                    <p class="card-text">
                                        <%# Eval("about") %>
                                    </p>
                                </div>
                                <div class="card-footer">
                                    <div class="row">&nbsp;&nbsp;
                                        <asp:Button ID="Button2" runat="server" class="btn btn-primary alert-success" Text="Show More" OnClick="Button2_Click" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button1" runat="server" class="btn btn-primary alert-danger" Text="Compare" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <!-- /.row -->
        </form>

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; BikersAdda 2020</p>
        </div>
        <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>