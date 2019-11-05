@echo off
set T_FILENAME="TR_Bloque Magico, El (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="bloquemagicoelnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 86E0:B0,9AF0:90,A810:40,C310:60,C120:20
pause
