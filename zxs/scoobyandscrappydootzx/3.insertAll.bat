@echo off
set T_FILENAME="TR_Scooby And Scrappy Doo.tzx"
set S_FILENAME="Scooby And Scrappy Doo.tzx"
set SCRIPTNAME="scoobyandscrappydootzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
