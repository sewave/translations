@echo off
set T_FILENAME="TR_Candoo Ninja (1983) (Ascii) (J).rom"
set S_FILENAME="Candoo Ninja (1983) (Ascii) (J).rom"
set SCRIPTNAME="candooninjarom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
