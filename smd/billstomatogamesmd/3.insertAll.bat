@echo off
set T_FILENAME="TR_Bill's Tomato Game (USA) (Proto).md"
set S_FILENAME="Bill's Tomato Game (USA) (Proto).md"
set SCRIPTNAME="billstomatogamesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
