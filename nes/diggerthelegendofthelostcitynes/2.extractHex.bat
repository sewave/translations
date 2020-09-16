@echo off
set T_FILENAME="TR_Digger - The Legend of the Lost City (USA).nes"
set SCRIPTNAME="diggerthelegendofthelostcitynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A719:10,1F310:10,5466:90,7316:100,7516:200,94C3:60,9DE3:280,9713:10,8A29:80,8B69:40
pause
