del "Scooby Doo Mystery (W) [!].bin"
copy ".\NOSCRIPTS\Scooby Doo Mystery (W) [!].bin" "Scooby Doo Mystery (W) [!].bin"
java -jar Hextractor.jar -h scoobydoo.tbl blake_es.txt "Scooby Doo Mystery (W) [!].bin" 1F7500 B5B64 > out.txt
java -jar Hextractor.jar -h scoobydoo.tbl carnival_es.txt "Scooby Doo Mystery (W) [!].bin" 1FBC00 4C8C4 > out2.txt
