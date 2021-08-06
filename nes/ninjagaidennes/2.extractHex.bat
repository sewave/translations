@echo off
set T_FILENAME="TR_Ninja Gaiden (USA).nes"
set SCRIPTNAME="ninjagaidennes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 30840:80,3BF70:10,3BC70:20,3B550:30,30250:B0,31810:100
pause
