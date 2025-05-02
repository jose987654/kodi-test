# Seedr Kodi Repository Setup Instructions

This repository has been configured to use https://jose987654.github.io/repository.seedr/ for hosting the Kodi addon.

## Installation for Users

1. In Kodi, go to Settings > System > Add-ons
2. Enable "Unknown sources" if not already enabled
3. Go back to the home screen
4. Select Add-ons > Add-on browser (box icon)
5. Select "Install from zip file"
6. Use a web browser to download [repository.seedr-1.0.0.zip](https://jose987654.github.io/repository.seedr/repository.seedr-1.0.0.zip)
7. In Kodi, browse to where you saved the zip file and select it
8. Wait for the "Repository installed" notification
9. Select "Install from repository"
10. Select "Seedr Kodi Repository"
11. Select "Video add-ons"
12. Select "Seedr Torrent Cloud" and install

## Repository Structure

The repository at https://jose987654.github.io/repository.seedr/ contains:

- `addons.xml` - Contains metadata for all add-ons in the repository
- `addons.xml.md5` - MD5 checksum of the addons.xml file
- `repository.seedr/` - Directory containing the repository addon
- `plugin.video.seedr/` - Directory containing the Seedr video addon
- `repository.seedr-1.0.0.zip` - Zip file of the repository addon for installation
- `plugin.video.seedr-0.5.0.zip` - Zip file of the Seedr video addon

## Requirements

- Kodi 19 Matrix or newer
- A Seedr.cc account

## Using the Plugin

1. Once installed, access the plugin from the Video Add-ons section in Kodi
2. Login with your Seedr.cc account credentials
3. Browse and stream your torrents directly to Kodi

## License

GPL-3.0
