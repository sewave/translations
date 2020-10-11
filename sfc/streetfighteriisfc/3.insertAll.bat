@echo off
set T_FILENAME="TR_Street Fighter II (USA).sfc"
set S_FILENAME="Street Fighter II (USA).sfc"
set SCRIPTNAME="streetfighteriisfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
