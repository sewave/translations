@echo off
set T_FILENAME="TR_Boggy'84 (1984) (Nippon Columbia) (J).rom"
set S_FILENAME="Boggy'84 (1984) (Nippon Columbia) (J).rom"
set SCRIPTNAME="boggy84rom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
