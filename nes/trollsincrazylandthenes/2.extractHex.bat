@echo off
set T_FILENAME="TR_Trolls in Crazyland, The (Europe).nes"
set SCRIPTNAME="trollsincrazylandthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 201C0:40,202F0:100,205B0:20,206D0:20
pause
