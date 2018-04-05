@echo off
set T_FILENAME="Boy and His Blob, A - The Rescue of Princess Blobette (U) [!].gb"
set SCRIPTNAME="boyblobprincess"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
