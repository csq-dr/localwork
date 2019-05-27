## Generative vs discriminative
https://stats.stackexchange.com/questions/12421/generative-vs-discriminative

## ffmpeg
`ffmpeg -i <input file> -vf scale=360:-1 -crf 24 <output file>`
+ `-vf scale=360:-1` 修改分辨率，-1是自动决定
+ `-crf 24` 似乎是压缩码率？数字越大压缩率越高
