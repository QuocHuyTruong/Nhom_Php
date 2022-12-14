<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>CHI TIẾT S&#193;CH</title>

    <!-- Bootstrap Core CSS -->
    <link href="../../assets/admin/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/client/css/font-awesome.min.css" rel="stylesheet" />
    <!-- MetisMenu CSS -->
    <link href="../../assets/admin/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../../assets/admin/dist/css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="../../assets/admin/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet"
        type="text/css">
    <!--fontawsome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">

    <link rel="stylesheet" href="../../Content/customAdmin.css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <div id="wrapper">
        <!-- Navigation -->


        <?php require '../header/header_nav.php' ?>
        <?php 
        require '../../connect_DB.php';
        $id = $_GET['id'];
        $a = "SELECT * FROM `category`  WHERE category.CategoryID = '$id'";
        $resultbookdetail=mysqli_query($conn, $a);
        if(mysqli_num_rows($resultbookdetail)!=0) {
            $rowdetail = mysqli_fetch_array($resultbookdetail);
        }
        ?>
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">

                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->


                <h3>CHI TIẾT THỂ LOẠI</h3>
                <div>
                    <hr />
                    <div class="row" style="font-size: 2rem">

                        <div class=" col-md-4">
                            <dl class="horizontal">
                                <dt>
                                    Mã Thể Loại
                                </dt>
                                <dd>
                                    <?php echo $rowdetail['CategoryID'] ?>
                                </dd>

                                <dt>
                                    Tên Thể Loại
                                </dt>

                                <dd>
                                    <?php echo $rowdetail['CategoryName'] ?>
                                </dd>


                                <dt>
                                    Mô Tả
                                </dt>

                                <dd>
                                    <?php echo $rowdetail['CategoryDescription'] ?>
                                </dd>

                                <dt>
                                    Url
                                </dt>

                                <dd>
                                    <?php echo $rowdetail['Url'] ?>
                                </dd>
                            </dl>
                        </div>
                    </div>

                    <hr />
                    <a href="./indexCategory.php">Trở Về</a>

                </div>

            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="../../assets/admin/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="../../Scripts/jquery.unobtrusive-ajax.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../../assets/admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../../assets/admin/bower_components/metisMenu/dist/metisMenu.min.js"></script>
    <script src="../../assets/admin/js/plugins/ckfinder/ckfinder.js"></script>
    <script src="../../assets/admin/js/plugins/ckeditor/ckeditor.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="../../assets/admin/dist/js/sb-admin-2.js"></script>


</body>

</html>
