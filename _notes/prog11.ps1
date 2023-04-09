Write-Host "ce programme va vous permettre de convertir une note de votre bibliothèque  de notes en PDF en générant la bibliographie qui lui est liée" -ForegroundColor blue
read-host "appuyer sur Entrée pour continuer..."
Write-Host "veuillez sélectionner le répertoire qui contient vos notes" -ForegroundColor Green
Add-Type -AssemblyName System.Windows.Forms
$browser = New-Object System.Windows.Forms.FolderBrowserDialog
$null = $browser.ShowDialog()
$path = $browser.SelectedPath
Set-Location $path
If(!(test-path $path\mypdf))
{
      New-Item -ItemType Directory -Force -Path $path\mypdf
}
$filename = Read-Host "entrer le nom du fichier sans l'extension"

If(!(test-path $path\csl))
{
      New-Item -ItemType Directory -Force -Path $path\csl
Invoke-WebRequest -Uri "https://www.zotero.org/styles/vancouver" -OutFile $path\csl\vancouver.csl
Invoke-WebRequest -Uri "https://www.zotero.org/styles/ieee" -OutFile $path\csl\ieee.csl
Invoke-WebRequest -Uri "https://www.zotero.org/styles/nature" -OutFile $path\csl\nature.csl

      Write-Host "voici la liste des styles disponibles" -ForegroundColor Green
      Get-ChildItem .\csl\ -name
}
else
{
Write-Host "voici la liste des styles disponibles" -ForegroundColor Green
Get-ChildItem .\csl\ -name
}

$question = (Read-Host "Voulez-vous charger un autre fichier de style (o/n) ?")

If ($question -eq 'o') {

    Add-Type -AssemblyName System.Windows.Forms
    $FileBrowser = New-Object System.Windows.Forms.OpenFileDialog
    $null = $FileBrowser.ShowDialog() |  Out-Null
    $FileBrowser.FileName

}
    $Path2 = Get-FileName
     
    $stylename = Read-Host "entrer le nom du style"


Else 
{
    $stylename = Read-Host "entrer le nom du style"
}

(Get-content .\$filename.md -Raw).replace("[","").replace("]","") | Set-content mypdf\$filename.md
pandoc mypdf\$filename.md --bibliography .\biblio\mylibrary.bib --csl .\csl\$stylename --pdf-engine=xelatex --citeproc -f markdown+smart -o mypdf\$filename.pdf
Remove-Item mypdf\$filename.md