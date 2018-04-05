@echo off 
set T_FILENAME="TR_Final Fight 3 (Unl) [!].nes"
set S_FILENAME="Final Fight 3 (Unl) [!].nes"
set SCRIPTNAME="ffight3nes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%Title.tbl tr_%SCRIPTNAME%Title.ext %T_FILENAME% 
pause 
