@echo off
set T_FILENAME="TR_Spelunker (1986) (Irem) (J).rom"
set S_FILENAME="Spelunker (1986) (Irem) (J).rom"
set SCRIPTNAME="spelunkerrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
