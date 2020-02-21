<!---------------------->
<!--Header and Sidebar-->
<!---------------------->
<?php
$title = "Dashboard";
include("core.php");
require_once 'dashboard-connection.php';

// $StudentsQuery = "SELECT * from students";
// $StudentsResult = $conn->query($StudentsQuery);
?>

<!---------------------->
<!--------Content------->
<!---------------------->
<div class="content-body"><!-- Chart -->

<!-- Chart -->
<!-- eCommerce statistic -->
<section id="chartjs-bar-charts">
    <!-- Column Chart -->
    <div class="row">
        <div class="col-12">
            <div class="card">
              <div class="card-header text-center" style="padding-botom:0px;">
                  <h4 class="card-title">Data Table</h4>
              </div>
                <div class="card-content collapse show">
                    <div class="card-body">
                            <div class="height-400">
                        <canvas id="bar-chart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</section>
<!--/ eCommerce statistic -->

<!-- Statistics -->
<div class="row match-height">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header text-center">
                <h4 class="card-title">More Stats</h4>
                <!-- <a class="heading-elements-toggle">
                    <i class="fa fa-ellipsis-v font-medium-3"></i>
                </a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li>
                            <a data-action="reload">
                                <i class="ft-rotate-cw"></i>
                            </a>
                        </li>
                    </ul>
                </div> -->
            </div>
            <div class="card-content">
                <div id="recent-buyers" class="media-list">


                </div>
            </div>
        </div>
    </div>
</div>
<!--/ Statistics -->
        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->


<!---------------------->
<!--------Footer-------->
<!---------------------->
<?php
include("footer.php");
include("javascript.php");
?>
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <script src="theme-assets/vendors/js/charts/chart.min.js" type="text/javascript"></script>
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN CHAMELEON  JS-->
    <script src="theme-assets/js/core/app-menu-lite.js" type="text/javascript"></script>
    <!-- END CHAMELEON  JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <script src="theme-assets/js/scripts/charts/chartjs/bar/column.js" type="text/javascript"></script>
    <script src="theme-assets/js/scripts/charts/chartjs/bar/bar.js" type="text/javascript"></script>
    </body>
</html>
