@echo off
set T_FILENAME="TR_Tiny Toon Adventures - Wacky Sports Challenge (USA).sfc"
set SCRIPTNAME="tinytoonadventureswackysportschallengesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
