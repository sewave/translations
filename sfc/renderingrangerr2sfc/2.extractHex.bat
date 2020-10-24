@echo off
set T_FILENAME="TR_Rendering Ranger R2 (Japan) (En).sfc"
set SCRIPTNAME="renderingrangerr2sfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 478C0:20,323C0:40
pause
