@echo off
set T_FILENAME="TR_Solomon no Kagi - Oujo Rihita no Namida (J) [!].sms"
set S_FILENAME="Solomon no Kagi - Oujo Rihita no Namida (J) [!].sms"
set SCRIPTNAME="solomonnokagioujorihitanonamidasms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
