@echo off
set T_FILENAME="TR_Lemmings (U) [!].gg"
set SCRIPTNAME="lemmingsgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 56B8:400
pause
