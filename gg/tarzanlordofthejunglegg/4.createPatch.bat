@echo off
set T_FILENAME="TR_Tarzan - Lord of the Jungle (Europe).gg"
set S_FILENAME="Tarzan - Lord of the Jungle (Europe).gg"
set SCRIPTNAME="tarzanlordofthejunglegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
