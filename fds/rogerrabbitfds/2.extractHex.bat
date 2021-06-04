@echo off
set T_FILENAME="TR_Roger Rabbit (Japan) [b].fds"
set SCRIPTNAME="rogerrabbitfds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 13C:400,63C:80,73C:80,83C:80,93C:80,E0C:10,1A3C:20,1AAC:10,1B3C:10,1BBC:10,1C5C:10,1CFC:40,200C:20,1E3C:10
pause
