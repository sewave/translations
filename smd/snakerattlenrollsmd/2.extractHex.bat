@echo off
set T_FILENAME="TR_Snake Rattle 'n' Roll (E) [c][!].bin"
set SCRIPTNAME="snakerattlenrollsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
