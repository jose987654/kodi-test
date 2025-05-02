# Script to set up the repository structure for GitHub Pages

# Clear content of a directory if it exists
function Clear-Directory {
    param (
        [string]$path
    )
    
    if (Test-Path $path) {
        Get-ChildItem -Path $path -Recurse | Remove-Item -Force -Recurse
    }
    else {
        New-Item -ItemType Directory -Path $path -Force | Out-Null
    }
}

# Create directory if it doesn't exist
function Ensure-Directory {
    param (
        [string]$path
    )
    
    if (-not (Test-Path $path)) {
        New-Item -ItemType Directory -Path $path -Force | Out-Null
    }
}

# Setup plugin.video.seedr directory
Ensure-Directory "plugin.video.seedr"
Copy-Item "plugin.video.seedr-0.5.0.zip" -Destination "plugin.video.seedr\plugin.video.seedr-0.5.0.zip" -Force

# Generate MD5 for plugin zip
$pluginZipMd5 = Get-FileHash -Algorithm MD5 -Path "plugin.video.seedr\plugin.video.seedr-0.5.0.zip"
Set-Content -Path "plugin.video.seedr\plugin.video.seedr-0.5.0.zip.md5" -Value $pluginZipMd5.Hash

# Setup repository.seedr directory for the artifacts
Ensure-Directory "repository.seedr"

# Prepare repository zip
Compress-Archive -Path "repository.seedr\repository.seedr\*" -DestinationPath "repository.seedr\repository.seedr-1.0.0.zip" -Force

# Generate MD5 for repository zip
$repoZipMd5 = Get-FileHash -Algorithm MD5 -Path "repository.seedr\repository.seedr-1.0.0.zip"
Set-Content -Path "repository.seedr\repository.seedr-1.0.0.zip.md5" -Value $repoZipMd5.Hash

# Generate MD5 for addons.xml
$md5 = Get-FileHash -Algorithm MD5 -Path "addons.xml"
Set-Content -Path "addons.xml.md5" -Value $md5.Hash

# Update README links
$readmePath = "README.md"
$readmeContent = Get-Content $readmePath -Raw
$readmeContent = $readmeContent -replace "https://jose987654.github.io/repository.seedr/repository.seedr-1.0.0.zip", "https://jose987654.github.io/repository.seedr/repository.seedr/repository.seedr-1.0.0.zip"
Set-Content -Path $readmePath -Value $readmeContent

Write-Host "Repository structure setup complete!"
Write-Host "The following files and directories are ready to be uploaded to GitHub Pages:"
Write-Host "- addons.xml"
Write-Host "- addons.xml.md5"
Write-Host "- repository.seedr/ (with repository.seedr-1.0.0.zip and .md5)"
Write-Host "- plugin.video.seedr/ (with plugin.video.seedr-0.5.0.zip and .md5)"
Write-Host "- README.md" 