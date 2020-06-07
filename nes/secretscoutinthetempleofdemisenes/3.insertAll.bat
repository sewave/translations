@echo off
set T_FILENAME="TR_Secret Scout in the Temple of Demise (Color Dreams) [!].nes"
set S_FILENAME="Secret Scout in the Temple of Demise (Color Dreams) [!].nes"
set SCRIPTNAME="secretscoutinthetempleofdemisenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
