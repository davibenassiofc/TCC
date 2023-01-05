<nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
                <div class="profile-image">
                  <img class="img-xs rounded-circle" src="images/fabinho.png" alt="profile image">
                  <div class="dot-indicator bg-success"></div>
                </div>
                <div class="text-wrapper">
                  <?php
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
                  <p class="profile-name"><?php  echo htmlentities($row->AdminName);?></p>
                  <p class="designation"><?php  echo htmlentities($row->Email);?></p><?php $cnt=$cnt+1;}} ?>
                </div>
               
              </a>
            </li>
            <li class="nav-item nav-category">
              <span class="nav-link">Dashboar</span>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Dashboard.php">
                <span class="Dashboar-title">Dashboard</span>
                <i class="icon-screen-desktop Dashboar-icon"></i>
              </a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <span class="Dashboar-title">Classes</span>
                <i class="icon-layers Dashboar-icon"></i>
              </a>
              <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-Dashboar">
                  <li class="nav-item"> <a class="nav-link" href="add-class.php">Add Classes</a></li>
                  <li class="nav-item"> <a class="nav-link" href="manage-class.php">Administrar Classes</a></li>
                </ul>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-basic1" aria-expanded="false" aria-controls="ui-basic1">
                <span class="Dashboar-title">Estudantes</span>
                <i class="icon-people Dashboar-icon"></i>
              </a>
              <div class="collapse" id="ui-basic1">
                <ul class="nav flex-column sub-Dashboar">
                  <li class="nav-item"> <a class="nav-link" href="add-students.php">Add Estudantes</a></li>
                  <li class="nav-item"> <a class="nav-link" href="manage-students.php">Administrar Estudantes</a></li>
                </ul>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                <span class="Dashboar-title">Avisos</span>
                <i class="icon-doc Dashboar-icon"></i>
              </a>
              <div class="collapse" id="auth">
                <ul class="nav flex-column sub-Dashboar">
                  <li class="nav-item"> <a class="nav-link" href="add-notice.php"> Add Avisos </a></li>
                  <li class="nav-item"> <a class="nav-link" href="manage-notice.php"> Administrar Avisos </a></li>
                </ul>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#auth1" aria-expanded="false" aria-controls="auth">
                <span class="Dashboar-title">Notícias Públicos</span>
                <i class="icon-doc Dashboar-icon"></i>
              </a>
              <div class="collapse" id="auth1">
                <ul class="nav flex-column sub-Dashboar">
                  <li class="nav-item"> <a class="nav-link" href="add-public-notice.php"> Add Avisos Públicos </a></li>
                  <li class="nav-item"> <a class="nav-link" href="manage-public-notice.php"> Administrar Avisos Públicos </a></li>
                </ul>
              </div>
              <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#auth2" aria-expanded="false" aria-controls="auth">
                <span class="Dashboar-title">Pages</span>
                <i class="icon-doc Dashboar-icon"></i>
              </a>
              <div class="collapse" id="auth2">
                <ul class="nav flex-column sub-Dashboar">
                  <li class="nav-item"> <a class="nav-link" href="about-us.php"> Sobre Nós</a></li>
                  <li class="nav-item"> <a class="nav-link" href="contact-us.php"> Contatos </a></li>
                </ul>
              </div>
            </li>
              <li class="nav-item">
              <a class="nav-link" href="between-dates-reports.php">
                <span class="Dashboar-title">Relatórios</span>
                <i class="icon-notebook Dashboar-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="search.php">
                <span class="Dashboar-title">Procurar</span>
                <i class="icon-magnifier Dashboar-icon"></i>
              </a>
            </li>
            </li>
          </ul>
        </nav>