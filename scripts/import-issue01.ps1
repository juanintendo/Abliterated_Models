param(
    [Parameter(Mandatory = $false)]
    [string]$Source = 'C:\Users\colom\Desktop\999 Project\issue 01',

    [Parameter(Mandatory = $false)]
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $Source)) {
    throw "Source folder not found: $Source"
}

$assetRoot = Join-Path $RepoRoot 'public\assets\issue-01'
$contentSource = Join-Path $RepoRoot 'content\issue-01\source'

$dirs = @(
    (Join-Path $assetRoot 'images\incoming'),
    (Join-Path $assetRoot 'video\incoming'),
    (Join-Path $assetRoot 'audio\incoming'),
    (Join-Path $assetRoot 'references\incoming'),
    (Join-Path $assetRoot 'misc\incoming'),
    $contentSource
)

foreach ($dir in $dirs) {
    New-Item -ItemType Directory -Force -Path $dir | Out-Null
}

$imageExt = @('.png', '.jpg', '.jpeg', '.webp', '.gif', '.avif', '.tif', '.tiff', '.svg')
$videoExt = @('.mp4', '.mov', '.m4v', '.webm', '.avi', '.mkv')
$audioExt = @('.mp3', '.wav', '.m4a', '.aac', '.flac', '.ogg')
$textExt  = @('.txt', '.md', '.rtf', '.doc', '.docx', '.pdf')
$designExt = @('.fig', '.sketch', '.xd')

$inventory = @()

Get-ChildItem -LiteralPath $Source -File -Recurse | ForEach-Object {
    $file = $_
    $ext = $file.Extension.ToLowerInvariant()

    if ($imageExt -contains $ext) {
        $destination = Join-Path $assetRoot 'images\incoming'
        $category = 'image'
    }
    elseif ($videoExt -contains $ext) {
        $destination = Join-Path $assetRoot 'video\incoming'
        $category = 'video'
    }
    elseif ($audioExt -contains $ext) {
        $destination = Join-Path $assetRoot 'audio\incoming'
        $category = 'audio'
    }
    elseif ($textExt -contains $ext) {
        $destination = $contentSource
        $category = 'content-source'
    }
    elseif ($designExt -contains $ext) {
        $destination = Join-Path $assetRoot 'references\incoming'
        $category = 'design-reference'
    }
    else {
        $destination = Join-Path $assetRoot 'misc\incoming'
        $category = 'misc'
    }

    $target = Join-Path $destination $file.Name

    if (Test-Path -LiteralPath $target) {
        $base = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
        $target = Join-Path $destination ("{0}-{1}{2}" -f $base, ([guid]::NewGuid().ToString('N').Substring(0,8)), $file.Extension)
    }

    Copy-Item -LiteralPath $file.FullName -Destination $target

    $inventory += [pscustomobject]@{
        Category = $category
        OriginalName = $file.Name
        SourcePath = $file.FullName
        ImportedPath = $target.Substring($RepoRoot.Length).TrimStart('\')
        Bytes = $file.Length
    }
}

$inventoryPath = Join-Path $assetRoot 'asset-inventory.csv'
$inventory | Sort-Object Category, OriginalName | Export-Csv -NoTypeInformation -Encoding UTF8 -Path $inventoryPath

Write-Host ''
Write-Host 'Issue 01 source material imported.' -ForegroundColor Green
Write-Host "Source: $Source"
Write-Host "Repo:   $RepoRoot"
Write-Host "Files:  $($inventory.Count)"
Write-Host "Inventory: $inventoryPath"
Write-Host ''
Write-Host 'Original source files were copied, not moved or deleted.' -ForegroundColor Yellow
Write-Host 'Next: review/rename files in the incoming folders, then commit them.'
