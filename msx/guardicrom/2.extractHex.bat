@echo off
set T_FILENAME="TR_Guardic (1986) (Compile) (J).rom"
set SCRIPTNAME="guardicrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4D28:30,
pause
