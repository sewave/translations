@echo off
set T_FILENAME="TR_Bonnie_and_Clyde.tap"
set S_FILENAME="Bonnie_and_Clyde.tap"
set SCRIPTNAME="bonnieandclydetap"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctap %T_FILENAME%
pause
