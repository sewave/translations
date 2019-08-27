@echo off
set T_FILENAME="TR_Snake Rattle N Roll (U) [!].nes"
set SCRIPTNAME="snakerattlenrollnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
