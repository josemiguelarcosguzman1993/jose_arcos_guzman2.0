# Ruta de la carpeta en el Escritorio
$sourcePath = "C:\Users\josem\OneDrive\Escritorio"
$logFolder = "$sourcePath\logs"
$bakFolder = "$sourcePath\baks"

# Crear carpetas si no existen
if (-not (Test-Path -Path $logFolder)) {
    New-Item -ItemType Directory -Path $logFolder
}
if (-not (Test-Path -Path $bakFolder)) {
    New-Item -ItemType Directory -Path $bakFolder
}

# Mover archivos .log a la carpeta logs
Get-ChildItem -Path $sourcePath -Filter "*.log" | Move-Item -Destination $logFolder

# Mover archivos .bak a la carpeta baks
Get-ChildItem -Path $sourcePath -Filter "*.bak" | Move-Item -Destination $bakFolder
