@echo off
set T_FILENAME="TR_Izzy's Quest for the Olympic Rings (USA, Europe).md"
set SCRIPTNAME="izzysquestfortheolympicringssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 183B44:A0,183E84:60,183C44:20,860C4:220,1F4280:A0,1F45C0:60
pause
