@echo off
set T_FILENAME="TR_Little Red Hood (Australia) (Unl).nes"
set SCRIPTNAME="littleredhoodnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8DC0:10,8E50:20,8EB0:10
pause
