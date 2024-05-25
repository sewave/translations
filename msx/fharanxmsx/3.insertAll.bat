@echo off
set T_FILENAME="TR_Fharanx (1985)(Enix)[By Django][BLOAD'CAS-',r].cas"
set S_FILENAME="Fharanx (1985)(Enix)[By Django][BLOAD'CAS-',r].cas"
set SCRIPTNAME="fharanxmsx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
