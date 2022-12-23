@echo off
set T_FILENAME="TR_Metal Head (Japan, USA) (En,Ja).32x"
set S_FILENAME="Metal Head (Japan, USA) (En,Ja).32x"
set SCRIPTNAME="metalhead32x"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
