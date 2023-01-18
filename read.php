<?php

$host = 'localhost';
$dbname = 'php-pdo-crud-herkansing';
$username = 'root';
$password = '';
try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $sql = 'SELECT Id , NaamAchtbaan,NaamPretpark,Land,Topsenlhied,Hoogte
            FROM Achtbaan';
    $q = $pdo->query($sql);
    $q->setFetchMode(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    die("Could not connect to the database $dbname :" . $e->getMessage());
}
?>
<!DOCTYPE html>
<html>

<head>
    <title>PHP MySQL Query Data Demo</title>
    <style>
        td,
        th {
            padding: 1rem;
        }
        img{
            width: 40px;;
        }

    </style>
</head>

<body>
    <div>
        <h1>Achtbaan</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>NaamAchtbaan</th>
                    <th>NaamPretpark</th>
                    <th>Land</th>
                    <th>Topsenlhied</th>
                    <th>Hoogte</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $q->fetch()) : ?>
                    <tr>
                        <td><?php echo htmlspecialchars($row['NaamAchtbaan']); ?></td>
                        <td><?php echo htmlspecialchars($row['NaamPretpark']); ?></td>
                        <td><?php echo htmlspecialchars($row['Land']); ?></td>
                        <td><?php echo htmlspecialchars($row['Topsenlhied']); ?></td>
                        <td><?php echo htmlspecialchars($row['Hoogte']); ?></td>
                        <td><a href="delete.php?Id=<?php echo $row['Id'] ?>"><img src="deletewk.avif" alt=""></a></td>
                    

                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
</body>
</div>

</html>