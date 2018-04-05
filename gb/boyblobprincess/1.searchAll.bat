@echo off
set T_FILENAME="Boy and His Blob, A - The Rescue of Princess Blobette (U) [!].gb"
set SCRIPTNAME="boyblobprincess"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
