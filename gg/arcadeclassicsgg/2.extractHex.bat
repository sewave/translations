@echo off
set T_FILENAME="TR_Arcade Classics (U) [!].gg"
set SCRIPTNAME="arcadeclassicsgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
