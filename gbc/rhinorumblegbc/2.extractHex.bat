@echo off
set T_FILENAME="TR_Rhino Rumble (USA, Europe).gbc"
set SCRIPTNAME="rhinorumblegbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 589C0:80,8EBAD:80,7CE64:30,7CF44:30,7CBF4:300,7CFF4:50,7DAD4:40,7DBB4:40,6F877:10,6FD37:10,6E9A6:70
pause
