@echo off
set T_FILENAME="TR_Laser Invasion (U) [!].nes"
set S_FILENAME="Laser Invasion (U) [!].nes"
set SCRIPTNAME="laserinvasionnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
