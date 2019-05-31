@echo off
set T_FILENAME="TR_Punch-Out!! (U) [!].nes"
set SCRIPTNAME="punchoutnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20BD0:80,21BB0:50,20320:40,20270:40
pause
