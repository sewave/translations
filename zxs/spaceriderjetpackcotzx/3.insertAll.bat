@echo off
set T_FILENAME="TR_Space Rider Jet Pack Co..tzx"
set S_FILENAME="Space Rider Jet Pack Co..tzx"
set SCRIPTNAME="spaceriderjetpackcotzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
