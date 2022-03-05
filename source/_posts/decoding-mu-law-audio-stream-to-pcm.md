title: Decoding mu-law audio stream to PCM
tags:
categories:
- [Software, C]
date: 2006-10-14 19:35:48
lang: en
---

Axis network video cameras (such Axis 214) provide an [API to retrieve audio data over HTTP](http://www2.axis.com/files/developer/camera/audio.pdf).
Different content-types are available. If the MIME type is "audio/basic", the audio data is encoded using [G.711 mu-law](http://en.wikipedia.org/wiki/Mu-law) at 64kbits/s.
This compression transforms 2 bytes of PCM data to 1 byte.

Here is an easy-way to convert the encoded audio data to PCM (to convert to WAV for example) :

<pre>unsigned short mulaw_decode(unsigned char mulaw) { mulaw = ~mulaw;
  int sign = mulaw &amp; 0x80;
  int exponent = (mulaw &amp; 0x70) &gt;&gt; 4;
  int data = mulaw &amp; 0x0f;
 data |= 0x10;
  data &lt;&lt;= 1;
  data += 1;
  data &lt;&lt;= exponent + 2;
  data -= 0x84;
  return (short)(sign == 0 ? data : -data);
}
</pre>