@echo off
set T_FILENAME="TR_Lava16K.tap"
set S_FILENAME="Lava16K.tap"
set SCRIPTNAME="lava16ktap"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
