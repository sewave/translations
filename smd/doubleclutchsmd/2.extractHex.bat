@echo off
set T_FILENAME="TR_Double Clutch (Europe).md"
set SCRIPTNAME="doubleclutchsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
