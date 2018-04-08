@echo off
set T_FILENAME="TR_Sunman (E) (Prototype).nes"
set S_FILENAME="Sunman (E) (Prototype).nes"
set SCRIPTNAME="sunmannes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
