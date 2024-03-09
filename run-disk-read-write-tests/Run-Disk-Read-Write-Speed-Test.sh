#!/bin/bash

# Raspberry Pi Disk Read/Write Speeds Test


# Install Instructions

sudo apt update
sudo apt install sysbench -y

#Prepare folder called sysbench-test

mkdir ~/sysbench-test
cd ~/sysbench-test


# Test read speeds

# Prepare files:

sysbench fileio --file-total-size=500M --file-test-mode=seqrd --file-num=10 prepare >> ~/sysbench-test/read

#Run test:

sysbench fileio --file-total-size=500M --file-test-mode=seqrd --file-num=10 --time=60 --max-requests=0 run >> ~/sysbench-test/read

# Cleanup files:

sysbench fileio --file-total-size=500M --file-test-mode=seqrd --file-num=10 cleanup

# Test write speeds

# Prepare files:

sysbench fileio --file-total-size=500M --file-test-mode=seqwr --file-num=10 prepare >> ~/sysbench-test/write

# Run test:

sysbench fileio --file-total-size=500M --file-test-mode=seqwr --file-num=10 --time=60 --max-requests=0 run >> ~/sysbench-test/write

# Cleanup files:

sysbench fileio --file-total-size=500M --file-test-mode=seqwr --file-num=10 cleanup

#Remember to make script file executable by running the following command before you run this script

# sudo chmod +x ./Run-Disk-Read-Write-Speed-Test.sh
# ./Run-Disk-Read-Write-Speed-Test.sh