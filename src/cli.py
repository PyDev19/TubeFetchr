import argparse
from sys import exit

from yt_dlp import YoutubeDL
from yt_dlp.utils import DownloadError

parser = argparse.ArgumentParser(description="PyTube cli app for TubeFetchr")

parser.add_argument("-l", "--link", help="Youtube video link")
parser.add_argument("-e", "--extension", help="file extension")
parser.add_argument("-p", "--path", help="Path to download directory")
parser.add_argument("-r", "--resolution", help="Resolution of video")
parser.add_argument("-n", "--name", help="Name of video file, don't include extension")
parser.add_argument("-i", "--info", help="Get information table of video link")

args = parser.parse_args()

filter = {}

if args.link:
    if args.resolution and args.extension:
        resolution = args.resolution
        file_ext = args.extension
    else:
        print("Resolution and video format required")
        exit()

    if args.name:
        if args.path:
            filter["outtmpl"] = f"{args.path}/{args.name}.%(ext)s"
        else:
            filter["outtmpl"] = f"{args.name}.%(ext)s"
    else:
        if args.path:
            filter["outtmpl"] = f"{args.path}/%(title)s.%(ext)s"
        else:
            filter["outtmpl"] = "%(title)s.%(ext)s"

    filter[
        "format"
    ] = f"bestvideo[height<={resolution}][ext={file_ext}]+bestaudio[ext=m4a]/best[height<={resolution}][ext={file_ext}]/best[height<={resolution}]"

    try:
        yt = YoutubeDL(filter)
        yt.download(args.link)
    except DownloadError:
        print("Video is not available in that resolution or format. Try changing the resolution or format values")

elif args.info:
    yt = YoutubeDL({})

    info = yt.extract_info(args.info, download=False)
    formats = info["formats"]
    resolutions = []
    extensions = []
    for format in formats:
        resolution = format["resolution"]
        extension = format["ext"]
        extensions.append(extension)
        if resolution != "audio only":
            resolution = resolution.split("x")[1]
            resolutions.append(resolution)

    resolutions = list(set(resolutions))
    resolutions.sort(key=int)

    extensions = list(set(extensions))
    print(resolutions)
    print(extensions)
else:
    print("Video link is required")
    exit()
