@echo off
set T_FILENAME="TR_Gimmick! (J).nes"
set S_FILENAME="Gimmick! (J).nes"
set SCRIPTNAME="gimmicknes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
