
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>La sonora de Martin</title>
  <link rel="stylesheet" href="style.css">
</head>
<style>
  *{
    margin:0;
    padding: 0;
    box-sizing: border-box;
  }
  section{
    width: 100%;
    min-height: 100vh;
    height: auto;
    text-align:center;
    display: flex;
    flex-direction:column;

  }
  .containerConcerts{

    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction:column;
  }
  .containerConcerts li{
    border:2px black solid;
    list-style: none;
  }
</style>
<body>
  <div class="allBlack">
    <ul>
      <li><a href="">Inicio</a></li>
      <li><a href="">Nosotros</a></li>
    </ul>
  </div>

  <section>
  </section>
  <section>
    <div class="container">
      <?php
        if(isset($_POST['search']))
        {
          $valueToSearh = $_POST['valueToSearh']; 
          $query = "SELECT * FROM conciertos WHERE titulo LIKE '%".$valueToSearh."%' OR descripcion LIKE '%".$valueToSearh."%'";
          $result = filterRecord($query);
        }
        else
        {
          $query = "SELECT *FROM conciertos";
          $result = filterRecord($query);
        }
        
        function filterRecord($query)
        {
          include("admin\config.php");
          $filter_result = mysqli_query($mysqli, $query);
          return $filter_result;
        }
      ?>
      <form action="" method="POST">
        <input type="search" name="valueToSearh" placeholder="Búsqueda">
        <button type="submit" class="signupbtn" name="search" >Buscar</button>
      </form>
      <div>
        <?php
        echo "<ul class='containerConcerts'>";
        while($row = mysqli_fetch_array($result))
        {
          echo "<li>";
            echo "<div class=''>";
              echo "<h2>" . $row['titulo'] . "</h2>";
            echo "</div>";
            echo "<div class=''>";
              echo "<p>" . $row['fechayHs'] . "</p>";
            echo "</div>";
            echo "<div class=''>";
              echo "<p href='#'>" . $row['descripcion'] . "</p>";
            echo "</div>";
          echo "</li>";
        }
        echo "</ul>";
        ?>
    </div>
  </section>
  <section>
  </section>
  
</body>
</html>