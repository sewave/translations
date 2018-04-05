@echo off
set T_FILENAME="TR_Lucky Dime Caper, The Starring Donald Duck (U) [!].gg"
set S_FILENAME="Lucky Dime Caper, The Starring Donald Duck (U) [!].gg"
set SCRIPTNAME="luckydimegg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
