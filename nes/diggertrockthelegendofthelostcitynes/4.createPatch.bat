@echo off
set T_FILENAME="TR_Digger T. Rock - The Legend of the Lost City (Europe).nes"
set S_FILENAME="Digger T. Rock - The Legend of the Lost City (Europe).nes"
set SCRIPTNAME="diggertrockthelegendofthelostcitynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
