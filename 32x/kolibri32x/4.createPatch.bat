@echo off
set T_FILENAME="TR_Kolibri (USA, Europe).32x"
set S_FILENAME="Kolibri (USA, Europe).32x"
set SCRIPTNAME="kolibri32x"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
