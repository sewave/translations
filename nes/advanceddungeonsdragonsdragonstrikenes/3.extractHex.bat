@echo off
set T_FILENAME="TR_Advanced Dungeons & Dragons - Dragon Strike (U) [!].nes"
set SCRIPTNAME="advanceddungeonsdragonsdragonstrikenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 43C10:60
pause
