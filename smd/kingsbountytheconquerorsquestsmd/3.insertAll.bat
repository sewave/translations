@echo off
set T_FILENAME="TR_King's Bounty - The Conqueror's Quest (USA, Europe).md"
set S_FILENAME="King's Bounty - The Conqueror's Quest (USA, Europe).md"
set SCRIPTNAME="kingsbountytheconquerorsquestsmd"
del %T_FILENAME%
copy /B %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
