@echo off
set T_FILENAME="TR_Mystic Defender (W) (REV01) [!].gen"
set S_FILENAME="Mystic Defender (W) (REV01) [!].gen"
set SCRIPTNAME="mysticdefendersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
