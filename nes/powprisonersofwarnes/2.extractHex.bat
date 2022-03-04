@echo off
set T_FILENAME="TR_P.O.W. - Prisoners of War (USA).nes"
set SCRIPTNAME="powprisonersofwarnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3E580:20,3EC40:400,3F570:20,3F5F0:20,3F790:60,3FB90:80,3FC10:20,3F230:60,3F510:40,3FF70:60,3F3D0:40,3F4D0:20,25FC0:50,23F30:40,22F30:40,
pause
