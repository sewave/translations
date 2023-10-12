@echo off
set T_FILENAME="TR_GG Aleste 3 (Japan) (En) (Aleste Collection) [FIX].gg"
set SCRIPTNAME="ggaleste3gg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 84EA0:E0,850A0:E0,852E0:180,8A4E0:60,8ABE0:80,8B7E0:80
pause
