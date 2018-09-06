@echo off
set T_FILENAME="TR_Terra Cresta (U) [!].nes"
set S_FILENAME="Terra Cresta (U) [!].nes"
set SCRIPTNAME="terracrestanes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
