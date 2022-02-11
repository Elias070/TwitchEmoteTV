# Alles is overgezet van nodejs omdat node defualt async is en tegen problemen aanloop
# Python 3.5+ required

# py EmoteTV.py 1203772818 OMEGALUL 2 30
# py EmoteTV.py 1285440134 BOOBA 15 20
# py EmoteTV.py 1287279952 BOOBA 15 20
# py EmoteTV.py 1285440134 BOOBA 15 20





# Misschien livestream continu genereren
# Misschien shorts genereren
# 100+ filmpjes genereren en inplannen
# weekly video plannen met Best Emotes of the Week

# PEPEGA

from pathlib import Path
import subprocess
import os
import sys
import json
import numpy as np

def main():
    vid_id = sys.argv[1]
    emote = sys.argv[2]
    vid_count = sys.argv[3]
    vid_length = sys.argv[4]


    commands = []
    commands.append('cls')
    commands.append('if not exist "output\{0}" mkdir "output\{0}"'.format(vid_id))

    process = subprocess.Popen('if not exist "bin\ChatDownloads\{0}.json" bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id {0} -o "bin\ChatDownloads\{0}.json"'.format(vid_id), shell=True)
    process.wait()


    chatcomplete = json.load(open('bin\ChatDownloads\{0}.json'.format(vid_id), encoding='utf-8'))
    emoteCount = {}
    for comment in chatcomplete['comments']:
        timeframe = 15 # in seconds
        timestamp = timeframe * round(int(comment['content_offset_seconds'])/timeframe)
        chat = comment['message']['body']

        if chat != None and emote in chat:
            if timestamp not in emoteCount:
                emoteCount[timestamp] = 1
            else:
                emoteCount[timestamp] = emoteCount[timestamp] + 1

    emote_return = str(sorted(emoteCount, key=emoteCount.get, reverse=True)[:int(vid_count)])[1:-1].replace(" ","")

    commands.append('@echo off > tmpVideoRender.txt')
    for val in emote_return.split(','):
        begin_time  = int(val) - int(( int(vid_length)/2 ))
        end_time    = int(val) + int(( int(vid_length)/2 ))

        # begin_time  = int(val)
        # end_time    = int(val) + int(vid_length)

        # If clip doesnt exist, hasnt been downloaded before
        commands.append('mkdir "output\{0}\clip_{1}_{2}"'.format(vid_id,begin_time,end_time))
        commands.append('bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id {0} -b {1} -e {2} --embed-emotes -o output\{0}\clip_{1}_{2}\chat_{1}_{2}.json'.format(vid_id,begin_time,end_time))
        commands.append('bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatRender -i output\{0}\clip_{1}_{2}\chat_{1}_{2}.json -h 1080 -w 300 --framerate 60 --outline --font-size 20 --sub-messages false --badges false --username-fontstyle normal --background-color "#0000ff" -o output\{0}\clip_{1}_{2}\chatrender_{1}_{2}.mp4'.format(vid_id,begin_time,end_time))
        commands.append('bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m VideoDownload --id {0} -b {1} -e {2} -o output\{0}\clip_{1}_{2}\clip_{1}_{2}.mp4'.format(vid_id,begin_time,end_time))
        commands.append('ffmpeg -i output\{0}\clip_{1}_{2}\clip_{1}_{2}.mp4 -i output\{0}\clip_{1}_{2}\chatrender_{1}_{2}.mp4 -filter_complex "[1:v]colorkey=0x0000ff:0.2:0.5[ckout];[0:a]aresample=44100;[0:v][ckout]overlay=1620:0[out]" -map "[out]" output\{0}\clip_{1}_{2}\\videorender_{1}_{2}.mp4'.format(vid_id,begin_time,end_time))

        commands.append("echo file 'output\{0}\clip_{1}_{2}\\videorender_{1}_{2}.mp4' >> tmpVideoRender.txt".format(vid_id,begin_time,end_time))

    commands.append('ffmpeg -f concat -safe 0 -i tmpVideoRender.txt -c copy "output\{0}\{1}_{0}_{2}_{3}.mp4"'.format(vid_id,emote,vid_count,vid_length))
    commands.append('del /f tmpVideoRender.txt')

    for index, command in enumerate(commands):
        commands[index] = command + "\n"

    f = open("EmoteTV.bat", "w")
    f.writelines(commands)
    f.close()

    p = subprocess.Popen(".\EmoteTV.bat")
    stdout, stderr = p.communicate()

    commands.append('del /f EmoteTV.bat')

if __name__ == "__main__":
    main()
