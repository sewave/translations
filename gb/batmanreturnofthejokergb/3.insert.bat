@echo off
set T_FILENAME="TR_Batman - Return of the Joker (U) [!].gb"
set S_FILENAME="Batman - Return of the Joker (U) [!].gb"
set SCRIPTNAME="batmanreturnofthejokergb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
