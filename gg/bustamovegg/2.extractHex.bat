@echo off
set T_FILENAME="TR_Bust-A-Move (U) [!].gg"
set SCRIPTNAME="bustamovegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2F383:A00,30000:600,
pause
