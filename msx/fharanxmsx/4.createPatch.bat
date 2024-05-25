@echo off
set T_FILENAME="TR_Fharanx (1985)(Enix)[By Django][BLOAD'CAS-',r].cas"
set S_FILENAME="Fharanx (1985)(Enix)[By Django][BLOAD'CAS-',r].cas"
set SCRIPTNAME="fharanxmsx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
