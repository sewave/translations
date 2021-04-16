@echo off
set T_FILENAME="TR_World Court Tennis (USA).pce"
set S_FILENAME="World Court Tennis (USA).pce"
set SCRIPTNAME="worldcourttennispce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
