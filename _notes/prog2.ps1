$filename = Read-Host "entrer le nom du fichier sans l'extension"
$stylename = Read-Host "entrer le nom du style"
(Get-content .\$filename.md -Raw).replace("[","").replace("]","") | Set-content mypdf\$filename.md
pandoc mypdf\$filename.md --bibliography .\biblio\mylibrary.bib --csl .\csl\$stylename.csl --pdf-engine=xelatex --citeproc -f markdown+smart -o mypdf\$filename.pdf
Remove-Item mypdf\$filename.md