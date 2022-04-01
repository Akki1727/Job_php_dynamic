
<?php

include "config.php";

$columns = array('id', 'fname', 'lname','designation','address1','address2');
$column = isset($_REQUEST['column']) && in_array($_REQUEST['column'], $columns) ? $_REQUEST['column'] : $columns[0];
$sort_order = isset($_REQUEST['order']) && strtolower($_REQUEST['order']) == 'desc' ? 'DESC' : 'ASC';

$sql = 'SELECT * FROM basic_info ORDER BY ' . $column . ' ' . $sort_order;
echo $sql;
$result = $conn->query($sql);
if ($result) {
  $up_or_down = str_replace(array('ASC', 'DESC'), array('up', 'down'), $sort_order);
  $asc_or_desc = $sort_order == 'ASC' ? 'desc' : 'asc';
  $add_class = ' class="highlight"';

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <style>
    html {
      font-family: Tahoma, Geneva, sans-serif;
      padding: 10px;
    }

    table {
      border-collapse: collapse;
      width: 100%;
    }

    th {
      background-color: #54585d;
      border: 1px solid #54585d;
    }

    th:hover {
      background-color: #64686e;
    }

    th a {
      display: block;
      text-decoration: none;
      padding: 10px;
      color: #ffffff;
      font-weight: bold;
      font-size: 13px;
    }

    th a i {
      margin-left: 5px;
      color: rgba(255, 255, 255, 0.4);
    }

    td {
      padding: 10px;
      color: #636363;
      border: 1px solid #dddfe1;
    }

    tr {
      background-color: #ffffff;
    }

    tr .highlight {
      background-color: #f9fafb;
    }
  </style>
  <title>Document</title>
</head>

<body>
  <table>
    <tr>
      <th><a href="view_copy.php?column=id&order=<?php echo $asc_or_desc; ?>">id<i class="fas fa-sort<?php echo $column == 'id' ? '-' . $up_or_down : ''; ?>"></i></a></th>
      <th><a href="view_copy.php?column=fname&order=<?php echo $asc_or_desc; ?>">fname<i class="fas fa-sort<?php echo $column == 'fname' ? '-' . $up_or_down : ''; ?>"></i></a></th>
      <th><a href="view_copy.php?column=lname&order=<?php echo $asc_or_desc; ?>">lname<i class="fas fa-sort<?php echo $column == 'lname' ? '-' . $up_or_down : ''; ?>"></i></a></th>
      <th><a href="view_copy.php?column=designation&order=<?php echo $asc_or_desc; ?>">designation<i class="fas fa-sort<?php echo $column == 'designation' ? '-' . $up_or_down : ''; ?>"></i></a></th>
      <th><a href="view_copy.php?column=address1&order=<?php echo $asc_or_desc; ?>">address1<i class="fas fa-sort<?php echo $column == 'address1' ? '-' . $up_or_down : ''; ?>"></i></a></th>
      <th><a href="view_copy.php?column=address2&order=<?php echo $asc_or_desc; ?>">address2<i class="fas fa-sort<?php echo $column == 'address2' ? '-' . $up_or_down : ''; ?>"></i></a></th>
    </tr>
    <?php while ($row = $result->fetch_assoc()) : ?>
      <tr>
        <td<?php echo $column == 'id' ? $add_class : ''; ?>><?php echo $row['id']; ?></td>
          <td<?php echo $column == 'fname' ? $add_class : ''; ?>><?php echo $row['fname']; ?></td>
            <td<?php echo $column == 'lname' ? $add_class : ''; ?>><?php echo $row['lname']; ?></td>
            <td<?php echo $column == 'designation' ? $add_class : ''; ?>><?php echo $row['designation']; ?></td>
            <td<?php echo $column == 'address1' ? $add_class : ''; ?>><?php echo $row['address1']; ?></td>
            <td<?php echo $column == 'address2' ? $add_class : ''; ?>><?php echo $row['address2']; ?></td>
      </tr>
    <?php endwhile; ?>
  </table>

</body>

</html>
<?php
	$result->free();
}
?>