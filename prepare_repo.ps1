# Script to prepare Kodi repository files for GitHub

# Repository URL
$repoUrl = "https://jose987654.github.io/repository.seedr"

# 1. Update repository addon.xml with correct GitHub URLs
$repoAddonXmlPath = "repository.seedr\repository.seedr\addon.xml"
$repoAddonXmlContent = Get-Content $repoAddonXmlPath -Raw
$repoAddonXmlContent = $repoAddonXmlContent -replace "https://raw.githubusercontent.com/jose987654/repository.seedr/main/", $repoUrl
Set-Content -Path $repoAddonXmlPath -Value $repoAddonXmlContent

# 2. Update addons.xml with correct GitHub URLs 
$addonsXmlPath = "addons.xml"
$addonsXmlContent = Get-Content $addonsXmlPath -Raw
$addonsXmlContent = $addonsXmlContent -replace "https://raw.githubusercontent.com/jose987654/repository.seedr/main/", $repoUrl
Set-Content -Path $addonsXmlPath -Value $addonsXmlContent

# 3. Generate MD5 hash for addons.xml
$md5 = Get-FileHash -Algorithm MD5 -Path $addonsXmlPath
Set-Content -Path "addons.xml.md5" -Value $md5.Hash

# 4. Create zip files
# Repository addon zip
$repoZipPath = "repository.seedr-1.0.0.zip"
if (Test-Path $repoZipPath) {
    Remove-Item $repoZipPath
}
Add-Type -Assembly System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::CreateFromDirectory("repository.seedr\repository.seedr", $repoZipPath)

# Plugin addon zip - We'll use existing plugin.video.seedr.zip if it exists
$pluginZipPath = "plugin.video.seedr-0.5.0.zip"
if (-not (Test-Path $pluginZipPath)) {
    Write-Host "Plugin zip not found. You'll need to manually create the plugin.video.seedr-0.5.0.zip file."
}

# 5. Update README.md with correct GitHub URLs
$readmePath = "README.md"
$readmeContent = Get-Content $readmePath -Raw
$readmeContent = $readmeContent -replace "https://github.com/jose987654/repository.seedr/raw/main/", $repoUrl
Set-Content -Path $readmePath -Value $readmeContent

Write-Host "Repository preparation complete!"
Write-Host "Upload the following to your GitHub Pages repository (https://jose987654.github.io/repository.seedr/):"
Write-Host "- addons.xml"
Write-Host "- addons.xml.md5"
Write-Host "- repository.seedr/ folder"
Write-Host "- plugin.video.seedr/ folder"
Write-Host "- repository.seedr-1.0.0.zip"
Write-Host "- plugin.video.seedr-0.5.0.zip or plugin.video.seedr.zip"
Write-Host "- README.md" 