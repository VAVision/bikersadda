<%@ Page Language="C#" AutoEventWireup="true" CodeFile="comparebike.aspx.cs" Inherits="comparebike" %>

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
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        /* The Modal (background) */
            
        .modal {
            display: none;
            /* Hidden by default */
            position: fixed;
            /* Stay in place */
            z-index: 1;
            /* Sit on top */
            padding-top: 100px;
            /* Location of the box */
            left: 0;
            top: 0;
            width: 100%;
            /* Full width */
            height: 100%;
            /* Full height */
            overflow: auto;
            /* Enable scroll if needed */
            background-color: rgb(0, 0, 0);
            /* Fallback color */
            background-color: rgba(0, 0, 0, 0.4);
            /* Black w/ opacity */
        }
        /* Modal Content */
            
        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }
        /* The Close Button */
            
        .close {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
            
        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }
    </style>

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
            <div class="row">
                <a id="myBtn" align="center">
                    <div class="col-sm-1">
                        <p>
                            <img src="Images/plus.png" style="width:50px;height:50px" />

                        </p>
                    </div>
                </a>
            </div>
            <div class="row">
                <div class="col-sm">
                    <!-- Jumbotron Header -->
                    <header class="jumbotron my-4">
                        <asp:Image ID="Image1" runat="server" style="max-width: 100%; max-height: 200px;" />
                        <br />
                        <asp:Label runat="server" id="title" class="display-3"></asp:Label>
                        <br />
                        <asp:Label runat="server" id="description" class="lead"></asp:Label>
                        <br />
                    </header>

                </div>
                <div class="col-sm">
                    <header class="jumbotron my-4">
                        <asp:Image ID="Image4" runat="server" style="max-width: 100%; max-height: 200px;" Visible="false" />
                        <br />
                        <asp:Label runat="server" id="Label1" class="display-3" Visible="false"></asp:Label>
                        <br />
                        <asp:Label runat="server" id="Label2" class="lead" Visible="false"></asp:Label>
                        <br />
                    </header>
                </div>
                <!-- The Modal -->
                <div id="myModal" class="modal" style="display: block;">

                    <!-- Modal content -->
                    <div class="modal-content">
                        <span class="close">&times;</span>
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="bike_id" OnSelectedIndexChanging="ListView1_SelectedIndexChanging">
                            <LayoutTemplate>
                                <table style="border: solid 2px #336699;" cellspacing="0" cellpadding="3" rules="all">
                                    <tr style="background-color: #336699; color: White;">
                                        <th>Select</th>
                                        <th>Bike ID</th>
                                        <th>Bike Name</th>
                                    </tr>
                                    <tbody>
                                        <asp:PlaceHolder ID="itemPlaceHolder" runat="server" />
                                    </tbody>
                                </table>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="lnkSelect" Text="Select" CommandName="Select" runat="server" />
                                    </td>
                                    <td>
                                        <%# Eval("bike_id")%>
                                    </td>
                                    <td>
                                        <%# Eval("bike_name")%>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <SelectedItemTemplate>
                                <tr style="background-color: #336699; color: White;">
                                    <td>
                                        <asp:LinkButton ID="lnkSelect" Text="Select" CommandName="Select" runat="server" ForeColor="White" />
                                    </td>
                                    <td>
                                        <%# Eval("bike_id")%>
                                    </td>
                                    <td>
                                        <%# Eval("bike_name")%>
                                    </td>
                                </tr>
                            </SelectedItemTemplate>
                        </asp:ListView>

                        <br />
                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                        <!--<p>Some text in the Modal..</p>-->
                    </div>

                </div>
            </div>
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
    <script>
        // Get the modal
        var modal = document.getElementById("myModal");

        // Get the button that opens the modal
        var btn = document.getElementById("myBtn");

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        // When the user clicks the button, open the modal 
        btn.onclick = function() {
            modal.style.display = "block";
        }

        // When the user clicks on <span> (x), close the modal
        span.onclick = function() {
            modal.style.display = "none";
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
</body>

</html>