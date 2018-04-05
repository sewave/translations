@echo off 
set T_FILENAME="Time Diver Eon Man (U) (Prototype).nes"
set SCRIPTNAME="timediver"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF 
pause 
