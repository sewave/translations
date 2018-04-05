@echo off
set T_FILENAME="TR_Beauty and the Beast - Roar of the Beast (U) [!].bin"
set S_FILENAME="Beauty and the Beast - Roar of the Beast (U) [!].bin"
set SCRIPTNAME="beautybeastroarsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
