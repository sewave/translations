@echo off
set T_FILENAME="TR_Choplifter (1985) (Sony) (J).rom"
set S_FILENAME="Choplifter (1985) (Sony) (J).rom"
set SCRIPTNAME="choplifterrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
