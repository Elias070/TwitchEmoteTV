cls
if not exist "output\1287279952" mkdir "output\1287279952"
@echo off > tmpVideoRender.txt
mkdir "output\1287279952\clip_860_880"
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id 1287279952 -b 860 -e 880 --embed-emotes -o output\1287279952\clip_860_880\chat_860_880.json
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatRender -i output\1287279952\clip_860_880\chat_860_880.json -h 1080 -w 300 --framerate 60 --outline --font-size 20 --sub-messages false --badges false --username-fontstyle normal --background-color "#0000ff" -o output\1287279952\clip_860_880\chatrender_860_880.mp4
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m VideoDownload --id 1287279952 -b 860 -e 880 -o output\1287279952\clip_860_880\clip_860_880.mp4
ffmpeg -i output\1287279952\clip_860_880\clip_860_880.mp4 -i output\1287279952\clip_860_880\chatrender_860_880.mp4 -filter_complex "[1:v]colorkey=0x0000ff:0.2:0.5[ckout];[0:a]aresample=44100;[0:v][ckout]overlay=1620:0[out]" -map "[out]" output\1287279952\clip_860_880\videorender_860_880.mp4
echo file 'output\1287279952\clip_860_880\videorender_860_880.mp4' >> tmpVideoRender.txt
mkdir "output\1287279952\clip_7850_7870"
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id 1287279952 -b 7850 -e 7870 --embed-emotes -o output\1287279952\clip_7850_7870\chat_7850_7870.json
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatRender -i output\1287279952\clip_7850_7870\chat_7850_7870.json -h 1080 -w 300 --framerate 60 --outline --font-size 20 --sub-messages false --badges false --username-fontstyle normal --background-color "#0000ff" -o output\1287279952\clip_7850_7870\chatrender_7850_7870.mp4
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m VideoDownload --id 1287279952 -b 7850 -e 7870 -o output\1287279952\clip_7850_7870\clip_7850_7870.mp4
ffmpeg -i output\1287279952\clip_7850_7870\clip_7850_7870.mp4 -i output\1287279952\clip_7850_7870\chatrender_7850_7870.mp4 -filter_complex "[1:v]colorkey=0x0000ff:0.2:0.5[ckout];[0:a]aresample=44100;[0:v][ckout]overlay=1620:0[out]" -map "[out]" output\1287279952\clip_7850_7870\videorender_7850_7870.mp4
echo file 'output\1287279952\clip_7850_7870\videorender_7850_7870.mp4' >> tmpVideoRender.txt
mkdir "output\1287279952\clip_8735_8755"
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id 1287279952 -b 8735 -e 8755 --embed-emotes -o output\1287279952\clip_8735_8755\chat_8735_8755.json
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatRender -i output\1287279952\clip_8735_8755\chat_8735_8755.json -h 1080 -w 300 --framerate 60 --outline --font-size 20 --sub-messages false --badges false --username-fontstyle normal --background-color "#0000ff" -o output\1287279952\clip_8735_8755\chatrender_8735_8755.mp4
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m VideoDownload --id 1287279952 -b 8735 -e 8755 -o output\1287279952\clip_8735_8755\clip_8735_8755.mp4
ffmpeg -i output\1287279952\clip_8735_8755\clip_8735_8755.mp4 -i output\1287279952\clip_8735_8755\chatrender_8735_8755.mp4 -filter_complex "[1:v]colorkey=0x0000ff:0.2:0.5[ckout];[0:a]aresample=44100;[0:v][ckout]overlay=1620:0[out]" -map "[out]" output\1287279952\clip_8735_8755\videorender_8735_8755.mp4
echo file 'output\1287279952\clip_8735_8755\videorender_8735_8755.mp4' >> tmpVideoRender.txt
mkdir "output\1287279952\clip_17360_17380"
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id 1287279952 -b 17360 -e 17380 --embed-emotes -o output\1287279952\clip_17360_17380\chat_17360_17380.json
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatRender -i output\1287279952\clip_17360_17380\chat_17360_17380.json -h 1080 -w 300 --framerate 60 --outline --font-size 20 --sub-messages false --badges false --username-fontstyle normal --background-color "#0000ff" -o output\1287279952\clip_17360_17380\chatrender_17360_17380.mp4
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m VideoDownload --id 1287279952 -b 17360 -e 17380 -o output\1287279952\clip_17360_17380\clip_17360_17380.mp4
ffmpeg -i output\1287279952\clip_17360_17380\clip_17360_17380.mp4 -i output\1287279952\clip_17360_17380\chatrender_17360_17380.mp4 -filter_complex "[1:v]colorkey=0x0000ff:0.2:0.5[ckout];[0:a]aresample=44100;[0:v][ckout]overlay=1620:0[out]" -map "[out]" output\1287279952\clip_17360_17380\videorender_17360_17380.mp4
echo file 'output\1287279952\clip_17360_17380\videorender_17360_17380.mp4' >> tmpVideoRender.txt
mkdir "output\1287279952\clip_800_820"
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id 1287279952 -b 800 -e 820 --embed-emotes -o output\1287279952\clip_800_820\chat_800_820.json
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatRender -i output\1287279952\clip_800_820\chat_800_820.json -h 1080 -w 300 --framerate 60 --outline --font-size 20 --sub-messages false --badges false --username-fontstyle normal --background-color "#0000ff" -o output\1287279952\clip_800_820\chatrender_800_820.mp4
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m VideoDownload --id 1287279952 -b 800 -e 820 -o output\1287279952\clip_800_820\clip_800_820.mp4
ffmpeg -i output\1287279952\clip_800_820\clip_800_820.mp4 -i output\1287279952\clip_800_820\chatrender_800_820.mp4 -filter_complex "[1:v]colorkey=0x0000ff:0.2:0.5[ckout];[0:a]aresample=44100;[0:v][ckout]overlay=1620:0[out]" -map "[out]" output\1287279952\clip_800_820\videorender_800_820.mp4
echo file 'output\1287279952\clip_800_820\videorender_800_820.mp4' >> tmpVideoRender.txt
mkdir "output\1287279952\clip_1175_1195"
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id 1287279952 -b 1175 -e 1195 --embed-emotes -o output\1287279952\clip_1175_1195\chat_1175_1195.json
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatRender -i output\1287279952\clip_1175_1195\chat_1175_1195.json -h 1080 -w 300 --framerate 60 --outline --font-size 20 --sub-messages false --badges false --username-fontstyle normal --background-color "#0000ff" -o output\1287279952\clip_1175_1195\chatrender_1175_1195.mp4
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m VideoDownload --id 1287279952 -b 1175 -e 1195 -o output\1287279952\clip_1175_1195\clip_1175_1195.mp4
ffmpeg -i output\1287279952\clip_1175_1195\clip_1175_1195.mp4 -i output\1287279952\clip_1175_1195\chatrender_1175_1195.mp4 -filter_complex "[1:v]colorkey=0x0000ff:0.2:0.5[ckout];[0:a]aresample=44100;[0:v][ckout]overlay=1620:0[out]" -map "[out]" output\1287279952\clip_1175_1195\videorender_1175_1195.mp4
echo file 'output\1287279952\clip_1175_1195\videorender_1175_1195.mp4' >> tmpVideoRender.txt
mkdir "output\1287279952\clip_14330_14350"
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id 1287279952 -b 14330 -e 14350 --embed-emotes -o output\1287279952\clip_14330_14350\chat_14330_14350.json
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatRender -i output\1287279952\clip_14330_14350\chat_14330_14350.json -h 1080 -w 300 --framerate 60 --outline --font-size 20 --sub-messages false --badges false --username-fontstyle normal --background-color "#0000ff" -o output\1287279952\clip_14330_14350\chatrender_14330_14350.mp4
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m VideoDownload --id 1287279952 -b 14330 -e 14350 -o output\1287279952\clip_14330_14350\clip_14330_14350.mp4
ffmpeg -i output\1287279952\clip_14330_14350\clip_14330_14350.mp4 -i output\1287279952\clip_14330_14350\chatrender_14330_14350.mp4 -filter_complex "[1:v]colorkey=0x0000ff:0.2:0.5[ckout];[0:a]aresample=44100;[0:v][ckout]overlay=1620:0[out]" -map "[out]" output\1287279952\clip_14330_14350\videorender_14330_14350.mp4
echo file 'output\1287279952\clip_14330_14350\videorender_14330_14350.mp4' >> tmpVideoRender.txt
mkdir "output\1287279952\clip_2075_2095"
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id 1287279952 -b 2075 -e 2095 --embed-emotes -o output\1287279952\clip_2075_2095\chat_2075_2095.json
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatRender -i output\1287279952\clip_2075_2095\chat_2075_2095.json -h 1080 -w 300 --framerate 60 --outline --font-size 20 --sub-messages false --badges false --username-fontstyle normal --background-color "#0000ff" -o output\1287279952\clip_2075_2095\chatrender_2075_2095.mp4
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m VideoDownload --id 1287279952 -b 2075 -e 2095 -o output\1287279952\clip_2075_2095\clip_2075_2095.mp4
ffmpeg -i output\1287279952\clip_2075_2095\clip_2075_2095.mp4 -i output\1287279952\clip_2075_2095\chatrender_2075_2095.mp4 -filter_complex "[1:v]colorkey=0x0000ff:0.2:0.5[ckout];[0:a]aresample=44100;[0:v][ckout]overlay=1620:0[out]" -map "[out]" output\1287279952\clip_2075_2095\videorender_2075_2095.mp4
echo file 'output\1287279952\clip_2075_2095\videorender_2075_2095.mp4' >> tmpVideoRender.txt
mkdir "output\1287279952\clip_9890_9910"
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id 1287279952 -b 9890 -e 9910 --embed-emotes -o output\1287279952\clip_9890_9910\chat_9890_9910.json
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatRender -i output\1287279952\clip_9890_9910\chat_9890_9910.json -h 1080 -w 300 --framerate 60 --outline --font-size 20 --sub-messages false --badges false --username-fontstyle normal --background-color "#0000ff" -o output\1287279952\clip_9890_9910\chatrender_9890_9910.mp4
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m VideoDownload --id 1287279952 -b 9890 -e 9910 -o output\1287279952\clip_9890_9910\clip_9890_9910.mp4
ffmpeg -i output\1287279952\clip_9890_9910\clip_9890_9910.mp4 -i output\1287279952\clip_9890_9910\chatrender_9890_9910.mp4 -filter_complex "[1:v]colorkey=0x0000ff:0.2:0.5[ckout];[0:a]aresample=44100;[0:v][ckout]overlay=1620:0[out]" -map "[out]" output\1287279952\clip_9890_9910\videorender_9890_9910.mp4
echo file 'output\1287279952\clip_9890_9910\videorender_9890_9910.mp4' >> tmpVideoRender.txt
mkdir "output\1287279952\clip_785_805"
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id 1287279952 -b 785 -e 805 --embed-emotes -o output\1287279952\clip_785_805\chat_785_805.json
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatRender -i output\1287279952\clip_785_805\chat_785_805.json -h 1080 -w 300 --framerate 60 --outline --font-size 20 --sub-messages false --badges false --username-fontstyle normal --background-color "#0000ff" -o output\1287279952\clip_785_805\chatrender_785_805.mp4
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m VideoDownload --id 1287279952 -b 785 -e 805 -o output\1287279952\clip_785_805\clip_785_805.mp4
ffmpeg -i output\1287279952\clip_785_805\clip_785_805.mp4 -i output\1287279952\clip_785_805\chatrender_785_805.mp4 -filter_complex "[1:v]colorkey=0x0000ff:0.2:0.5[ckout];[0:a]aresample=44100;[0:v][ckout]overlay=1620:0[out]" -map "[out]" output\1287279952\clip_785_805\videorender_785_805.mp4
echo file 'output\1287279952\clip_785_805\videorender_785_805.mp4' >> tmpVideoRender.txt
mkdir "output\1287279952\clip_875_895"
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id 1287279952 -b 875 -e 895 --embed-emotes -o output\1287279952\clip_875_895\chat_875_895.json
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatRender -i output\1287279952\clip_875_895\chat_875_895.json -h 1080 -w 300 --framerate 60 --outline --font-size 20 --sub-messages false --badges false --username-fontstyle normal --background-color "#0000ff" -o output\1287279952\clip_875_895\chatrender_875_895.mp4
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m VideoDownload --id 1287279952 -b 875 -e 895 -o output\1287279952\clip_875_895\clip_875_895.mp4
ffmpeg -i output\1287279952\clip_875_895\clip_875_895.mp4 -i output\1287279952\clip_875_895\chatrender_875_895.mp4 -filter_complex "[1:v]colorkey=0x0000ff:0.2:0.5[ckout];[0:a]aresample=44100;[0:v][ckout]overlay=1620:0[out]" -map "[out]" output\1287279952\clip_875_895\videorender_875_895.mp4
echo file 'output\1287279952\clip_875_895\videorender_875_895.mp4' >> tmpVideoRender.txt
mkdir "output\1287279952\clip_2420_2440"
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id 1287279952 -b 2420 -e 2440 --embed-emotes -o output\1287279952\clip_2420_2440\chat_2420_2440.json
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatRender -i output\1287279952\clip_2420_2440\chat_2420_2440.json -h 1080 -w 300 --framerate 60 --outline --font-size 20 --sub-messages false --badges false --username-fontstyle normal --background-color "#0000ff" -o output\1287279952\clip_2420_2440\chatrender_2420_2440.mp4
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m VideoDownload --id 1287279952 -b 2420 -e 2440 -o output\1287279952\clip_2420_2440\clip_2420_2440.mp4
ffmpeg -i output\1287279952\clip_2420_2440\clip_2420_2440.mp4 -i output\1287279952\clip_2420_2440\chatrender_2420_2440.mp4 -filter_complex "[1:v]colorkey=0x0000ff:0.2:0.5[ckout];[0:a]aresample=44100;[0:v][ckout]overlay=1620:0[out]" -map "[out]" output\1287279952\clip_2420_2440\videorender_2420_2440.mp4
echo file 'output\1287279952\clip_2420_2440\videorender_2420_2440.mp4' >> tmpVideoRender.txt
mkdir "output\1287279952\clip_14555_14575"
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id 1287279952 -b 14555 -e 14575 --embed-emotes -o output\1287279952\clip_14555_14575\chat_14555_14575.json
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatRender -i output\1287279952\clip_14555_14575\chat_14555_14575.json -h 1080 -w 300 --framerate 60 --outline --font-size 20 --sub-messages false --badges false --username-fontstyle normal --background-color "#0000ff" -o output\1287279952\clip_14555_14575\chatrender_14555_14575.mp4
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m VideoDownload --id 1287279952 -b 14555 -e 14575 -o output\1287279952\clip_14555_14575\clip_14555_14575.mp4
ffmpeg -i output\1287279952\clip_14555_14575\clip_14555_14575.mp4 -i output\1287279952\clip_14555_14575\chatrender_14555_14575.mp4 -filter_complex "[1:v]colorkey=0x0000ff:0.2:0.5[ckout];[0:a]aresample=44100;[0:v][ckout]overlay=1620:0[out]" -map "[out]" output\1287279952\clip_14555_14575\videorender_14555_14575.mp4
echo file 'output\1287279952\clip_14555_14575\videorender_14555_14575.mp4' >> tmpVideoRender.txt
mkdir "output\1287279952\clip_18245_18265"
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id 1287279952 -b 18245 -e 18265 --embed-emotes -o output\1287279952\clip_18245_18265\chat_18245_18265.json
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatRender -i output\1287279952\clip_18245_18265\chat_18245_18265.json -h 1080 -w 300 --framerate 60 --outline --font-size 20 --sub-messages false --badges false --username-fontstyle normal --background-color "#0000ff" -o output\1287279952\clip_18245_18265\chatrender_18245_18265.mp4
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m VideoDownload --id 1287279952 -b 18245 -e 18265 -o output\1287279952\clip_18245_18265\clip_18245_18265.mp4
ffmpeg -i output\1287279952\clip_18245_18265\clip_18245_18265.mp4 -i output\1287279952\clip_18245_18265\chatrender_18245_18265.mp4 -filter_complex "[1:v]colorkey=0x0000ff:0.2:0.5[ckout];[0:a]aresample=44100;[0:v][ckout]overlay=1620:0[out]" -map "[out]" output\1287279952\clip_18245_18265\videorender_18245_18265.mp4
echo file 'output\1287279952\clip_18245_18265\videorender_18245_18265.mp4' >> tmpVideoRender.txt
mkdir "output\1287279952\clip_845_865"
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id 1287279952 -b 845 -e 865 --embed-emotes -o output\1287279952\clip_845_865\chat_845_865.json
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatRender -i output\1287279952\clip_845_865\chat_845_865.json -h 1080 -w 300 --framerate 60 --outline --font-size 20 --sub-messages false --badges false --username-fontstyle normal --background-color "#0000ff" -o output\1287279952\clip_845_865\chatrender_845_865.mp4
bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m VideoDownload --id 1287279952 -b 845 -e 865 -o output\1287279952\clip_845_865\clip_845_865.mp4
ffmpeg -i output\1287279952\clip_845_865\clip_845_865.mp4 -i output\1287279952\clip_845_865\chatrender_845_865.mp4 -filter_complex "[1:v]colorkey=0x0000ff:0.2:0.5[ckout];[0:a]aresample=44100;[0:v][ckout]overlay=1620:0[out]" -map "[out]" output\1287279952\clip_845_865\videorender_845_865.mp4
echo file 'output\1287279952\clip_845_865\videorender_845_865.mp4' >> tmpVideoRender.txt
ffmpeg -f concat -safe 0 -i tmpVideoRender.txt -c copy "output\1287279952\BOOBA_1287279952_15_20.mp4"
del /f tmpVideoRender.txt
