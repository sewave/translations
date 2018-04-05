@echo off 
set T_FILENAME="TR_Dynamite Headdy (J) [c][T+ENG].gen"
set SCRIPTNAME="dynheaddysmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
