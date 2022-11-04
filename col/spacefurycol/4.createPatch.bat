@echo off
set T_FILENAME="TR_Space Fury (1983) (Sega).col"
set S_FILENAME="Space Fury (1983) (Sega).col"
set SCRIPTNAME="spacefurycol"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
