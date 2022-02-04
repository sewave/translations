@echo off
set T_FILENAME="TR_Brainies, The (USA).sfc"
set SCRIPTNAME="brainiesthesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1B540:100,1B840:80
pause
