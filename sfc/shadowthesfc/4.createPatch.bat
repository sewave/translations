@echo off
set T_FILENAME="TR_Shadow, The (USA) (Proto 1).sfc"
set S_FILENAME="Shadow, The (USA) (Proto 1).sfc"
set SCRIPTNAME="shadowthesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
