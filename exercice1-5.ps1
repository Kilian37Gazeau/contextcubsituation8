#=====================================================#
#Name:exercice1-5.ps1
#Author: Gazeau Kilian, CUB
#DATE:28/02/2023
#
#Version 1.0
#Comments: Fonction qui permet de filtrer les processus désirer
#
#
#=====================================================#

Function InfoProcessus ($filtre) {
    Write-Host "Afficher le processus : $filtre  "
    $process = Get-Process | Where-Object {$_.ProcessName -like "*$filtre*"}
    $process | Format-Table Id, Name, Description

}
$filtre = Read-Host "Quelle processus désirez-vous afficher ? "
InfoProcessus($filtre)