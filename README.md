# HTML Alarm Pill for Elders

I have a situation that my elder parents need to take specific pills at multiple specific times every day, and sometimes they forget to take them at the right time, or take the wrong ones.

This is just a specially crafted HTML webpage that simulates an alarm clock at 8:00am, 1:30pm, 4:00pm and 9:00pm.  
Each alarm displays the right pills to be taken, along with a unique color background and voice-over instructions.  

Recorded demo:

  <iframe title="YouTube video player" width="480" height="390" src="https://www.youtube.com/watch?v=sb1Q4RrGAXU" frameborder="0" allowfullscreen></iframe>

It's all hardcoded and badly coded by now, but can be easily customized.  

## Requirements

A device capable of running Chrome (at least Android 4.0).  

## Setup

The easiest way to run it on a android device is to `adb push` everything.  

### To compile .coffee files into .js files:
  `coffe -cwb .`  

### To make google translator generate mp3 files of the sentences, ready for "save as":

#### jejum.mp3 (yes, it's required to write _gejum_, not _jejum_ to get the correct audio):
http://translate.google.com/translate_tts?tl=pt-BR&q=%228%20horas,%20hora%20do%20rem%C3%A9dio%20do%20gejum.Paulo%20e%20Teresa%20devem%20tomar.%22

#### manha.mp3:
http://translate.google.com/translate_tts?tl=pt-BR&q=%229%20horas.%20Hora%20do%20rem%C3%A9dio%20da%20manh%C3%A3.%20Somente%20o%20Paulo%20deve%20tomar.%20Comece%20pelo%20de%20respirar%22

#### almoco.mp3:
http://translate.google.com/translate_tts?tl=pt-BR&q=%2213%20horas.%20Hora%20do%20rem%C3%A9dio%20do%20alm%C3%B4%C3%A7o.%20Somente%20o%20Paulo%20deve%20tomar%22

#### tarde.mp3:
http://translate.google.com/translate_tts?tl=pt-BR&q=16%20horas.%20Hora%20do%20rem%C3%A9dio%20da%20tarde.%20Somente%20o%20Paulo%20deve%20tomar

#### noite.mp3:
http://translate.google.com/translate_tts?tl=pt-BR&q=21%20horas.%20Hora%20do%20rem%C3%A9dio%20da%20noite.%20Somente%20o%20Paulo%20deve%20tomar

## Next steps:

- Code cleanup / refactoring;
- Make it customizable without coding;
- Replace mp3 files by text-to-speech;
- Make it an apk, putting it on some container like Phonegap?;
- Add a license to this project.

## License

Copyright (c) 2011-2014 Paulo Henrique Deléo, released under the MIT license.