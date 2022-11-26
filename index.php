<?php require_once('conn.php'); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- inculde bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!--  inculde font-awesome   -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- inculde style.css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<?php 
    $i = 0; // set counter to 0
    if($_GET){ // PHP will check if there is any data in the URL
        $search = $_GET['search'];
        $sql = "SELECT * FROM searchs WHERE `title`  LIKE '%$search%'"; // SQL query to search for the search term
        $stmt = $connection->query($sql); // execute the query
        
    }
   
?>
<body>

<form class="form search-bar dropdown show" method="GET">

<div class="input-group form-group">

  <div class="input-group-prepend">
    <label class="input-group-text" for="search1">Search:</label>
  </div>
          
  <input id="search1" type="search" name="search" class="form-control" value="Enter the word you want to search Example; Hello, World  as ...">
  
  <div  class="input-group-append">
  <button type="submit" class="btn btn-outline-primary" id="searchBtn1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"><i title="Submit Search" class="fa fa-search"></i></button>
  </div>


</div>
<?php 

    if($_GET){ ?>
    <div class="dropdown-menu w-100 mt-2" aria-labelledby="searchBtn1">

        <!-- if no data -->
         <?php if($stmt -> rowCount() < 1){ ?>
            <div class="dropdown-item">
                <p class="text-center">No results found</p>
            </div>

            <?php } ?>

        <!-- if data -->
    <ul class="list-group">

        <?php foreach($stmt as $row){ $i++ ?>
        
         <li class="list-group-item"> 
            <?php echo $i . "-" . $row['title']; ?>
        </li>

        <?php } ?>
    </ul>


</div>
    <?php }else{  ?>
        <!-- if empty -->
    <div class="alert alert-danger mt-5" role="alert">
    Enter a Word in the Search Bar!
    </div>

        <?php } ?>
</form>
</div>

<script>
    let searchBtn = document.getElementById('search1');
//  To delete the text in the search section
    searchBtn.addEventListener('click',()=>{
        searchBtn.value = "";

    })
</script>
</body>
</html>