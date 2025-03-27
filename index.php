<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require_once 'pdo.php';

$resultat = $dbPDO->prepare("SELECT titre, annee FROM manga ORDER BY annee ASC");
$resultat->execute();
$mangas = $resultat->fetchAll(PDO::FETCH_ASSOC);

echo "<h1>Liste des mangas</h1>";
echo "<ul>";
foreach ($mangas as $manga) {
    echo "<li>" . $manga['titre'] . " <br> " . $manga['annee'] . "</li>";
}



?>