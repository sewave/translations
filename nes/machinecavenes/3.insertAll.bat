@echo off
set T_FILENAME="TR_Machine Cave(1.19).nes"
set S_FILENAME="Machine Cave(1.19).nes"
set SCRIPTNAME="machinecavenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
