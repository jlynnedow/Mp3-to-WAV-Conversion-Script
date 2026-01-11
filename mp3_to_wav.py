from pydub import AudioSegment
import ffmpeg
import sys


def mp3_to_wav(mp3, wav):
    sound = AudioSegment.from_mp3(mp3)
    sound.export(wav, format="wav")


def main():
    mp3 = sys.argv[1]
    wavName = mp3[1:mp3.length()-4]
    wavName += ".wav"
    wav = open(wavName, "x")
    mp3_to_wav(mp3, wavName)