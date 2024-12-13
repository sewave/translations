@echo off
set T_FILENAME="TR_David Crane's The Rescue of Princess Blobette Starring A Boy and His Blob (USA).gb"
set S_FILENAME="David Crane's The Rescue of Princess Blobette Starring A Boy and His Blob (USA).gb"
set SCRIPTNAME="aboyandhisblobgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
