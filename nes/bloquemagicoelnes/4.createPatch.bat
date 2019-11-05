@echo off
set T_FILENAME="TR_Bloque Magico, El (Spain) (Gluk Video) (Unl).nes"
set S_FILENAME="Bloque Magico, El (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="bloquemagicoelnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
