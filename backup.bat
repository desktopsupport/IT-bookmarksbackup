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
