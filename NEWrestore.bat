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

::Set Signature
FOR %%f IN (%APPDATA%\Microsoft\Signatures\*.htm) DO (
 set filename=%%~nf
 goto tests
)
:tests
reg add "HKEY_CURRENT_USER\Software\Microsoft\Office\XX.X\Common\MailSettings\16.0\Common\MailSettings" /v NewSignature /t REG_EXPAND_SZ /d %filename%
reg add "HKEY_CURRENT_USER\Software\Microsoft\Office\XX.X\Common\MailSettings\16.0\Common\MailSettings" /v ReplySignature /t REG_EXPAND_SZ /d %filename%
