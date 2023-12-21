$TargetDir = "C:\servers\game\csgo" # Update with your directory path
$GameInfoFile = Join-Path $TargetDir "gameinfo.gi"
$NewEntry = "            Game    csgo/addons/metamod"

if (-Not (Test-Path $GameInfoFile)) {
    Write-Host "Error: $GameInfoFile does not exist in the specified directory."
    exit
}

$FileContent = Get-Content $GameInfoFile

if ($FileContent -contains $NewEntry) {
    Write-Host "The entry '$NewEntry' already exists in $GameInfoFile. No changes were made."
} else {
    $Pattern = "Game_LowViolence"
    $Modified = $false
    $NewContent = @()

    foreach ($line in $FileContent) {
        if ($line -match $Pattern -and -not $Modified) {
            $NewContent += $line
            $NewContent += $NewEntry
            $Modified = $true
        } else {
            $NewContent += $line
        }
    }

    $NewContent | Set-Content $GameInfoFile
    Write-Host "The file $GameInfoFile has been modified successfully. '$NewEntry' has been added."
}