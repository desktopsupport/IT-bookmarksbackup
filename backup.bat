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

::GET DOCUMENTS
echo CopyingDocuments >> "%Onedrive%\backup\log.txt"
echo CopyingDocuments >> "%OneDriveCommercial%\backup\log.txt"
SET BDocs=%USERPROFILE%\Documents
SET RDocs="%Onedrive%\Documents"
if not exist "%Onedrive%\Documents" mkdir "%Onedrive%\Documents"
XCopy "%BDocs%\*" "%Onedrive%\Documents" /E /Y /C /Z /D >> "%Onedrive%\backup\log.txt"
if not exist "%OneDriveCommercial%\Documents" mkdir "%OneDriveCommercial%\Documents"
XCopy "%BDocs%\*" "%OneDriveCommercial%\Documents" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\log.txt"

::GET SIGNATURES
echo CopyingSignatures >> "%Onedrive%\backup\log.txt"
echo CopyingSignatures >> "%OneDriveCommercial%\backup\log.txt"
SET BSig=%APPDATA%\Microsoft\Signatures
SET RSig="%Onedrive%\Backup\Signature"
if not exist "%Onedrive%\Backup\Signatures" mkdir "%Onedrive%\Backup\Signature"
XCopy "%BSig%\*" "%Onedrive%\Backup\Signature" /E /Y /C /Z /D >> "%Onedrive%\backup\log.txt"
if not exist "%OneDriveCommercial%\Backup\Signatures" mkdir "%OneDriveCommercial%\Backup\Signature"
XCopy "%BSig%\*" "%OneDriveCommercial%\Backup\Signature" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\log.txt"

::GET CHROME BOOKMARKS
echo CopyingChromeBookmarks >> "%Onedrive%\backup\log.txt"
echo CopyingChromeBookmarks >> "%OneDriveCommercial%\backup\log.txt"
SET BChrome=%LOCALAPPDATA%\Google\Chrome\User Data\Default
SET RChrome="%Onedrive%\Backup\Chrome"
if not exist "%Onedrive%\Backup\Chrome" mkdir "%Onedrive%\Backup\Chrome"
XCopy "%BChrome%\Bookmarks*" "%Onedrive%\Backup\Chrome\Bookmarks*" /E /Y /C /Z /D >> "%Onedrive%\backup\log.txt"
if not exist "%OneDriveCommercial%\Backup\Chrome" mkdir "%OneDriveCommercial%\Backup\Chrome"
XCopy "%BChrome%\Bookmarks*" "%OneDriveCommercial%\Backup\Chrome\Bookmarks*" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\log.txt"

::GET EDGE BOOKMARKS
echo CopyingEdgeBookmarks >> "%Onedrive%\backup\log.txt"
echo CopyingEdgeBookmarks >> "%OneDriveCommercial%\backup\log.txt"
SET BEdge=%LOCALAPPDATA%\Microsoft\Edge\User Data\Default
SET REdge="%Onedrive%\Backup\Edge"
if not exist "%Onedrive%\Backup\Edge" mkdir "%Onedrive%\Backup\Edge"
XCopy "%BEdge%\Bookmarks*" "%Onedrive%\Backup\Edge\Bookmarks*" /E /Y /C /Z /D >> "%Onedrive%\backup\log.txt"
if not exist "%OneDriveCommercial%\Backup\Edge" mkdir "%OneDriveCommercial%\Backup\Edge"
XCopy "%BEdge%\Bookmarks*" "%OneDriveCommercial%\Backup\Edge\Bookmarks*" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\log.txt"

::GET FIREFOX BOOKMARKS
echo CopyingFirefoxBookmarks >> "%Onedrive%\backup\log.txt"
echo CopyingFirefoxBookmarks >> "%OneDriveCommercial%\backup\log.txt"
SET BFirefox=%APPDATA%\Mozilla\Firefox\Profiles
SET RFirefox="%Onedrive%\Backup\Firefox"
if not exist "%Onedrive%\Backup\Firefox" mkdir "%Onedrive%\Backup\Firefox"
XCopy "%BFirefox%\*.default*\places.sqlite" "%Onedrive%\Backup\Firefox\" /E /Y /C /Z /D >> "%Onedrive%\backup\log.txt"
if not exist "%OneDriveCommercial%\Backup\Firefox" mkdir "%OneDriveCommercial%\Backup\Firefox"
XCopy "%BFirefox%\*.default*\places.sqlite" "%OneDriveCommercial%\Backup\Firefox\" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\log.txt"

::GET BRAVE BOOKMARKS
echo CopyingBraveBookmarks >> "%Onedrive%\backup\log.txt"
echo CopyingBraveBookmarks >> "%OneDriveCommercial%\backup\log.txt"
SET BBrave=%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default
SET RBrave="%Onedrive%\Backup\Brave"
if not exist "%Onedrive%\Backup\Brave" mkdir "%Onedrive%\Backup\Brave"
XCopy "%BBrave%\Bookmarks*" "%Onedrive%\Backup\Brave\Bookmarks*" /E /Y /C /Z /D >> "%Onedrive%\backup\log.txt"
if not exist "%OneDriveCommercial%\Backup\Brave" mkdir "%OneDriveCommercial%\Backup\Brave"
XCopy "%BBrave%\Bookmarks*" "%OneDriveCommercial%\Backup\Brave\Bookmarks*" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\log.txt"

::GET SICKYNOTES
echo CopyingStickyNotes >> "%Onedrive%\backup\log.txt"
echo CopyingStickyNotes >> "%OneDriveCommercial%\backup\log.txt"
SET BSticky=%APPDATA%\Microsoft\Sticky Notes
SET RSticky="%Onedrive%\Backup\Sticky"
if not exist "%Onedrive%\Backup\Sticky" mkdir "%Onedrive%\Backup\Sticky"
XCopy /s "%BSticky%" "%Onedrive%\Backup\Sticky" /E /Y /C /Z /D >> "%Onedrive%\backup\log.txt"
if not exist "%OneDriveCommercial%\Backup\Sticky" mkdir "%OneDriveCommercial%\Backup\Sticky"
XCopy /s "%BSticky%" "%OneDriveCommercial%\Backup\Sticky" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\log.txt"
