
::GET FAVOURITES
set error="%OneDriveCommercial%\backup\restoreerrorlog.txt" 

echo CopyingFavourites >> "%OneDriveCommercial%\backup\restorelog.txt"
SET BFav=%USERPROFILE%\Favorites
SET RFav=%OneDriveCommercial%\Favorites
XCopy "%RFav%\*" "%BFav%" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\restorelog.txt" 2>> %error% 

::GET MUSIC
echo CopyingMusic >> "%OneDriveCommercial%\backup\restorelog.txt"
SET BMus=%USERPROFILE%\Music
SET RMus=%OneDriveCommercial%\Music
XCopy "%RMus%\*" "%BMus%" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\restorelog.txt" 2>> %error% 

::GET SIGNATURES
echo CopyingSignatures >> "%OneDriveCommercial%\backup\restorelog.txt"
SET BSig=%APPDATA%\Microsoft\Signatures
SET RSig=%OneDriveCommercial%\Backup\Signature
if not exist "%APPDATA%\Microsoft\Signatures" mkdir "%APPDATA%\Microsoft\Signatures"
XCopy "%RSig%\*" "%BSig%" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\restorelog.txt" 2>> %error% 

::GET SICKYNOTES
echo CopyingStickyNotes >> "%OneDriveCommercial%\backup\restorelog.txt"
SET BSticky=%LOCALAPPDATA%\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe\LocalState\legacy
SET RSticky=%OneDriveCommercial%\Backup\Sticky
if not exist "%LOCALAPPDATA%\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe\LocalState\legacy" mkdir "%LOCALAPPDATA%\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe\LocalState\legacy"
XCopy /s "%RSticky%" "%BSticky%" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\restorelog.txt" 2>> %error% 
copy "%BSticky%\StickyNotes.snt" "%BSticky%\ThresholdNotes.snt"

::GET CHROME BOOKMARKS
echo CopyingChromeBookmarks >> "%OneDriveCommercial%\backup\restorelog.txt"
SET BChrome=%LOCALAPPDATA%\Google\Chrome\User Data\Default
SET RChrome=%OneDriveCommercial%\Backup\Chrome
if not exist "%OneDriveCommercial%\Backup\Chrome" mkdir "%OneDriveCommercial%\Backup\Chrome"
XCopy "%RChrome%\Bookmarks*" "%BChrome%\Bookmarks*" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\restorelog.txt" 2>> %error% 

::GET Firefox BOOKMARKS
echo CopyingFirefoxBookmarks >> "%OneDriveCommercial%\backup\restorelog.txt"
SET BFirefox=%APPDATA%\Mozilla\Firefox\Profiles
SET RFirefox="%Onedrive%\Backup\Firefox"
if not exist "%OneDriveCommercial%\Backup\Firefox" mkdir "%OneDriveCommercial%\Backup\Firefox"
XCopy "%RFirefox%\Bookmarks*" "%BFirefox%\Bookmarks*" /E /Y /C /Z /D >> "%OneDriveCommercial%\backup\restorelog.txt" 2>> %error% 

::Set Signature
FOR %%f IN (%APPDATA%\Microsoft\Signatures\*.htm) DO (
 set filename=%%~nf
 goto tests
)
:tests
reg add "HKEY_CURRENT_USER\Software\Microsoft\Office\XX.X\Common\MailSettings\16.0\Common\MailSettings" /v NewSignature /t REG_EXPAND_SZ /d %filename%
reg add "HKEY_CURRENT_USER\Software\Microsoft\Office\XX.X\Common\MailSettings\16.0\Common\MailSettings" /v ReplySignature /t REG_EXPAND_SZ /d %filename%
