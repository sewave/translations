@echo off
set T_FILENAME="TR_Houma ga Toki (J).nes"
set S_FILENAME="Houma ga Toki (J).nes"
set SCRIPTNAME="houmagatokines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
