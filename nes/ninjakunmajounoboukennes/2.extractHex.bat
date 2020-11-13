@echo off
set T_FILENAME="TR_Ninja-kun - Majou no Bouken (Japan) (Rev 1).nes"
set SCRIPTNAME="ninjakunmajounoboukennes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5BE0:30,5F80:10,4FB0:40,4EF0:10,5FF0:10
pause
