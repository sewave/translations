@echo off
set T_FILENAME="TR_Zillion II - The Tri Formation (JUE) [!].sms"
set S_FILENAME="Zillion II - The Tri Formation (JUE) [!].sms"
set SCRIPTNAME="zillioniithetriformationsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% title_1A02A.dat 1A02A
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
