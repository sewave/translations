@echo off
set T_FILENAME="TR_Exo Squad (USA).md"
set SCRIPTNAME="exosquadsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
