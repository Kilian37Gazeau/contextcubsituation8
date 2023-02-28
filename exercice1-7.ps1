#=====================================================#
#Name:exercice1-7.ps1
#Author: Gazeau Kilian, CUB
#DATE:28/02/2023
#
#Version 1.0
#Comments: On souhaite afficher tous les proccessus qui sont en cours d'utilisation
#
#
#=====================================================#


$service = Get-Service | Where-Object {$_.status -like "running"} | Select-Object Name, DisplayName, Status
$service | Export-Csv -Path C:\git_cub\contextcubsituation8\sauvegarde\services.csv -Delimiter ","
#$process | Out-File C:\git_cub\contextcubsituation8\sauvegarde\services.csv
