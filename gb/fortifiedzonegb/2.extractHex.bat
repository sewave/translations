@echo off
set T_FILENAME="TR_Fortified Zone (U) [!].gb"
set SCRIPTNAME="fortifiedzonegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 11B80:50,11EA0:30
pause
