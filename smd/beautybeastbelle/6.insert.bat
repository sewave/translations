@echo off
set T_FILENAME="TR_Beauty and the Beast - Belle's Quest (U) [!].bin"
set S_FILENAME="Beauty and the Beast - Belle's Quest (U) [!].bin"
set SCRIPTNAME="beautybeastbelle"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
