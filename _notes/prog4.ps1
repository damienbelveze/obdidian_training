Set-Location "D:\Home\dbelveze\OneDrive - Université de Rennes 1\notes\Notes personnelles" -PassThru
$filename = Read-Host "entrer le nom du fichier sans l'extension"
Write-Host "voici la liste des styles disponibles" -ForegroundColor Green
Get-ChildItem .\csl\ -name
$stylename = Read-Host "entrer le nom du style"
(Get-content .\$filename.md -Raw).replace("[","").replace("]","") | Set-content mypdf\$filename.md
pandoc mypdf\$filename.md --bibliography .\biblio\mylibrary.bib --csl .\csl\$stylename --pdf-engine=xelatex --citeproc -f markdown+smart -o mypdf\$filename.pdf
Remove-Item mypdf\$filename.md