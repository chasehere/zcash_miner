docker:
	docker build -t ewbf-gpu .

zec:
	nvidia-docker run --rm ewbf-gpu ./miner --server us1-zcash.flypool.org --user t1Z6AYaH4FAySYv9dMJGBncFpsYn4v5qSMA.research01 --pass x --port 3333 --cuda_devices 0 1 --pec 

zcl:
	nvidia-docker run --rm ewbf-gpu ./miner --server zcl.suprnova.cc --user t1bFrLuDqJwKgQwQT4gE2EWtGAyA1dNW3Xc --pass x --port 4042 --cuda_devices 0 1 --pec 

