<html lang="en">
<head>
    <title>Hello page</title>
    <link rel="stylesheet" href="style.css" type="text/css"/>
</head>
<body>
    <h1>Drawer</h1>
    <?php
    include_once 'drawer_engine.php';
    $parameter = $_GET[DrawerEngine::PARAMETER_NAME];

    if (!is_numeric($parameter) || $parameter > 255 || $parameter < 0)
        echo 'По русски сказано ввести до 255 и от 0';
    else new DrawerEngine($parameter);
    ?>
</body>
</html>