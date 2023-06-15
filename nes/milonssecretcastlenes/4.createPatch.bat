@echo off
set T_FILENAME="TR_Milon's Secret Castle (USA).nes"
set S_FILENAME="Milon's Secret Castle (USA).nes"
set SCRIPTNAME="milonssecretcastlenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
