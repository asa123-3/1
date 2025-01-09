<?php
require_once $path . '../commons/utils.php';
$id = $_SESSION['login']['role'];
$sql = "select * 
    from role
    where code = '$id'";
$user = getSimpleQuery($sql, true);
?>

<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="<?php echo SITE_URL . $_SESSION['login']['avatar'] ?>" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p><?php echo $_SESSION['login']['fullname']; ?></p>
        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
      </div>
    </div>
    <!-- search form -->
    <!-- /.search form -->
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu" data-widget="tree">
      <li class="header">MAIN NAVIGATION</li>

      <li class="<?php echo ($_SERVER['REQUEST_URI'] == '/pro1013/admin') ? 'active' : ''; ?>">
        <a href="/pro1013/admin">
          <i class="fa fa-dashboard"></i> <span>Dashboard</span>
        </a>
      </li>

      <?php foreach ($user as $row) { ?>
        <li class="<?php echo ($_SERVER['REQUEST_URI'] == $ADMIN_URL . $row['link']) ? 'active' : ''; ?>">
          <a href="<?php echo $ADMIN_URL . $row['link']; ?>">
            <i class="<?= $row['icons']; ?>"></i> <span><?= $row['name']; ?></span>
          </a>
        </li>
      <?php } ?>
    </ul>

  </section>
</aside>