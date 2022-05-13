@echo off
set T_FILENAME="TR_Little Nemo - The Dream Master (USA).nes"
set S_FILENAME="Little Nemo - The Dream Master (USA).nes"
set SCRIPTNAME="littlenemothedreammasternes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
