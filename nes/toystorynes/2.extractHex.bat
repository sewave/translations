@echo off
set T_FILENAME="TR_Toy Story (Unl) [hM219].nes"
set SCRIPTNAME="toystorynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 29480:60
pause
