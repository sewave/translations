@echo off
set T_FILENAME="TR_Adventures in the Magic Kingdom (USA).nes"
set SCRIPTNAME="adventuresinthemagickingdomnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 33270:30,31B10:100,35410:80,3D410:80,3EE90:80,314B0:160,3E140:10,3E210:20,3E240:10,3E280:10,265E0:40
pause
