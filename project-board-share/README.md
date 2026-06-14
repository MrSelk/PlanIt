# Project Board Share Package

This folder is the share-ready version of your project board app.

## Best hosting option

Use GitHub Pages. Since this app is one HTML file and everyone keeps their own separate board in their browser, GitHub Pages is the simplest fit.

Your friends will use one link, like:

```text
https://your-github-name.github.io/project-board/
```

When you update the app and publish again, they keep using the same link. They just refresh the page.

Do not make friends keep downloading the zip for normal use. The zip is only useful for uploading files or making a backup copy.

## Seamless Update Rule

The seamless workflow only works when everyone opens the GitHub Pages URL.

This works:

```text
https://your-github-name.github.io/project-board/
```

This does not auto-update:

```text
C:\Users\Someone\Documents\index.html
```

A downloaded local HTML file cannot refresh itself from GitHub. The browser is only reloading that local file from the computer.

Once someone moves to the GitHub Pages URL, their data is automatic. The app keeps their board in that browser for that URL, and your code updates arrive when they refresh.

## Files

- `index.html` - the hosted app file.
- `.nojekyll` - keeps GitHub Pages from doing extra processing.
- `sync-from-bookmark.ps1` - copies your latest bookmarked app into this folder.

## Moving Existing Local Data

If someone already made a board by opening a downloaded `index.html` file, that data lives under that local file in their browser. It will not automatically appear on the GitHub Pages URL because the browser treats those as different places.

Use this one-time move:

1. Open the old bookmarked local `index.html`.
2. Click `Backup`.
3. Save the `.json` backup file.
4. Open the GitHub Pages link.
5. Click `Restore`.
6. Choose the `.json` backup.
7. Bookmark the GitHub Pages link and use that from now on.

## Updating This Folder

After Codex edits your main bookmarked file at:

```text
C:\Users\pablo\OneDrive\Documents\project-board.html
```

Run this from this folder:

```powershell
.\sync-from-bookmark.ps1
```

Then upload or push the updated `index.html` to your host.

## GitHub Pages Setup

1. Create a GitHub repository named `project-board`.
2. Upload the contents of this folder to the repository root. Upload `index.html`, `.nojekyll`, and this README directly. Do not upload only the zip.
3. In GitHub, go to `Settings` > `Pages`.
4. Set the source to deploy from the main branch root.
5. Share the Pages URL with your friends.

Each friend gets their own saved board because the app stores data in their browser's local storage.
