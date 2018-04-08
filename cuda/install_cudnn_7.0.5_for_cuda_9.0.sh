wget -c https://web.cs.dal.ca/~xjiang/downloads/cudnn-9.0-linux-x64-v7.tgz -O cudnn.tgz
tar -xzvf cudnn.tgz

cp cuda/include/cudnn.h ~/cuda_9.0/include
cp cuda/lib64/libcudnn* ~/cuda_9.0/lib64
chmod a+r ~/cuda_9.0/include/cudnn.h
