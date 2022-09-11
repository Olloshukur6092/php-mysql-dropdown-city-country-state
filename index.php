<?php

include "db.php";
$app;
$app = new DB;

$arr = [];
$global_reg_id = 1;
$query = "SELECT * FROM country  where glob_region_id = ?";

$smtp = $app->connect->prepare($query);
$smtp->execute([$global_reg_id]);

$arr = $smtp->fetchAll(PDO::FETCH_ASSOC);

require "lang.php";

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Php Dropdown List</title>
    <link rel="stylesheet" href="./css/bootstrap4.6.1.min.css">
    <link rel="stylesheet" href="./css/app.css">

</head>

<body>
    <header id="header">
        <div class="container">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <select name="" id="" class="select custom-select" onchange="selectLang(this.value)">
                        <option value="rus" <?php echo $_SESSION['lang'] == 'rus' ? 'selected' : '' ?>>RUS</option>
                        <option value="eng" <?php echo $_SESSION['lang'] == 'eng' ? 'selected' : '' ?>>ENG</option>
                        <option value="ger" <?php echo $_SESSION['lang'] == 'ger' ? 'selected' : '' ?>>GER</option>
                    </select>
                </li>
            </ul>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="card shadow card-body text-center">
                    <h3>Europa</h3>
                    <div class="submenu">
                        <ul class="list-group">
                            <?php foreach ($arr as $row) : ?>
                                <li class="list-group-item" onmouseover="getCountryId(<?php echo $row['id'] ?>)">
                                    <?php if ($_SESSION['lang'] == 'rus') : ?>
                                        <p><?php echo $row['c_name_rus'] ?></p>
                                    <?php elseif ($_SESSION['lang'] == 'eng') : ?>
                                        <p><?php echo $row['c_name_eng'] ?></p>
                                    <?php elseif ($_SESSION['lang'] == 'ger') : ?>
                                        <p><?php echo $row['c_name_ger'] ?></p>
                                    <?php else : ?>
                                        <?php echo $row['c_name_rus'] ?>
                                    <?php endif; ?>
                                </li>
                            <?php endforeach; ?>
                            <div class="submenu_region_ukr">
                                <ul class="list-group"></ul>
                            </div>
                            <div class="submenu_region_rus">
                                <ul class="list-group">

                                </ul>
                            </div>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="./js/ajax.min.js"></script>
    <script type="text/javascript">
        let language = '<?php echo $_SESSION['lang'] ?>';

        function selectLang(value) {
            window.location = '?lang=' + value;
        }

        function getCountryId(countryId) {
            $.ajax({
                url: 'region.php',
                type: 'POST',
                data: {
                    countryId: countryId
                },
                success: function(result) {
                    country = JSON.parse(result);
                    let html = "";
                    country.data.forEach((c) => {
                        if (language == 'rus') {
                            html += `
                            <li class="list-group-item" onmouseover="getRegionId(${c.id}, ${c.r_country_id})">
                                <p>${c.r_name_rus}</p>
                            </li>
                            `;
                        } else if (language == 'eng') {
                            html += `
                            <li class="list-group-item" onmouseover="getRegionId(${c.id}, ${c.r_country_id})">
                                <p>${c.r_name_eng}</p>
                            </li>
                            `;
                        } else if (language == 'ger') {
                            html += `
                            <li class="list-group-item" onmouseover="getRegionId(${c.id}, ${c.r_country_id})">
                                <p>${c.r_name_ger}</p>
                            </li>
                            `;
                        } else {
                            html += `
                            <li class="list-group-item" onmouseover="getRegionId(${c.id}, ${c.r_country_id})">
                                <h3>${c.r_name_rus}</h3>
                            </li>
                            `;
                        }
                    })

                    document.querySelector('.submenu_region_ukr ul').innerHTML = html;
                    document.querySelector('.submenu_region_rus ul').innerHTML = "";
                }
            })
        }

        function getRegionId(r_id, c_id) {
            $.ajax({
                url: 'city.php',
                type: 'POST',
                data: {
                    c_id: c_id,
                    r_id: r_id
                },
                success: function(res) {
                    city = JSON.parse(res);
                    let html = "";
                    city.data.forEach((c) => {
                        console.log(c);
                        if (language == 'rus') {
                            html += `
                                <li class="list-group-item">
                                    Name:<h5>${c.c_name_rus}</h5>
                                    Description: <p>${c.c_descr_rus}</p>
                                </li>
                            `;
                        } else if (language == 'eng') {
                            html += `
                                <li class="list-group-item" >
                                    Name: <h5>${c.c_name_eng}</h5>
                                    Description: <p>${c.c_descr_eng}</p>
                                </li>
                            `;
                        } else if (language == 'ger') {
                            html += `
                                <li class="list-group-item" >
                                    Name: <h5>${c.c_name_ger}</h5>
                                    Description: <p>${c.c_descr_ger}</p>
                                </li>
                            `;
                        } else {
                            html += `
                                <li class="list-group-item" >
                                    Name: <h5>${c.c_name_rus}</h5>
                                    Description: <p>${c.c_descr_rus}</p>
                                </li>
                            `;
                        }
                    })

                    document.querySelector('.submenu_region_rus ul').innerHTML = html;

                }
            })
        }
    </script>
</body>

</html>