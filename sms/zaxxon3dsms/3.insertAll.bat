@echo off
set T_FILENAME="TR_Zaxxon 3D (UE) [!].sms"
set S_FILENAME="Zaxxon 3D (UE) [!].sms"
set SCRIPTNAME="zaxxon3dsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% C000.dat C000
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
