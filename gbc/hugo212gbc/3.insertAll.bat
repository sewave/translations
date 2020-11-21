@echo off
set T_FILENAME="TR_Hugo 2 1-2 (Germany) (GB Compatible).gbc"
set S_FILENAME="Hugo 2 1-2 (Germany) (GB Compatible).gbc"
set SCRIPTNAME="hugo212gbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
