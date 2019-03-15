@echo off
set T_FILENAME="TR_Excitebike (JU) [!].nes"
set S_FILENAME="Excitebike (JU) [!].nes"
set SCRIPTNAME="excitebikenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
