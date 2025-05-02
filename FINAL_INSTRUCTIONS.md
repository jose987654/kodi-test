# Final Instructions for Setting Up the Seedr Repository

To make your repository accessible as a source like the example repository, follow these updated instructions:

## Required Directory Structure

Create this exact directory structure in your GitHub repository:

```
jose987654.github.io/repository.seedr/
├── addons.xml
├── addons.xml.md5
├── README.md
├── icons/
│   └── folder.gif
├── plugin.video.seedr/
│   ├── addon.xml
│   ├── fanart.jpg
│   ├── icon.png
│   ├── README.md
│   ├── plugin.video.seedr-0.5.0.zip
│   └── plugin.video.seedr-0.5.0.zip.md5
└── repository.seedr/
    ├── addon.xml
    ├── fanart.jpg
    ├── icon.png
    ├── README.md
    ├── repository.seedr-1.0.0.zip
    └── repository.seedr-1.0.0.zip.md5
```

## Step-by-Step Manual Setup

1. **Create GitHub Repository**:

   - Create a repository named `repository.seedr` in your GitHub account
   - Enable GitHub Pages in Settings → Pages → Source: "main" branch

2. **Update addon.xml Files**:

   - Make sure repository.seedr/repository.seedr/addon.xml uses:
     ```xml
     <dir minversion="18.0">
         <info compressed="false">https://jose987654.github.io/repository.seedr/addons.xml</info>
         <checksum>https://jose987654.github.io/repository.seedr/addons.xml.md5</checksum>
         <datadir zip="true">https://jose987654.github.io/repository.seedr/</datadir>
     </dir>
     ```
   - Update addons.xml with the same format

3. **Create Icon Folder**:

   - Create an `icons` folder and add `folder.gif` for the directory listing

4. **Prepare ZIP Files and MD5 Files**:

   - Place plugin.video.seedr-0.5.0.zip in plugin.video.seedr/ folder
   - Create repository.seedr-1.0.0.zip from repository.seedr/repository.seedr/ contents
   - Place repository.seedr-1.0.0.zip in repository.seedr/ folder
   - Generate MD5 files for all ZIP files and addons.xml

5. **Upload Files to GitHub**:
   - Commit and push all files to your repository maintaining the exact structure

## Source Installation in Kodi

The repository will then be accessible as a direct source in Kodi:

1. Navigate to System → File Manager → Add source
2. Enter: `https://jose987654.github.io/repository.seedr/`
3. Name it "Seedr Repo"
4. Go to Add-ons → Install from zip file → Seedr Repo
5. Navigate to repository.seedr folder
6. Select repository.seedr-1.0.0.zip
7. Install the Seedr Torrent Cloud addon from the repository

This setup will perfectly match the example repository structure, making the ZIP files directly accessible through the Kodi file manager.
