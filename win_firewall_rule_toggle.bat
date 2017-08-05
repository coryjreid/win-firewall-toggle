ECHO off
SETLOCAL
SET gtaFile=%UserProfile%\.gtavtoggle
SET gtaName=GTAV_Block

IF NOT "%1"=="" (SET gtaName=%1)

IF EXIST %gtaFile% GOTO toggleoff ELSE GOTO toggleon

:toggleon
@REM Make our blank marker file
copy NUL %gtaFile%

@REM Hide our marker file
attrib +h %gtaFile%

@REM Enable the firewall rule
netsh advfirewall firewall set rule name=%gtaName% new enable=yes

@REM Terminate
GOTO: EOF



:toggleoff
@REM Delete our marker file
del /a:h /f %gtaFile%

@REM Disable the firewall rule
netsh advfirewall firewall set rule name=%gtaName% new enable=no

@REM Terminate
GOTO: EOF

