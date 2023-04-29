./fibopt 250000 > file1
./fiboptoptflat 250000 > file1
./fibc 250000 > file2
diff file1 file2
rm file1 file2