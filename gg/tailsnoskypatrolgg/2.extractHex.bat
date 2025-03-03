@echo off
set T_FILENAME="TR_Tails no Skypatrol (Japan).gg"
set SCRIPTNAME="tailsnoskypatrolgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2C84C:20,2C4AC:180,2C78C:20,3B14C:20,3485A:20,2A18A:A0,2A28A:40,3A54C:40,3A6EC:40,2AB2A:140,3489A:20,3495A:20
pause
