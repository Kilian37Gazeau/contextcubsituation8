#=====================================================#
#Name:exercice1-8.ps1
#Author: Gazeau Kilian, CUB
#DATE:28/02/2023
#
#Version 1.0
#Comments: On souhaite afficher tous les proccessus qui sont en cours d'utilisation ou non et l'enregistrer dans un fichier
#
#
#=====================================================#

$filtre = Read-Host "Quelle processus désirez-vous afficher (R/S)? "
If (($filtre -eq "R") -or ($filtre -eq "r"))
{
$filtre = "running"
}elseif (($filtre -eq "S") -or ($filtre -eq "s")){
$filtre = "stopped"
}

$service = Get-Service | Where-Object {$_.status -like "$filtre"} | Select-Object Status, Name, DisplayName
$service | Out-File C:\git_cub\contextcubsituation8\sauvegarde\services.txt
$service | Export-Csv -Path C:\git_cub\contextcubsituation8\sauvegarde\services.csv -Delimiter ","
