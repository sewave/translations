@echo off
set T_FILENAME="TR_Image Fight (USA).nes"
set S_FILENAME="Image Fight (USA).nes"
set SCRIPTNAME="imagefightnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
