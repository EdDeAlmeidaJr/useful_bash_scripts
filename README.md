# Interesting Bash scripts

## Youtube

**IMPORTANT:** For all scripts in this section, consider that in the video https://www.youtube.com/watch?v=GfprFgohWY4, for example, the video id is **GfprFgohWY4**.

**IMPORTANT:** All the videos in this section depend on having **curl** and **youtube-dl** installed in your machine. **curl** may surely be installed by a pack provided with your Linux distribution. To install **youtube-dl** correctly, please refer to https://rg3.github.io/youtube-dl/download.html.

**IMPORTANT:** Yes, I know that someone who has **youtube-dl** installed may download Youtube videos without my script. But my script has some advantages. First of all, it uses **youtube-dl** only to grab the full URL of a video, instead of the usual URL provided by Youtube. After that it uses **curl** to fetch video data, which means that it deals with the full stream provided by Youtube, audio and video together. This will avoid certain problem **youtube-dl** faces sometimes when it tries to fetch audio and video separately, based on the video manifest. Besides, **curl** is faster to grab video data.

### youtube_downloader.sh

This script allows you to download Youtube videos with a simple command at the command line.

`$ youtube_downloader.sh <youtube_video_id>`

### youtube_player.sh

This script allows you to watch Youtube videos with a simple command at the command line.

`$ youtube_player.sh <youtube_video_id>`

### youtube_live.sh

This script allows you to stream live direct to youtube, at the command line, by using VLC media player.

`$ youtube_live.sh <youtube_stream_key>`

**IMPORTANT:** After running this script a VLC window will open. You must go to `File -> Streaming` to select your video and audio inputs, then click the "Transmit" button. To stop the streaming, just click the stop button at the VLC player controls' bar.

## Github

### update_projects.sh

This script, when activated inside a directory, will visit all subdirectories and test if they are Github repositories. If so it will use `git pull` to update them with the corresponding remote content.

This is useful for those who use to have lots of Github repos cloned in sections of development directory. I have a `~/progs/opensource` directory with more than a hundred projects and I would never have enough time to update them manually.