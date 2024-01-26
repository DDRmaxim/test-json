<?
$key = isset($_REQUEST['key']) ? $_REQUEST['key'] : null;

$json = [];

if ($key == 'get') {
    $mysqli = new mysqli("localhost", "root", "123456", "demo");
    $res = $mysqli->query("SELECT * FROM ROOMS");
    
    while($row = $res->fetch_assoc()) {
        $json[] = [
            'id' => $row['ID_ROOMS'],
            'name' => $row['ROOMS_SHORT'],
            'description' => $row['ROOMS_FULL'],
            'rooms' => $row['ROOMS_COUNT'],
        ];
    }

    $mysqli->close();
}

header('Content-Type: application/json; charset=utf-8');
echo json_encode($json, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);