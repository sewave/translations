@echo off
set T_FILENAME="TR_Formation Z (Japan) (Rev A).nes"
set SCRIPTNAME="formationznes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 52B0:50,53B0:50,51A0:10,51F0:10,41A0:10,41F0:10,4280:80,51D0:10
pause
