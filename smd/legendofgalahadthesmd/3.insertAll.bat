@echo off
set T_FILENAME="TR_Legend of Galahad, The (USA, Europe).md"
set S_FILENAME="Legend of Galahad, The (USA, Europe).md"
set SCRIPTNAME="legendofgalahadthesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
