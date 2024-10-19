@echo off
set T_FILENAME="TR_Jordan vs Bird (USA, Europe) (v1.1).md"
set SCRIPTNAME="jordanvsbirdsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
