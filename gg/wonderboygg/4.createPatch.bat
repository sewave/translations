@echo off
set T_FILENAME="TR_Wonder Boy (E) [!].gg"
set S_FILENAME="Wonder Boy (E) [!].gg"
set SCRIPTNAME="wonderboygg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
