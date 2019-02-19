@echo off
set T_FILENAME="TR_Ikari III - The Rescue (U) [!].nes"
set S_FILENAME="Ikari III - The Rescue (U) [!].nes"
set SCRIPTNAME="ikariiiitherescuenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
