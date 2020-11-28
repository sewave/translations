@echo off
set T_FILENAME="TR_Jurassic Park (USA).nes"
set S_FILENAME="Jurassic Park (USA).nes"
set SCRIPTNAME="jurassicparknes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
