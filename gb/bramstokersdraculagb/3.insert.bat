@echo off
set T_FILENAME="TR_Bram Stoker's Dracula (UE) [!].gb"
set S_FILENAME="Bram Stoker's Dracula (UE) [!].gb"
set SCRIPTNAME="bramstokersdraculagb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
