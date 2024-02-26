#KA May 03, 2020
#!/bin/sh
#$ -cwd
#$ -V
#$ -S /bin/sh 
### Join the standard error and the standard output into 1 file output
##$ -j y
 
#$ -o log

x=1

while [ $x=1 ]
do
	date >> mem.txt
	echo -e "\t" >>mem.txt
	qstat -j 13324 | grep "mem" >>mem.txt #13324 is the job-ID 
	echo -e "\n" >>mem.txt
	sleep 1800s
done

