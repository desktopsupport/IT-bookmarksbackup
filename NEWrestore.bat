::GET SIGNATURES
echo CopyingSignatures >> "%OneDriveCommercial%\backup\restorelog.txt"
SET BSig=%APPDATA%\Microsoft\Signatures
SET RSig=%OneDriveCommercial%\Backup\Signature
if not exist "%APPDATA%\Microsoft\Signatures" mkdir "%APPDATA%\Microsoft\Signatures"
XCopy "%RSig%\*" "%BSig%" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\restorelog.txt" 2>> %error% 

::GET CHROME BOOKMARKS
echo CopyingChromeBookmarks >> "%OneDriveCommercial%\backup\restorelog.txt"
SET BChrome=%LOCALAPPDATA%\Google\Chrome\User Data\Default
SET RChrome=%OneDriveCommercial%\Backup\Chrome
if not exist "%OneDriveCommercial%\Backup\Chrome" mkdir "%OneDriveCommercial%\Backup\Chrome"
XCopy "%RChrome%\Bookmarks*" "%BChrome%\Bookmarks*" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\restorelog.txt" 2>> %error% 

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
echo CopyingStickyNotes >> "%OneDriveCommercial%\backup\restorelog.txt"
SET BSticky=%LOCALAPPDATA%\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe\LocalState\legacy
SET RSticky=%OneDriveCommercial%\Backup\Sticky
if not exist "%LOCALAPPDATA%\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe\LocalState\legacy" mkdir "%LOCALAPPDATA%\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe\LocalState\legacy"
XCopy /s "%RSticky%" "%BSticky%" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\restorelog.txt" 2>> %error% 
copy "%BSticky%\StickyNotes.snt" "%BSticky%\ThresholdNotes.snt"

::Set Signature
FOR %%f IN (%APPDATA%\Microsoft\Signatures\*.htm) DO (
 set filename=%%~nf
 goto tests
)
:tests
reg add "HKEY_CURRENT_USER\Software\Microsoft\Office\XX.X\Common\MailSettings\16.0\Common\MailSettings" /v NewSignature /t REG_EXPAND_SZ /d %filename%
reg add "HKEY_CURRENT_USER\Software\Microsoft\Office\XX.X\Common\MailSettings\16.0\Common\MailSettings" /v ReplySignature /t REG_EXPAND_SZ /d %filename%
