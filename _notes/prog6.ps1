Write-Host "ce programme va vous permettre de convertir une note de votre bibliothèque  de notes en PDF en générant la bibliographie qui lui est liée" -ForegroundColor blue
read-host "appuyer sur Entrée pour continuer..."
Write-Host "veuillez sélectionner le répertoire qui contient vos notes" -ForegroundColor Green
Add-Type -AssemblyName System.Windows.Forms
$browser = New-Object System.Windows.Forms.FolderBrowserDialog
$null = $browser.ShowDialog()
$path = $browser.SelectedPath
Set-Location $path
Write-Host "sélectionner le fichier à convertir"
$FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{ 
    InitialDirectory = [Environment]::GetFolderPath('$path') 
    Filter = 'Markdown (*.md)|*.md'
}
$null = $FileBrowser.ShowDialog()
$file = $FileBrowser.SelectedFile
$filename = $file.Basename
Write-Host "voici la liste des styles disponibles" -ForegroundColor Green
Get-ChildItem .\csl\ -name
$stylename = Read-Host "entrer le nom du style"
(Get-content .\$file -Raw).replace("[","").replace("]","") | Set-content mypdf\$file.md
pandoc mypdf\$file.md --bibliography .\biblio\mylibrary.bib --csl .\csl\$stylename --pdf-engine=xelatex --citeproc -f markdown+smart -o mypdf\$filename.pdf
Remove-Item mypdf\$file.md