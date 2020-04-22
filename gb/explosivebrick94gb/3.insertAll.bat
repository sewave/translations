@echo off
set T_FILENAME="TR_Explosive Brick '94 (Sachen) [!].gb"
set S_FILENAME="Explosive Brick '94 (Sachen) [!].gb"
set SCRIPTNAME="explosivebrick94gb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
