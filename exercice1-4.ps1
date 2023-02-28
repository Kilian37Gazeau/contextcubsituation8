#=====================================================#
#Name:exercice1-4.ps1
#Author: Gazeau Kilian, CUB
#DATE:28/02/2023
#
#Version 1.0
#Comments: Filter les processus avec une demande à l'utilisateur
#
#
#=====================================================#
$filtre = Read-Host "Quelle processus désirez-vous afficher ? "
$process = Get-Process | Where-Object {$_.ProcessName -like "$filtre"}
$process | Format-Table Id, Name, Description
