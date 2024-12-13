@echo off
set T_FILENAME="TR_David Crane's The Rescue of Princess Blobette Starring A Boy and His Blob (USA).gb"
set SCRIPTNAME="aboyandhisblobgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C575:20,C1CE:18,C21A:8,C87B:8,C497:8,C614:8
pause
