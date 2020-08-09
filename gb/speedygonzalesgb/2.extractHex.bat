@echo off
set T_FILENAME="TR_Speedy Gonzales (USA, Europe).gb"
set SCRIPTNAME="speedygonzalesgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 23388:100
pause
