@echo off
set T_FILENAME="TR_Whomp 'Em (USA).nes"
set S_FILENAME="Whomp 'Em (USA).nes"
set SCRIPTNAME="whompemnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
