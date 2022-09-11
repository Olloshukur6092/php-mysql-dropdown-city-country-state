<?php
    require "db.php";
    $app = new DB;
        $countryId = $_POST['c_id'];
        $regionId = $_POST['r_id'];
        $query = "SELECT * FROM city where c_country_id = ? and c_region_id = ?";
        $smtp = $app->connect->prepare($query);
        $smtp->execute([$countryId, $regionId]);
        $city = $smtp->fetchAll(PDO::FETCH_OBJ);
        echo json_encode([
            'data' => $city
        ]);
