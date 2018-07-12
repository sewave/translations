@echo off
set T_FILENAME="Adventures of Captain Comic, The (Color Dreams) [!].nes"
set SCRIPTNAME="adventuresofcaptaincomicthenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
