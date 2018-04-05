@echo off
set T_FILENAME="TR_Rambo III (W) (REV01) [!].bin"
set S_FILENAME="Rambo III (W) (REV01) [!].bin"
set SCRIPTNAME="ramboIIIsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
