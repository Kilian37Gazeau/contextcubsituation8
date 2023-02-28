#=====================================================#
#Name:exercice1-9.ps1
#Author: Gazeau Kilian, CUB
#DATE:28/02/2023
#
#Version 1.0
#Comments: Importe le fichier csv serice et filtre les ligne contenant le mot system pour les afficher en verts
#
#
#=====================================================#



$ServCSV = Import-CSV -Path "C:\git_cub\contextcubsituation8\sauvegarde\services.csv" -Delimiter "," 
foreach ($Ligne in $ServCSV)
{
    if ($Ligne.Name -like "*system*"){
        Write-Host -ForegroundColor green $Ligne.Name $Ligne.Status
        }
        else
        {
        Write-Host $Ligne.Name
        }
}
   

  