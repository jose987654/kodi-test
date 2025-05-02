# Test script to verify Kodi repository structure

Write-Host "Checking required files..."
if (Test-Path "addons.xml") {
    Write-Host "addons.xml exists"
} else {
    Write-Host "addons.xml not found"
}

if (Test-Path "addons.xml.md5") {
    Write-Host "addons.xml.md5 exists"
} else {
    Write-Host "addons.xml.md5 not found"
}

if (Test-Path "README.md") {
    Write-Host "README.md exists"
} else {
    Write-Host "README.md not found"
}

if (Test-Path "repository.seedr-1.0.0.zip") {
    Write-Host "repository.seedr-1.0.0.zip exists"
} else {
    Write-Host "repository.seedr-1.0.0.zip not found"
}

if (Test-Path "plugin.video.seedr-0.5.0.zip") {
    Write-Host "plugin.video.seedr-0.5.0.zip exists"
} else {
    Write-Host "plugin.video.seedr-0.5.0.zip not found"
}

Write-Host "Checking directories..."
if (Test-Path "repository.seedr" -PathType Container) {
    Write-Host "repository.seedr directory exists"
} else {
    Write-Host "repository.seedr directory not found"
}

if (Test-Path "plugin.video.seedr" -PathType Container) {
    Write-Host "plugin.video.seedr directory exists"
} else {
    Write-Host "plugin.video.seedr directory not found"
}

Write-Host "Repository structure test complete." 