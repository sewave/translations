@echo off
set T_FILENAME="TR_Fantasy Zone 1 (1986) (Pony Cannon) (J).rom"
set S_FILENAME="Fantasy Zone 1 (1986) (Pony Cannon) (J).rom"
set SCRIPTNAME="fantasyzone1rom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
