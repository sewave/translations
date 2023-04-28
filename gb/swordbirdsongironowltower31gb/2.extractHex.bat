@echo off
set T_FILENAME="TR_Swordbird Song - Iron Owl Tower 3.1.gb"
set SCRIPTNAME="swordbirdsongironowltower31gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 18A00:110,6A5D4:60,6AB54:40,6B8B5:B0,536D5:30,53725:20,53785:30,53835:40,538F5:30,4F1ED:110,6CA72:90,6D2C2:150,6A8F4:30,59B93:80
pause
