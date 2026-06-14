$Source = "C:\Users\pablo\OneDrive\Documents\project-board.html"
$Destination = Join-Path $PSScriptRoot "index.html"

if (-not (Test-Path -LiteralPath $Source)) {
  throw "Could not find source app: $Source"
}

Copy-Item -LiteralPath $Source -Destination $Destination -Force
Write-Host "Updated $Destination from $Source"
