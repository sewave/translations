@echo off
set T_FILENAME="TR_Gun-Nac (J) [T+ENG].nes"
set S_FILENAME="Gun-Nac (J).nes"
set SCRIPTNAME="gunnacjnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
