@echo off
set T_FILENAME="TR_Simpsons, The - Night of the Living Treehouse of Horror (USA, Europe).gbc"
set SCRIPTNAME="simpsonsthenightofthelivingtreehouseofhorrorgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F8350:30,F86C0:50,623F0:110,F99DE:40,F9AEE:40,FA39E:100,BE730:80,62840:80,62980:80,62A90:220
pause
