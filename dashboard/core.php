<!DOCTYPE html>
<?php
// Initialize the session
session_start();

// if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
//     header("location: admin_login.php");
//     exit;
// }
require_once "dashboard-connection.php";
?>


<html class="loading" lang="en" data-textdirection="ltr">
  <head>

<meta name="robots" content="noindex">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>Sensei - Security Dojo</title>
<!-- <link rel="apple-touch-icon" sizes="180x180" href="icons/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="icons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="icons/favicon-16x16.png">
<link rel="manifest" href="icons/site.webmanifest">
<link rel="mask-icon" href="icons/safari-pinned-tab.svg" color="#25af6e"> -->
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
<meta name="msapplication-TileColor" content="#000000">
<meta name="theme-color" content="#ffffff">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>


    <link href="https://fonts.googleapis.com/css?family=Muli:300,300i,400,400i,600,600i,700,700i%7CComfortaa:300,400,700" rel="stylesheet">
    <link href="https://maxcdn.icons8.com/fonts/line-awesome/1.1/css/line-awesome.min.css" rel="stylesheet">
    <!— BEGIN VENDOR CSS—>
    <link rel="stylesheet" type="text/css" href="theme-assets/css/vendors.css">
    <link rel="stylesheet" type="text/css" href="theme-assets/vendors/css/charts/chartist.css">
    <!— END VENDOR CSS—>
    <!— BEGIN CHAMELEON  CSS—>
    <link rel="stylesheet" type="text/css" href="theme-assets/css/app-lite.css">
    <!— END CHAMELEON  CSS—>
    <!— BEGIN Page Level CSS—>
    <link rel="stylesheet" type="text/css" href="theme-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="theme-assets/css/extra.css">
    <link rel="stylesheet" type="text/css" href="theme-assets/css/core/colors/palette-gradient.css">
    <link rel="stylesheet" type="text/css" href="theme-assets/css/pages/dashboard-ecommerce.css">

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.20/r-2.2.3/sc-2.0.1/datatables.min.css"/>

    <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.20/r-2.2.3/sc-2.0.1/datatables.min.js"></script>


    <!— END Page Level CSS—>
    <!— BEGIN Custom CSS—>
    <!— END Custom CSS—>
    <script>
      function countChar(val) {
        var len = val.value.length;
        if (len > 140) {
          val.value = val.value.substring(0, 140);
        } else {
          $('#charNum').text(len);
        }
      };
      function countCharEditMessage(val) {
        var len = val.value.length;
        if (len > 140) {
          val.value = val.value.substring(0, 140);
        } else {
          $('#charNumEditMessage').text(len);
        }
      };
      function countCharAddMessage(val) {
        var len = val.value.length;
        if (len > 140) {
          val.value = val.value.substring(0, 140);
        } else {
          $('#charNumAddMessage').text(len);
        }
      };

    </script>
    <style>
        body, nav, footer, .nav-item {
  font-family: 'Roboto', sans-serif; !important;
}
        h1, h2, h3, h4, h5, h6, p {
  font-family: 'Roboto', sans-serif; !important;
}
#myInput {
  background-image: url('/css/searchicon.png'); /* Add a search icon to input */
  background-repeat: no-repeat; /* Do not repeat the icon image */
  padding-left: 5px;
  border-style: none none solid;
  border-radius: 0px;
  width: 90%;
  border-width: 2px;
  margin:auto;
  margin-bottom:20px;

}

#myInput:focus{
	border-color: #29AE6E
}

#myUL {
  /* Remove default list styling */
  list-style-type: none;
  padding: 0;
  margin: 0;
}

#myUL li a {
  border: 1px solid #ddd; /* Add a border to all links */
  margin-top: -1px; /* Prevent double borders */
  background-color: #f6f6f6; /* Grey background color */
  padding: 12px; /* Add some padding */
  text-decoration: none; /* Remove default text underline */
  font-size: 18px; /* Increase the font-size */
  color: black; /* Add a black text color */
  display: block; /* Make it into a block element to fill the whole list */
}

