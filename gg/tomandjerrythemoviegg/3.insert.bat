@echo off
set T_FILENAME="TR_Tom and Jerry - The Movie (U) [!].gg"
set S_FILENAME="Tom and Jerry - The Movie (U) [!].gg"
set SCRIPTNAME="tomandjerrythemoviegg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
