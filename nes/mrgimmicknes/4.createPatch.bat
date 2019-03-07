@echo off
set T_FILENAME="TR_Mr. Gimmick (E) [!].nes"
set S_FILENAME="Mr. Gimmick (E) [!].nes"
set SCRIPTNAME="mrgimmicknes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
