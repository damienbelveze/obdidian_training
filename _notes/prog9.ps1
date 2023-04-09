Write-Host "ce programme va vous permettre de convertir une note de votre bibliothèque  de notes en PDF en générant la bibliographie qui lui est liée" -ForegroundColor blue
read-host "appuyer sur Entrée pour continuer..."
Write-Host "veuillez sélectionner le répertoire qui contient vos notes" -ForegroundColor Green
Add-Type -AssemblyName System.Windows.Forms
$browser = New-Object System.Windows.Forms.FolderBrowserDialog
$null = $browser.ShowDialog()
$path = $browser.SelectedPath
Set-Location $path
$filename = Read-Host "entrer le nom du fichier sans l'extension"
Write-Host "voici la liste des styles disponibles" -ForegroundColor Green
Get-ChildItem .\csl\ -name
$stylename = Read-Host "entrer le nom du style"
(Get-content .\$filename.md -Raw).replace("[","").replace("]","") | Set-content mypdf\$filename.md
pandoc mypdf\$filename.md --bibliography .\biblio\mylibrary.bib --csl .\csl\$stylename --pdf-engine=xelatex --citeproc -f markdown+smart -o mypdf\$filename.pdf
Remove-Item mypdf\$filename.md