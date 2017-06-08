cmd=`ps aux | grep  "ssh -f -g -N -L 53002:127.0.0.1:53002 xudi@120.24.189.82"  | awk '{print $2}'`
retv=`echo $cmd | tr " " "\n" | wc -l`
if [ $retv -gt 1 ];
then 
	for pid in $cmd
	do
		echo $pid
		kill -9 $pid
	done
fi
ssh -f -g -N -L 53002:127.0.0.1:53002 xudi@120.24.189.82
