# Installing Seedr Add-on Directly from GitHub URL

This guide will walk you through adding the GitHub repository as a source in Kodi and installing the Seedr add-on directly.

## Method 1: Add GitHub as a File Source

1. Open Kodi
2. Go to Settings (gear icon)
3. Select "File manager"
4. Select "Add source"
5. Click on "<None>" and enter this URL:
   ```
   https://raw.githubusercontent.com/jose987654/repository.seedr/main/
   ```
6. Enter a name for the source (e.g., "Seedr Repo") in the box below
7. Click "OK"
8. Go back to Kodi home screen
9. Go to "Add-ons"
10. Click the box icon (Add-on browser) at the top left
11. Select "Install from zip file"
12. Select the source you just added ("Seedr Repo")
13. Select "repository.seedr-1.0.0.zip"
14. Wait for the "Seedr Kodi Repository add-on installed" notification
15. Select "Install from repository"
16. Select "Seedr Kodi Repository"
17. Select "Video add-ons"
18. Select "Seedr Torrent Cloud"
19. Click "Install"

## Method 2: Direct ZIP File Installation

If you're having trouble with the above method, you can install directly from the ZIP file:

1. Open a web browser on your computer or device
2. Go to this URL:
   ```
   https://raw.githubusercontent.com/jose987654/repository.seedr/main/repository.seedr-1.0.0.zip
   ```
3. Download the ZIP file
4. In Kodi, go to "Add-ons"
5. Click the box icon (Add-on browser) at the top left
6. Select "Install from zip file"
7. Navigate to where you downloaded the ZIP file
8. Select "repository.seedr-1.0.0.zip"
9. Wait for the "Repository installed" notification
10. Select "Install from repository"
11. Select "Seedr Kodi Repository"
12. Select "Video add-ons"
13. Select "Seedr Torrent Cloud"
14. Click "Install"

## Method 3: Direct Plugin Installation (Without Repository)

If you only want the plugin without the repository (no automatic updates):

1. Download the plugin ZIP file directly:
   ```
   https://raw.githubusercontent.com/jose987654/repository.seedr/main/plugin.video.seedr-0.5.0.zip
   ```
2. In Kodi, go to "Add-ons"
3. Click the box icon (Add-on browser) at the top left
4. Select "Install from zip file"
5. Navigate to where you downloaded the ZIP file
6. Select "plugin.video.seedr-0.5.0.zip"
7. Wait for the "Seedr Torrent Cloud add-on installed" notification

## Troubleshooting

- Make sure "Unknown sources" is enabled in Settings > System > Add-ons
- If you get a "Failed to install a dependency" error, go to Settings > System > Add-ons > Updates and set to "Install updates automatically"
- If you can't connect to the GitHub URL, check your internet connection
- Some ISPs block GitHub, so you might need a VPN in some regions
