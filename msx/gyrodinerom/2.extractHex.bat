@echo off
set T_FILENAME="TR_Gyrodine (1986) (Taito) (J).rom"
set SCRIPTNAME="gyrodinerom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 21CA:100
pause
