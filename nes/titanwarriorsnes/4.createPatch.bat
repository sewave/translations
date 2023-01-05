@echo off
set T_FILENAME="TR_Titan Warriors (USA) (Proto).nes"
set S_FILENAME="Titan Warriors (USA) (Proto).nes"
set SCRIPTNAME="titanwarriorsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
