 <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="navbar-brand-wrapper d-flex align-items-center">
          <a class="navbar-brand brand-logo" href="Dashboard.php">
            <strong style="color: white;">Future Maker</strong>
          </a>
          <a class="navbar-brand brand-logo-mini" href="Dashboard.php"><img src="images/logo-mini.svg" alt="logo" /></a>
        </div><?php
         $aid= $_SESSION['sturecmsaid'];
$sql="SELECT * from tbladmin where ID=:aid";

$query = $dbh -> prepare($sql);
$query->bindParam(':aid',$aid,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
        <div class="navbar-Dashboar-wrapper d-flex align-items-center flex-grow-1">
          <h5 class="mb-0 font-weight-medium d-none d-lg-flex"><?php  echo htmlentities($row->AdminName);?>, Bem Vindo ao Dashboar!!!</h5>
          <ul class="navbar-nav navbar-nav-right ml-auto">
            <li class="nav-item dropdown d-none d-xl-inline-flex user-dropdown">
              <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                <img class="img-xs rounded-circle ml-2" src="images/fabinho.png" alt="Profile image"> <span class="font-weight-normal"> <?php  echo htmlentities($row->AdminName);?> </span></a>
              <div class="dropdown-Dashboar dropdown-Dashboar-right navbar-dropdown" aria-labelledby="UserDropdown">
                <div class="dropdown-header text-center">
                  <img class="img-md rounded-circle" src="images/fabinho.png" alt="Profile image" height="80" width="80">
                  <p class="mb-1 mt-3"><?php  echo htmlentities($row->AdminName);?></p>
                  <p class="font-weight-light text-muted mb-0"><?php  echo htmlentities($row->Email);?></p>
                </div><?php $cnt=$cnt+1;}} ?>
                <a class="dropdown-item" href="profile.php"><i class="dropdown-item-icon icon-user text-primary"></i> Meu Perfil</a>
                <a class="dropdown-item" href="change-password.php"><i class="dropdown-item-icon icon-energy text-primary"></i> Configurações</a>
                <a class="dropdown-item" href="logout.php"><i class="dropdown-item-icon icon-power text-primary"></i>Sign Out</a>
              </div>
            </li>
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="icon-Dashboar"></span>
          </button>
        </div>
      </nav>