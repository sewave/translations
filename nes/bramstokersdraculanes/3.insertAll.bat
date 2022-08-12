@echo off
set T_FILENAME="TR_Bram Stoker's Dracula (USA).nes"
set S_FILENAME="Bram Stoker's Dracula (USA).nes"
set SCRIPTNAME="bramstokersdraculanes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
