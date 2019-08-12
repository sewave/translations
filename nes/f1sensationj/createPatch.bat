@echo off 
set T_FILENAME="TR_F-1 Sensation (J).nes"
set S_FILENAME="F-1 Sensation (J).nes"
set SCRIPTNAME="f1sensationj"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause 
