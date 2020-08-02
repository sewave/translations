@echo off
set T_FILENAME="TR_BioMetal (USA).sfc"
set SCRIPTNAME="biometalsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 60C20:120,604E0:20,608E0:20
pause
