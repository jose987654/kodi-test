# Example Structure for GitHub Pages Repository

To make your repository accessible as a source in Kodi, you need to set up your GitHub Pages with the correct directory structure. Below is an example of how your repository should look once properly set up:

## Expected Directory Listing View

When accessing `https://jose987654.github.io/repository.seedr/` in a browser, it should look like:

```
Index of /repository.seedr

[DIR] ../
[DIR] icons/
[DIR] plugin.video.seedr/
[DIR] repository.seedr/
[FILE] addons.xml
[FILE] addons.xml.md5
[FILE] README.md
```

## Folder Contents

### /icons folder:

```
Index of /repository.seedr/icons

[DIR] ../
[FILE] folder.gif
```

### /plugin.video.seedr folder:

```
Index of /repository.seedr/plugin.video.seedr

[DIR] ../
[FILE] addon.xml
[FILE] fanart.jpg
[FILE] icon.png
[FILE] plugin.video.seedr-0.5.0.zip
[FILE] plugin.video.seedr-0.5.0.zip.md5
[FILE] README.md
```

### /repository.seedr folder:

```
Index of /repository.seedr/repository.seedr

[DIR] ../
[FILE] addon.xml
[FILE] fanart.jpg
[FILE] icon.png
[FILE] README.md
[FILE] repository.seedr-1.0.0.zip
[FILE] repository.seedr-1.0.0.zip.md5
```

## Important Notes

1. The ZIP files must be directly accessible at these paths:

   - `https://jose987654.github.io/repository.seedr/repository.seedr/repository.seedr-1.0.0.zip`
   - `https://jose987654.github.io/repository.seedr/plugin.video.seedr/plugin.video.seedr-0.5.0.zip`

2. The "folder.gif" file in the icons directory is used to create the directory listing view.

3. Make sure all paths in the XML files point to the correct locations:
   ```xml
   <info compressed="false">https://jose987654.github.io/repository.seedr/addons.xml</info>
   <checksum>https://jose987654.github.io/repository.seedr/addons.xml.md5</checksum>
   <datadir zip="true">https://jose987654.github.io/repository.seedr/</datadir>
   ```

When set up correctly, you'll be able to add `https://jose987654.github.io/repository.seedr/` as a source in Kodi's File Manager and browse the repository structure directly.
