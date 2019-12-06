@echo off
set T_FILENAME="TR_Gyrodine (J) [!].nes"
set S_FILENAME="Gyrodine (J) [!].nes"
set SCRIPTNAME="gyrodinenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
