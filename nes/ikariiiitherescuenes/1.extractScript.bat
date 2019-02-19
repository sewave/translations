@echo off
set T_FILENAME="Ikari III - The Rescue (U) [!].nes"
set SCRIPTNAME="ikariiiitherescuenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
