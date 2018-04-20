@echo off 
set T_FILENAME="TR_Robocop versus The Terminator (U) [!].gg"
set S_FILENAME="Robocop versus The Terminator (U) [!].gg"
set SCRIPTNAME="rbcvstrmgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
pause 
