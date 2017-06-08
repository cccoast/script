ps aux | grep "ssh -f -g -N -L" | awk '{print $2}' | xargs kill -9
