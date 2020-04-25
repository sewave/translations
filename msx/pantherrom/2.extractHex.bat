@echo off
set T_FILENAME="TR_Panther (1986) (Irem) (J).rom"
set SCRIPTNAME="pantherrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
