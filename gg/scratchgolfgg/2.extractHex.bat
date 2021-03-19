@echo off
set T_FILENAME="TR_Scratch Golf (USA).gg"
set SCRIPTNAME="scratchgolfgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 
pause
