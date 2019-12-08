@echo off
set T_FILENAME="TR_Ninja Gaiden (Prototype) [!].sms"
set S_FILENAME="Ninja Gaiden (Prototype) [!].sms"
set SCRIPTNAME="ninjagaidenprotosms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
