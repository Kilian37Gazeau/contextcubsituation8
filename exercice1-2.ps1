#=====================================================#
#Name:exercice1-2.ps1
#Author: Gazeau Kilian, CUB
#DATE:28/02/2023
#
#Version 1.0
#Comments: Affichage de la liste des identifiants et les noms des processus svchost
#
#
#=====================================================#


Get-Process | Where-Object {$_.ProcessName -like "svchost"} | Select-Object id, ProcessName