# Equihash Miner

A docker image for mining zcash or zclassic.  Other currencies or mining pools can be added to the Makefile.  

## Setup 

1. Download [Docker CE](https://www.docker.com/community-edition) and [nvidia-docker](https://github.com/NVIDIA/nvidia-docker).  
2. Run ```make docker``` to build the image.
3. Change the ```--user``` parameter in the Makefile to point to your own address, otherwise you will send your mining rewards to me. Change the ```cuda_devices``` flag to how many GPUs you want to use.  Optionally, you may want to change the ```--server``` flag to a closer or different mining pool.   
4. Run ```make zec``` for Zcash mining or ```make zcl``` for Zclassic mining.  

## Note

This has not been updated for nvidia-docker2, pull requests welcome.  