<?php

require_once 'pdo.php';

if (isset($_GET['id']) && !empty($_GET['id'])) 
{
    $id = intval($_GET['id']);
} else {
    header('Location: index.php');
    exit();
}

$resultat = $dbPDO->prepare("SELECT * FROM manga JOIN auteur ON manga.id = auteur.id_manga 
JOIN personnage ON manga.id = personnage.id_manga 
WHERE manga.id = :id");
$resultat->bindParam(':id', $id, PDO::PARAM_INT);
$resultat->execute();
$mangas = $resultat->fetch(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="fr">
</body>
    <h1><?= $mangas['manga.titre'] ?></h1>
    <p> <?= $mangas['auteur.nom'] ."-". $mangas['manga.annee'] ?></p>
    <br>
    <p><?= $mangas['manga.description'] ?></p>
    <?php foreach ($mangas as $manga) {
        echo "<li>". $manga['personnage.nom'] . " <br>" . "</li>";
    } ?>
</body>








?>