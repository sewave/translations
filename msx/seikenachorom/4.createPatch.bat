@echo off
set T_FILENAME="TR_Seiken Acho (1985) (Ascii) (J).rom"
set S_FILENAME="Seiken Acho (1985) (Ascii) (J).rom"
set SCRIPTNAME="seikenachorom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
