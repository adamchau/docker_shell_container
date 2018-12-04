## Rendering Face and Hands without Pose
```
# CPU rendering (faster)
./build/examples/openpose/openpose.bin --render_pose 0 --face --face_render 1 --hand --hand_render 1
# GPU rendering
./build/examples/openpose/openpose.bin --render_pose 0 --face --face_render 2 --hand --hand_render 2

./build/examples/openpose/openpose.bin --render_pose 0 --hand --hand_render 1
```

## Openpose Dorcker Container Setup
```
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
 ```
