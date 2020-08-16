@echo off
set T_FILENAME="TR_Last Ninja, The (USA).nes"
set SCRIPTNAME="lastninjathenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 32160:30,32340:30,323F0:40,31410:100,30A90:10
pause
