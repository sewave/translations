@echo off
set T_FILENAME="TR_Golden Axe III (J) [!].bin"
set S_FILENAME="Golden Axe III (J) [!].bin"
set SCRIPTNAME="goldenaxeiiismd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
