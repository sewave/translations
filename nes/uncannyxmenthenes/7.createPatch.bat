@echo off
set T_FILENAME="TR_Uncanny X-Men, The (U) [!].nes"
set S_FILENAME="Uncanny X-Men, The (U) [!].nes"
set SCRIPTNAME="uncannyxmenthenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
