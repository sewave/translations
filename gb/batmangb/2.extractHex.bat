@echo off
set T_FILENAME="TR_Batman (JU) [!].gb"
set SCRIPTNAME="batmangb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
