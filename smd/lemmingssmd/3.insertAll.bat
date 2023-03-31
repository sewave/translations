@echo off
set T_FILENAME="TR_Lemmings (Japan, USA) (v1.1).md"
set S_FILENAME="Lemmings (Japan, USA) (v1.1).md"
set SCRIPTNAME="lemmingssmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
