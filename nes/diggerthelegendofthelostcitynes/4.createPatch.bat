@echo off
set T_FILENAME="TR_Digger - The Legend of the Lost City (USA).nes"
set S_FILENAME="Digger - The Legend of the Lost City (USA).nes"
set SCRIPTNAME="diggerthelegendofthelostcitynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
