@echo off
set T_FILENAME="Secret Scout in the Temple of Demise (Color Dreams) [!].nes"
set SCRIPTNAME="secretscoutinthetempleofdemisenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
