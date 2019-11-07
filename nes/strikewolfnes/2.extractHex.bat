@echo off
set T_FILENAME="TR_Strike Wolf (MGC-014) [!].nes"
set SCRIPTNAME="strikewolfnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 22DE0:80,24D50:50,24E70:40,28C70:10,20610:60
pause
