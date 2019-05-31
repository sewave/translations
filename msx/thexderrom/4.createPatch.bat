@echo off
set T_FILENAME="TR_Thexder (1986) (Gamearts) (J).rom"
set S_FILENAME="Thexder (1986) (Gamearts) (J).rom"
set SCRIPTNAME="thexderrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
