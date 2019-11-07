@echo off
set T_FILENAME="TR_Monstruo de los globos, El (Spain) (Rev 1) (Gluk Video) (Unl).nes"
set S_FILENAME="Monstruo de los globos, El (Spain) (Rev 1) (Gluk Video) (Unl).nes"
set SCRIPTNAME="monstruodelosgloboselrev1nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
