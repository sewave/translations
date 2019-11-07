@echo off
set T_FILENAME="TR_Gran Aventura Submarina, La (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="granaventurasubmarinalanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8810-8A10,8C60:10,8FD0:20
pause
