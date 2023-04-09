##[Ps1 To Exe]
##
##Kd3HDZOFADWE8uO1
##Nc3NCtDXTlGDjpra7jFL4UnrTn4udMCnnbO0z5Wz79bgtCLWBIoVR1B4lWf1B0Td
##Kd3HFJGZHWLWoLaVvnQnhQ==
##LM/RF4eFHHGZ7/K1
##K8rLFtDXTiW5
##OsHQCZGeTiiZ4tI=
##OcrLFtDXTiW5
##LM/BD5WYTiiZ4tI=
##McvWDJ+OTiiZ4tI=
##OMvOC56PFnzN8u+Vs1Q=
##M9jHFoeYB2Hc8u+Vs1Q=
##PdrWFpmIG2HcofKIo2QX
##OMfRFJyLFzWE8uK1
##KsfMAp/KUzWJ0g==
##OsfOAYaPHGbQvbyVvnQX
##LNzNAIWJGmPcoKHc7Do3uAuO
##LNzNAIWJGnvYv7eVvnQX
##M9zLA5mED3nfu77Q7TV64AuzAgg=
##NcDWAYKED3nfu77Q7TV64AuzAgg=
##OMvRB4KDHmHQvbyVvnQX
##P8HPFJGEFzWE8tI=
##KNzDAJWHD2fS8u+Vgw==
##P8HSHYKDCX3N8u+Vgw==
##LNzLEpGeC3fMu77Ro2k3hQ==
##L97HB5mLAnfMu77Ro2k3hQ==
##P8HPCZWEGmaZ7/K1
##L8/UAdDXTlGDjpra7jFL4UnrTn4udMCnnbO0z5Wz79bhvzXYR54bSkRk2CzkASs=
##Kc/BRM3KXhU=
##
##
##fd6a9f26a06ea3bc99616d4851b372ba
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

$stylename = Read-Host "entrer le nom du style"
(Get-content .\$filename.md -Raw).replace("[","").replace("]","") | Set-content mypdf\$filename.md
pandoc mypdf\$filename.md --bibliography .\biblio\mylibrary.bib --csl .\csl\$stylename --pdf-engine=xelatex --citeproc -f markdown+smart -o mypdf\$filename.pdf
Remove-Item mypdf\$filename.md