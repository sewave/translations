@echo off
set T_FILENAME="TR_Boy and His Blob, A - The Rescue of Princess Blobette (U) [!].gb"
set S_FILENAME="Boy and His Blob, A - The Rescue of Princess Blobette (U) [!].gb"
set SCRIPTNAME="boyblobprincess"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
