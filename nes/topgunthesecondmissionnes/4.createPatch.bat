@echo off
set T_FILENAME="TR_Top Gun - The Second Mission (U) [!].nes"
set S_FILENAME="Top Gun - The Second Mission (U) [!].nes"
set SCRIPTNAME="topgunthesecondmissionnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
