@echo off
set T_FILENAME="King's Bounty - The Conqueror's Quest (USA, Europe).md"
set SCRIPTNAME="kingsbountytheconquerorsquestsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
