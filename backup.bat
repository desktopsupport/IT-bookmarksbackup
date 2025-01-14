ping 127.0.0.1 -n 10

::GET DESKTOP
echo CopyingDesktop > "%Onedrive%\backup\log.txt"
echo CopyingDesktop > "%OneDriveCommercial%\backup\log.txt"
SET BDesk=%USERPROFILE%\Desktop
SET RDesk="%Onedrive%\Desktop"
if not exist "%Onedrive%\Desktop" mkdir "%Onedrive%\Desktop\Desktop"
if not exist "%OneDriveCommercial%\Desktop" mkdir "%OneDriveCommercial%\Desktop\Desktop"
XCopy "%BDesk%\*" "%Onedrive%\Desktop" /E /Y /C /Z /D >> "%Onedrive%\backup\log.txt"
XCopy "%BDesk%\*" "%OneDriveCommercial%\Desktop" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\log.txt"

::GET MUSIC
echo CopyingMusic >> "%Onedrive%\backup\log.txt"
echo CopyingMusic >> "%OneDriveCommercial%\backup\log.txt"
SET BMus=%USERPROFILE%\Music
SET RMus="%Onedrive%\Music"
if not exist "%Onedrive%\Music" mkdir "%Onedrive%\Music"
XCopy "%BMus%\*" "%Onedrive%\Music" /E /Y /C /Z /D >> "%Onedrive%\backup\log.txt"
if not exist "%OneDriveCommercial%\Music" mkdir "%OneDriveCommercial%\Music"
XCopy "%BMus%\*" "%OneDriveCommercial%\Music" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\log.txt"


::GET DOCUMENTS
echo CopyingDocuments >> "%Onedrive%\backup\log.txt"
echo CopyingDocuments >> "%OneDriveCommercial%\backup\log.txt"
SET BDocs=%USERPROFILE%\Documents
SET RDocs="%Onedrive%\Documents"
if not exist "%Onedrive%\Documents" mkdir "%Onedrive%\Documents"
XCopy "%BDocs%\*" "%Onedrive%\Documents" /E /Y /C /Z /D >> "%Onedrive%\backup\log.txt"
if not exist "%OneDriveCommercial%\Documents" mkdir "%OneDriveCommercial%\Documents"
XCopy "%BDocs%\*" "%OneDriveCommercial%\Documents" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\log.txt"

::GET User StartMenu
echo CopyingUserStart >> "%Onedrive%\backup\log.txt"
echo CopyingUserStart >> "%OneDriveCommercial%\backup\log.txt"
SET Bstartu=%APPDATA%\Microsoft\Windows\Start Menu\Programs
SET Rstartu="%Onedrive%\Backup\StartMenuU"
if not exist "%Onedrive%\Backup\StartMenuU" mkdir "%Onedrive%\Backup\StartMenuU"
XCopy "%Bstartu%\*" "%Onedrive%\Backup\StartMenuU" /E /Y /C /Z /D >> "%Onedrive%\backup\log.txt"
if not exist "%OneDriveCommercial%\Backup\StartMenuU" mkdir "%OneDriveCommercial%\Backup\StartMenuU"
XCopy "%Bstartp%\*" "%OneDriveCommercial%\Backup\StartMenuU" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\log.txt"

::GET User Taskbar Items
echo CopyingUserTaskbar >> "%Onedrive%\backup\log.txt"
echo CopyingUserTaskbar >> "%OneDriveCommercial%\backup\log.txt"
SET BTasku=%APPDATA%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar
SET RTasku="%Onedrive%\Backup\TaskBar"
if not exist "%Onedrive%\Backup\TaskBar" mkdir "%Onedrive%\Backup\TaskBar"
XCopy "%BTasku%\*" "%Onedrive%\Backup\TaskBar" /E /Y /C /Z /D >> "%Onedrive%\backup\log.txt"
reg export "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband" "%Onedrive%\Backup\TaskBar\task.reg" /y >> "%OneDriveCommercial%\backup\log.txt"
if not exist "%OneDriveCommercial%\Backup\TaskBar" mkdir "%OneDriveCommercial%\Backup\TaskBar" >> "%OneDriveCommercial%\backup\log.txt"
XCopy "%BTasku%\*" "%OneDriveCommercial%\Backup\TaskBar" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\log.txt"
reg export "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband" "C:\Temp\My_Registry_Key.reg" /y >> "%OneDriveCommercial%\backup\log.txt"