#myUL li a:hover:not(.header) {
  background-color: #eee; /* Add a hover effect to all links, except for headers */
}
      </style>
  </head>
  <body class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar" data-open="click" data-menu="vertical-menu" data-col="2-columns">

    <!— fixed-top—>
    <nav class="header-navbar navbar-expand-md navbar navbar-with-menu navbar-without-dd-arrow fixed-top navbar-semi-light " style="background-color:rgb(40,45,56)">
      <div class="navbar-wrapper">
        <div class="navbar-container content">
          <div class="collapse navbar-collapse show" id="navbar-mobile">
            <ul class="nav navbar-nav mr-auto float-left">
              <li class="nav-item d-block d-md-none"><a class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"><i class="ft-menu"></i></a></li>
            <h2 class="my-auto" style="color:white;"><?php echo $title; ?></h2>
            </ul>

            <a id="top-menu-emergency" class="btn btn-danger btn-block btn-upgrade-pro mx-1 hidden" href="emergency.php" style="height:50px; width: 150px; font-size:15px; position: absolute; right: 0px;"><div style="margin: 0; position: absolute; top: 50%; left: 50%; -ms-transform: translate(-50%, -50%); transform: translate(-50%, -50%);"><i class="la la-warning" style="font-size:40px"></i></div></a>

            <ul class="nav navbar-nav float-right hidden" id="top-menu-id">
              <li class="dropdown dropdown-user nav-item"><a class="dropdown-toggle nav-link dropdown-user-link" href="#" data-toggle="dropdown">             <span class="avatar"><img src="icons/ninja.png" alt="avatar"><i></i></span></a>
                <div class="dropdown-menu dropdown-menu-right">
                  <div class="arrow_box_right"></div>
<a class="dropdown-item" href="settings.php"><i class="la la-gear"></i> Settings</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item" href="logout.php"><i class="ft-power" style="overflow: visible"></i> Logout</a>
                  </div>
              </li>
            </ul>
        </div>
          </div></div>
    </nav>

    <!— ////////////////////////////////////////////////////////////////////////////—>


    <div class="main-menu menu-fixed menu-dark menu-accordion  menu-shadow " data-scroll-to-active="true" >
      <div class="navbar-header">
        <ul class="nav navbar-nav flex-row">
            <li class="nav-item mr-auto"><a class="navbar-brand" href="index.php"><img class="brand-logo" alt="Logo Goes Here" src="logo/senseiRed.png"/></a><hr style="border: 1px solid light-grey; margin-top:0px;"></li>
          <li class="nav-item d-md-none mx-auto" style="padding-bottom:0px; padding-top:0px"><a class="nav-link close-navbar" style="margin-bottom:0px; margin-top:0px"><i class="ft-x" style="font-size: 25px; display:inline-block;"><h3 style="display:inline-block; color: white; vertical-align: middle;">Close</h3></i></a></li>
        </ul>
      </div>
      <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
          <li class=" nav-item"><a href="index.php"><i class="ft-home"></i><span class="menu-title" data-i18n="">Dashboard</span></a>
          </li>
			<li class=" nav-item"><a href="campus.php"><i class="la la-bank"></i><span class="menu-title" data-i18n="">Page 1</span></a>
          </li>
          <li class=" nav-item"><a href="building.php"><i class="la la-building"></i><span class="menu-title" data-i18n="">Page 2</span></a>
          </li>
          <li class=" nav-item"><a href="person.php"><i class="la la-user"></i><span class="menu-title" data-i18n="">Page 3</span></a>
          </li>
          <li class=" nav-item"><a href="drills.php"><i class="la la-bell"></i><span class="menu-title" data-i18n="">Page 4</span></a>
          </li>

          <div id="side-menu-id" class="nav navbar-nav flex-row hidden" style="position: fixed; bottom: 20px; width:100%">
            <li class="nav-item mx-auto"><a href="settings.php"><i class="la la la-gear"></i><span class="menu-title" data-i18n="">Settings</span></a>
            </li>
            <li class="nav-item mx-auto"><a href="logout.php"><i class="ft-power" style="overflow: visible"></i><span class="menu-title" data-i18n="">Logout</span></a>
            </li>
        </div>

        </ul>
      </div>


      <div class="navigation-background"></div>
    </div>

    <div class="app-content content">
      <div class="content-wrapper">
<br><br>
