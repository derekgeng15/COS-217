./fibopt 250000 > file1
./fiboptopt 250000 > file1
./fibc 250000 > file2
diff -y file1 file2
rm file1 file2