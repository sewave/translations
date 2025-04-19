@echo off
set T_FILENAME="TR_Pico Pico (Japan).rom"
set S_FILENAME="Pico Pico (Japan).rom"
set SCRIPTNAME="picopicorom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
set T_FILENAME="TR_Pico Pico (Japan)NonExtended.rom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%NonExtended.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
