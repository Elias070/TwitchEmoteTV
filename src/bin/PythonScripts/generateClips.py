
vid_id = sys.argv[1]
vid_count = sys.argv[2]

chatcomplete = json.load(open('bin\ChatDownloads\{0}.json'.format(vid_id), encoding='utf-8'))
emoteCount = {}
for comment in chatcomplete['comments']:
    # timestamp rounded by 60
    timestamp = 60 * round(int(comment['content_offset_seconds'])/60)
    chat = comment['message']['body']

    if chat != None and emote in chat:
        if timestamp not in emoteCount:
            emoteCount[timestamp] = 1
        else:
            emoteCount[timestamp] = emoteCount[timestamp] + 1

emote_return = str(sorted(emoteCount, key=emoteCount.get, reverse=True)[:int(vid_count)])[1:-1].replace(" ","")

for val in emote_return.split(','):
    commands.append('mkdir "output\{0}\clip_{1}"'.format(vid_id,int(val)-(vid_length/2)))
    commands.append('bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id {0} -b {1} -e {2} --embed-emotes -o output/{0}/clip_{1}/chat_{1}.json'.format(vid_id,int(val)-(vid_length/2),int(val)+(vid_length/2)))
    commands.append('bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatRender -i output/{0}/clip_{1}/chat_{1}.json -h 1080 -w 300 --framerate 60 --outline --font-size 20 --sub-messages false --badges false --username-fontstyle normal --background-color "#0000ff" -o output/{0}/clip_{1}/chatrender_{1}.mp4'.format(vid_id,int(val)-(vid_length/2)))
    commands.append('bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m VideoDownload --id {0} -b {1} -e {2} -o output/{0}/clip_{1}/clip_{1}.mp4'.format(vid_id,int(val)-(vid_length/2),int(val)+(vid_length/2)))
    commands.append('ffmpeg -i output\{0}\clip_{1}\clip_{1}.mp4 -i output\{0}\clip_{1}\chatrender_{1}.mp4 -filter_complex "[1:v]colorkey=0x0000ff:0.2:0.5[ckout];[0:a]aresample=44100;[0:v][ckout]overlay=1620:0[out]" -map "[out]" output\{0}\clip_{1}\videorender_{1}.mp4'.format(vid_id,int(val)-(vid_length/2)))


print(emote_return)
sys.exit()
