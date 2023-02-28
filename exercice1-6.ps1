#=====================================================#
#Name:exercice1-6.ps1
#Author: Gazeau Kilian, CUB
#DATE:28/02/2023
#
#Version 1.0
#Comments: Le but est mainteant d'enregistrer ce que l'on récupère dans un fichier
#
#
#=====================================================#

Function InfoProcessus ($filtre) {
    Write-Host "Afficher le processus : $filtre  "
    $process = Get-Process | Where-Object {$_.ProcessName -like "*$filtre*"} | Select-Object Id, Name, Description
    $process | Out-File C:\git_cub\contextcubsituation8\sauvegarde\sauvegarde.txt
    $process | Out-File C:\git_cub\contextcubsituation8\sauvegarde\sauvegarde.csv

}
$filtre = Read-Host "Quelle processus désirez-vous afficher ? "
InfoProcessus($filtre)