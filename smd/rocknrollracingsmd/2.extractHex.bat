@echo off
set T_FILENAME="TR_Rock n' Roll Racing (USA).md"
set SCRIPTNAME="rocknrollracingsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
