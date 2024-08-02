@echo off
set T_FILENAME="TR_Drac's Night Out (USA) (Proto).nes"
set SCRIPTNAME="dracsnightoutnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3C3A0:30,3C570:40,3C670:30,3C6C0:30,3C890:30,3AE10:80,3F410:100
pause
