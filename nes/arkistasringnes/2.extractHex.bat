@echo off
set T_FILENAME="TR_Arkista's Ring (USA).nes"
set SCRIPTNAME="arkistasringnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex ECF0:10,9210:20,B210:20,D210:20,F210:20,
pause
