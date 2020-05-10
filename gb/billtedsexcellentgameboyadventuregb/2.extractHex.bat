@echo off
set T_FILENAME="TR_Bill & Ted's Excellent Gameboy Adventure (UE) [!].gb"
set SCRIPTNAME="billtedsexcellentgameboyadventuregb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 13061:10
pause
