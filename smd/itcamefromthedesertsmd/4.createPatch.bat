@echo off
set T_FILENAME="TR_It Came from the Desert (USA) (Proto).md"
set S_FILENAME="It Came from the Desert (USA) (Proto).md"
set SCRIPTNAME="itcamefromthedesertsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
