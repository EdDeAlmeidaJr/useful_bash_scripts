vlc-wrapper  -v /dev/video0 --sout "#transcode{vcodec=h264,scale=Auto,width=426,height=240,acodec=mp3,ab=128,channels=2,samplerate=44100}:std{access=rtmp,mux=ffmpeg{mux=flv},dst=rtmp://a.rtmp.youtube.com/live2/$1}"