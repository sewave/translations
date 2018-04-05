@echo off
set T_FILENAME="TR_Shadow Dancer - The Secret of Shinobi (W) [c][!].gen"
set S_FILENAME="Shadow Dancer - The Secret of Shinobi (W) [c][!].gen"
set SCRIPTNAME="shadowdancersmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
