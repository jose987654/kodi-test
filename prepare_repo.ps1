# Script to prepare Kodi repository files for GitHub Pages

# Repository URL
$repoUrl = "https://jose987654.github.io/repository.seedr"

# 1. Update repository addon.xml with correct GitHub Pages URLs
$repoAddonXmlPath = "repository.seedr\repository.seedr\addon.xml"
$repoAddonXmlContent = Get-Content $repoAddonXmlPath -Raw
$repoAddonXmlContent = $repoAddonXmlContent -replace "<info compressed=""false"">.*?</info>", "<info compressed=""false"">$repoUrl/addons.xml</info>"
$repoAddonXmlContent = $repoAddonXmlContent -replace "<checksum>.*?</checksum>", "<checksum>$repoUrl/addons.xml.md5</checksum>"
$repoAddonXmlContent = $repoAddonXmlContent -replace "<datadir zip=""true"">.*?</datadir>", "<datadir zip=""true"">$repoUrl/</datadir>"
Set-Content -Path $repoAddonXmlPath -Value $repoAddonXmlContent

# 2. Update addons.xml with correct GitHub Pages URLs 
$addonsXmlPath = "addons.xml"
$addonsXmlContent = Get-Content $addonsXmlPath -Raw
$addonsXmlContent = $addonsXmlContent -replace "<info compressed=""false"">.*?</info>", "<info compressed=""false"">$repoUrl/addons.xml</info>"
$addonsXmlContent = $addonsXmlContent -replace "<checksum>.*?</checksum>", "<checksum>$repoUrl/addons.xml.md5</checksum>"
$addonsXmlContent = $addonsXmlContent -replace "<datadir zip=""true"">.*?</datadir>", "<datadir zip=""true"">$repoUrl/</datadir>"
Set-Content -Path $addonsXmlPath -Value $addonsXmlContent

# 3. Generate MD5 hash for addons.xml
$md5 = Get-FileHash -Algorithm MD5 -Path $addonsXmlPath
Set-Content -Path "addons.xml.md5" -Value $md5.Hash

# 4. Create zip files
# Repository addon zip
$repoZipPath = "repository.seedr\repository.seedr-1.0.0.zip"
if (Test-Path $repoZipPath) {
    Remove-Item $repoZipPath
}
Add-Type -Assembly System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::CreateFromDirectory("repository.seedr\repository.seedr", $repoZipPath)

# 5. Create zip MD5
$repoZipMd5 = Get-FileHash -Algorithm MD5 -Path $repoZipPath
Set-Content -Path "$repoZipPath.md5" -Value $repoZipMd5.Hash

# 6. Plugin addon zip - create MD5 checksum for existing plugin zip
$pluginZipPath = "plugin.video.seedr\plugin.video.seedr-0.5.0.zip"
if (Test-Path "plugin.video.seedr-0.5.0.zip") {
    Copy-Item "plugin.video.seedr-0.5.0.zip" $pluginZipPath -Force
    $pluginZipMd5 = Get-FileHash -Algorithm MD5 -Path $pluginZipPath
    Set-Content -Path "$pluginZipPath.md5" -Value $pluginZipMd5.Hash
}
else {
    Write-Host "Warning: plugin.video.seedr-0.5.0.zip not found. MD5 checksum not created."
}

# 7. Update README.md with correct GitHub Pages URLs
$readmePath = "README.md"
$readmeContent = Get-Content $readmePath -Raw
$readmeContent = $readmeContent -replace "https://raw.githubusercontent.com/jose987654/repository.seedr/main/repository.seedr-1.0.0.zip", "$repoUrl/repository.seedr/repository.seedr-1.0.0.zip"
Set-Content -Path $readmePath -Value $readmeContent

Write-Host "Repository preparation complete!"
Write-Host "Upload the following to your GitHub Pages repository (https://jose987654.github.io/repository.seedr/):"
Write-Host "- addons.xml"
Write-Host "- addons.xml.md5"
Write-Host "- repository.seedr/ folder (with the repository.seedr-1.0.0.zip and .md5 files)"
Write-Host "- plugin.video.seedr/ folder (with the plugin.video.seedr-0.5.0.zip and .md5 files)"
Write-Host "- README.md" 