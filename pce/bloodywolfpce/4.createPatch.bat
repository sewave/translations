@echo off
set T_FILENAME="TR_Bloody Wolf (USA).pce"
set S_FILENAME="Bloody Wolf (USA).pce"
set SCRIPTNAME="bloodywolfpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
