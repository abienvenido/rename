#Reemplazar contenido
$AllFiles = Get-ChildItem -File -Recurse -Exclude rename.ps1
Write-Host "Reemplazar contenido en ficheros"

foreach ($file in $AllFiles) {
    Write-Host " Buscar en contenido de fichero:" $file.FullName
    (Get-Content -LiteralPath $file.FullName) |
    ForEach-Object {$_ -replace "SEGUNDO", "SEGUNDO" } |
    Set-Content -LiteralPath $file.FullName
}
