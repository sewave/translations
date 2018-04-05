@echo off
set T_FILENAME="TR_Boy and His Blob, A - The Rescue of Princess Blobette (U) [!].gb"
set SCRIPTNAME="boyblobprincess"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
