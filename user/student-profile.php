<?php
session_start();
//error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['sturecmsstuid']==0)) {
  header('location:logout.php');
  } else{
   
  ?>
<!DOCTYPE html>
<html lang="en">
  <head>
   
    <title>Student Management System|| Ver Detalhes do Estudante</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="vendors/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="vendors/select2/select2.min.css">
    <link rel="stylesheet" href="vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="css/style.css" />
    
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
     <?php include_once('includes/header.php');?>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
      <?php include_once('includes/sidebar.php');?>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="page-header">
              <h3 class="page-title"> Ver Detalhes do Estudante </h3>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                  <li class="breadcrumb-item active" aria-current="page"> Ver Detalhes do Estudante</li>
                </ol>
              </nav>
            </div>
            <div class="row">
          
              <div class="col-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    
                    <table border="1" class="table table-bordered mg-b-0">
                      <?php
$sid=$_SESSION['sturecmsstuid'];
$sql="SELECT tblstudent.StudentName,tblstudent.StudentEmail,tblstudent.StudentClass,tblstudent.Gender,tblstudent.DOB,tblstudent.StuID,tblstudent.FatherName,tblstudent.MotherName,tblstudent.ContactNumber,tblstudent.AltenateNumber,tblstudent.Address,tblstudent.UserName,tblstudent.Password,tblstudent.Image,tblstudent.DateofAdmission,tblclass.ClassName,tblclass.Section from tblstudent join tblclass on tblclass.ID=tblstudent.StudentClass where tblstudent.StuID=:sid";
$query = $dbh -> prepare($sql);
$query->bindParam(':sid',$sid,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
 <tr align="center" class="table-warning">
<td colspan="4" style="font-size:20px;color:blue">
 Detalhes do Estudante</td></tr>

    <tr class="table-info">
    <th>Nome</th>
    <td><?php  echo $row->StudentName;?></td>
     <th>E-mail</th>
    <td><?php  echo $row->StudentEmail;?></td>
  </tr>
  <tr class="table-warning">
     <th>Classe</th>
    <td><?php  echo $row->ClassName;?> <?php  echo $row->Section;?></td>
     <th>Gênero</th>
    <td><?php  echo $row->Gender;?></td>
  </tr>
  <tr class="table-danger">
    <th>Data de Nascimento</th>
    <td><?php  echo $row->DOB;?></td>
    <th>Código</th>
    <td><?php  echo $row->StuID;?></td>
  </tr>
  <tr class="table-success">
    <th>Nome do Pai</th>
    <td><?php  echo $row->FatherName;?></td>
    <th>Nome da Mãe</th>
    <td><?php  echo $row->MotherName;?></td>
  </tr>
  <tr class="table-primary">
    <th>Número de Contato</th>
    <td><?php  echo $row->ContactNumber;?></td>
    <th>Número Secundário</th>
    <td><?php  echo $row->AltenateNumber;?></td>
  </tr>
  <tr class="table-progress">
    <th>Endereço</th>
    <td><?php  echo $row->Address;?></td>
    <th>Nome de Usuário</th>
    <td><?php  echo $row->UserName;?></td>
  </tr>
   <tr class="table-info">
    <th>Profile Pics</th>
    <td><img src="../admin/images/<?php echo $row->Image;?>"></td>
    <th>Date of Admission</th>
    <td><?php  echo $row->DateofAdmission;?></td>
  </tr>
  <?php $cnt=$cnt+1;}} ?>
</table>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
         <?php include_once('includes/footer.php');?>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="vendors/select2/select2.min.js"></script>
    <script src="vendors/typeahead.js/typeahead.bundle.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="js/off-canvas.js"></script>
    <script src="js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="js/typeahead.js"></script>
    <script src="js/select2.js"></script>
    <!-- End custom js for this page -->
  </body>
</html><?php }  ?>