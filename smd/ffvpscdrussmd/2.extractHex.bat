@echo off
set T_FILENAME="TR_FFV_PSCDRus.bin"
set SCRIPTNAME="ffvpscdrussmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 187C74:100,1711D4:600,171E34:C00,172EB4:400
pause
