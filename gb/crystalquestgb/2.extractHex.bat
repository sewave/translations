@echo off
set T_FILENAME="TR_Crystal Quest (U) [!].gb"
set SCRIPTNAME="crystalquestgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5800:200
pause