::GET SIGNATURES
echo CopyingSignatures >> "%Onedrive%\backup\log.txt"
echo CopyingSignatures >> "%OneDriveCommercial%\backup\log.txt"
SET BSig=%APPDATA%\Microsoft\Signatures
SET RSig="%Onedrive%\Backup\Signature"
if not exist "%Onedrive%\Backup\Signatures" mkdir "%Onedrive%\Backup\Signature"
XCopy "%BSig%\*" "%Onedrive%\Backup\Signature" /E /Y /C /Z /D >> "%Onedrive%\backup\log.txt"
if not exist "%OneDriveCommercial%\Backup\Signatures" mkdir "%OneDriveCommercial%\Backup\Signature"
XCopy "%BSig%\*" "%OneDriveCommercial%\Backup\Signature" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\log.txt"

::GET FAVOURITES
echo CopyingFavourites >> "%Onedrive%\backup\log.txt"
echo CopyingFavourites >> "%OneDriveCommercial%\backup\log.txt"
SET BFav=%USERPROFILE%\Favorites
SET RFav="%Onedrive%\Favorites"
if not exist "%Onedrive%\Favorites" mkdir "%Onedrive%\Favorites"
XCopy "%BFav%\*" "%Onedrive%\Favorites" /E /Y /C /Z /D >> "%Onedrive%\backup\log.txt"
if not exist "%OneDriveCommercial%\Favorites" mkdir "%OneDriveCommercial%\Favorites"
XCopy "%BFav%\*" "%OneDriveCommercial%\Favorites" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\log.txt"

::GET SICKYNOTES
echo CopyingStickyNotes >> "%Onedrive%\backup\log.txt"
echo CopyingStickyNotes >> "%OneDriveCommercial%\backup\log.txt"
SET BSticky=%APPDATA%\Microsoft\Sticky Notes
SET RSticky="%Onedrive%\Backup\Sticky"
if not exist "%Onedrive%\Backup\Sticky" mkdir "%Onedrive%\Backup\Sticky"
XCopy /s "%BSticky%" "%Onedrive%\Backup\Sticky" /E /Y /C /Z /D >> "%Onedrive%\backup\log.txt"
if not exist "%OneDriveCommercial%\Backup\Sticky" mkdir "%OneDriveCommercial%\Backup\Sticky"
XCopy /s "%BSticky%" "%OneDriveCommercial%\Backup\Sticky" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\log.txt"

::GET CHROME BOOKMARKS
echo CopyingChromeBookmarks >> "%Onedrive%\backup\log.txt"
echo CopyingChromeBookmarks >> "%OneDriveCommercial%\backup\log.txt"
SET BChrome=%LOCALAPPDATA%\Google\Chrome\User Data\Default
SET RChrome="%Onedrive%\Backup\Chrome"
if not exist "%Onedrive%\Backup\Chrome" mkdir "%Onedrive%\Backup\Chrome"
XCopy "%BChrome%\Bookmarks*" "%Onedrive%\Backup\Chrome\Bookmarks*" /E /Y /C /Z /D >> "%Onedrive%\backup\log.txt"
if not exist "%OneDriveCommercial%\Backup\Chrome" mkdir "%OneDriveCommercial%\Backup\Chrome"
XCopy "%BChrome%\Bookmarks*" "%OneDriveCommercial%\Backup\Chrome\Bookmarks*" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\log.txt"

::GET Firefox BOOKMARKS
echo CopyingFirefoxBookmarks >> "%Onedrive%\backup\log.txt"
echo CopyingFirefoxBookmarks >> "%OneDriveCommercial%\backup\log.txt"
SET BFirefox=%APPDATA%\Mozilla\Firefox\Profiles
SET RFirefox="%Onedrive%\Backup\Firefox"
if not exist "%Onedrive%\Backup\Firefox" mkdir "%Onedrive%\Backup\Firefox"
XCopy "%Firefox%\Bookmarks*" "%Onedrive%\Backup\Firefox\Bookmarks*" /E /Y /C /Z /D >> "%Onedrive%\backup\log.txt"
if not exist "%OneDriveCommercial%\Backup\Firefox" mkdir "%OneDriveCommercial%\Backup\Firefox"
XCopy "%BFirefox%\Bookmarks*" "%OneDriveCommercial%\Backup\Firefox\Bookmarks*" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\log.txt"

::GET MAPPED DRIVES
echo MappingDrives >> "%Onedrive%\backup\log.txt"
net use >> "%Onedrive%\backup\log.txt"
