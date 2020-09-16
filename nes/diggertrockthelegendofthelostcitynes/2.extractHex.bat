@echo off
set T_FILENAME="TR_Digger T. Rock - The Legend of the Lost City (Europe).nes"
set SCRIPTNAME="diggertrockthelegendofthelostcitynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1F310:10,54AD:90,735D:100,755D:200,94BB:60,9DDB:280,970B:10,8A26:80,8B66:40
pause
