@echo off
set T_FILENAME="TR_Dr. Jekyll and Mr. Hyde (U) [!].nes"
set S_FILENAME="Dr. Jekyll and Mr. Hyde (U) [!].nes"
set SCRIPTNAME="drjekyllandmrhydenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
