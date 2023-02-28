#=====================================================#
#Name:exercice1-3.ps1
#Author: Gazeau Kilian, CUB
#DATE:28/02/2023
#
#Version 1.0
#Comments: Afficher seulement les paramètres Nom, Identifiant, svchost
#
#
#=====================================================#

$process = Get-Process | Where-Object {$_.ProcessName -like "svchost"}
$process | Format-Table Id, Name, Description