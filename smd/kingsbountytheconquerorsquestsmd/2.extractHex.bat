@echo off
set T_FILENAME="TR_King's Bounty - The Conqueror's Quest (USA, Europe).md"
set SCRIPTNAME="kingsbountytheconquerorsquestsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7FC00:200
pause
