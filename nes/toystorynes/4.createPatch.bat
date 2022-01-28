@echo off
set T_FILENAME="TR_Toy Story (Unl) [hM219].nes"
set S_FILENAME="Toy Story (Unl) [hM219].nes"
set SCRIPTNAME="toystorynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
