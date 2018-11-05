@echo off
set T_FILENAME="TR_Jurassic Park 2 - The Lost World (U) [!].bin"
set S_FILENAME="Jurassic Park 2 - The Lost World (U) [!].bin"
set SCRIPTNAME="jurassicpark2smd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
