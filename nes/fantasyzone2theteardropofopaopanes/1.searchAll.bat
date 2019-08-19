@echo off
set T_FILENAME="Fantasy Zone 2 - The Teardrop of Opa-Opa (J) [!].nes"
set SCRIPTNAME="fantasyzone2theteardropofopaopanes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt4.tbl %T_FILENAME% 0 FF "..\EngDict.txt"
pause
