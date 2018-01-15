# Equihash Miner

A docker image for mining zcash or zclassic.  Other currencies or mining pools can be added to the Makefile. This project uses the [ewbf miner](https://github.com/nanopool/ewbf-miner/releases).  

## Requirements
* Linux-based OS
* GPU drivers installed

## Setup 

1. Download [Docker CE](https://www.docker.com/community-edition) and [nvidia-docker](https://github.com/NVIDIA/nvidia-docker).  
2. Run ```make docker``` to build the image.
3. Change the ```--user``` parameter in the Makefile to point to your own address, otherwise mining rewards will be sent to me. Change the ```cuda_devices``` flag to the GPUs to use.  Optionally, change the ```--server``` flag to a closer or different mining pool.   
4. Run ```make zec``` for Zcash mining on flypool or ```make zcl``` for Zclassic mining on supernova.  

## Note

This has not been updated for nvidia-docker2, pull requests welcome.  
