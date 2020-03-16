<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

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
                </ul>
            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <div class="container">
        <form runat="server">
            <!-- Jumbotron Header -->
            <header class="jumbotron my-4">
                <asp:Image ID="Image1" runat="server" style="max-width: 100%; max-height: 200px;" />
                <asp:Image ID="Image2" runat="server" style="max-width: 100%; max-height: 200px;" />
                <asp:Image ID="Image3" runat="server" style="max-width: 100%; max-height: 200px;" />
                <br />
                <asp:Label runat="server" id="title" class="display-3"></asp:Label>
                <br />
                <asp:Label runat="server" id="description" class="lead"></asp:Label>
                <br />
            </header>

        </form>

    </div>
    <!-- /.container -->
    <div style="height: 85px"></div>

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