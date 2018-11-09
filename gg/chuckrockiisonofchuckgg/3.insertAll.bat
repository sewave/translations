@echo off
set T_FILENAME="TR_Chuck Rock II - Son of Chuck (U) [!].gg"
set S_FILENAME="Chuck Rock II - Son of Chuck (U) [!].gg"
set SCRIPTNAME="chuckrockiisonofchuckgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
