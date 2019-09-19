## Monitor Disk I/O

See disk IO at block level
```
echo 1 > /proc/sys/vm/block_dump
dmesg -w
```

```
sudo iotop -oPa
```
