@echo off
set T_FILENAME="TR_Zero Wing (World) (Retro-Bit).md"
set SCRIPTNAME="zerowingretrobitsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 50480:20,36420:20,365A0:C0
pause
