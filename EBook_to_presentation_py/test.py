import os
from gtts import gTTS

text1 = 'Your sentence requiring text to speech'
file_path = 'text.mp3'

while not os.path.exists(file_path) or os.path.getsize(file_path) == 0:
    language = 'en'
    speech = gTTS(text = text1, lang = language, slow = False)
    speech.save("1.mp3")
