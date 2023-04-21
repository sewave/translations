@echo off
set T_FILENAME="TR_Indiana Jones and the Infernal Machine (USA, Europe) (En,Fr,De).gbc"
set SCRIPTNAME="indianajonesandtheinfernalmachinegbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1F0B2:8,1F08A:8,1EFBC:18,1EFD1:18,1F037:30,1F71C:8,1F732:8,1F7C4:8,1F803:8,1F82D:8,1F857:8,1F746:8,1F7AF:8,89684:50,2FBB4:50,7B444:80,2C4A4:40,2C564:40,2C7F4:10,2C814:50,2C974:10
pause
