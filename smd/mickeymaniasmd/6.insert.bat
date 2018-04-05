@echo off
set T_FILENAME="TR_Mickey Mania - Timeless Adventures of Mickey Mouse (U) [!].gen"
set S_FILENAME="Mickey Mania - Timeless Adventures of Mickey Mouse (U) [!].gen"
set SCRIPTNAME="mickeymaniasmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
