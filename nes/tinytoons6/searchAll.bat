@echo off 
set T_FILENAME="Tiny Toon Adventures 6 (Unl) [!].nes"
set SCRIPTNAME="tinytoons6"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF 
pause 
