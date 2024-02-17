@echo off
set T_FILENAME="TR_The Happiest Days Of Your Life.tzx"
set S_FILENAME="The Happiest Days Of Your Life.tzx"
set SCRIPTNAME="thehappiestdaysofyourlifetzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
