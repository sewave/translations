@echo off
set T_FILENAME="TR_VR Troopers (U) [!].gg"
set SCRIPTNAME="vrtroopersgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 80FF-81DE,841F-847E
pause
