@echo off
ffmpeg.exe -i tcp://localhost:9999 -f h264 -vcodec copy  -f segment -segment_list_size 2 -segment_list ../../%1.m3u8 -segment_list_flags +live -segment_atclocktime 1 -segment_time 3 ../../%1_%%d.ts
exit