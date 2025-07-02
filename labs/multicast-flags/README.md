# Multicast flags

Run this on the Server side to generate the feeds for the (S,G)s

`docker exec -it srv bash`

```shell
sudo iperf -c 239.30.30.30 -u -p 51051 -i 1 -t 5000 -T 10 -b 50k &
sudo iperf -c 239.10.10.10 -u -p 51052 -i 1 -t 5000 -T 10 -b 50k &
sudo iperf -c 239.20.20.20 -u -p 51053 -i 1 -t 5000 -T 10 -b 50k &
sudo iperf -c 239.40.40.40 -u -p 51054 -i 1 -t 5000 -T 10 -b 50k &
```

Run this on the receiver side to join the feeds:

`docker exec -it rcvr bash`

```shell
sudo iperf -s -u -B 239.30.30.30 -p 51051 -i 1 &
sudo iperf -s -u -B 239.10.10.10 -p 51052 -i 1 &
sudo iperf -s -u -B 239.20.20.20 -p 51053 -i 1 &
sudo iperf -s -u -B 239.40.40.40 -p 51054 -i 1 &
```

<!-- TODO add show examples -->
