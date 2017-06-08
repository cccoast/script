ps aux | grep "ssh -f -g -N -R" | awk '{print $2}' | xargs kill -9
