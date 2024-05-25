@echo off
set T_FILENAME="Fharanx (1985)(Enix)[By Django][BLOAD'CAS-',r].cas"
set SCRIPTNAME="fharanxmsx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
