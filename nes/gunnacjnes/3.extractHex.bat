@echo off
set T_FILENAME="TR_Gun-Nac (J) [T+ENG].nes"
set SCRIPTNAME="gunnacjnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 0003F870:80
pause
