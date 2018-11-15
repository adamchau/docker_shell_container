# /bin/bash
nvidia-docker run -it \
	-v /home/ydzhao/ailab-share:/home/ydzhao/ailab-share \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-p 8888:8888 \
	-e DISPLAY=unix$DISPLAY \
	-e GDK_SCALE \
	-e GDK_DPI_SCALE \
	--name openpose \
	mjsobrep/openpose /bin/bash
  
