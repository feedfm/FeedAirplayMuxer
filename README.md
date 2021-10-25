# FeedAirplayMuxer
Muxer used on top of Feed iOS SDK for airplay purposes.

Demo Project --> https://github.com/feedfm/AirplayDemo

Feed Airplay Muxer is used to combine the video and music audio into a single hls stream that is then loaded in Airplay device instead of dual streams that airplay devices can't play. 

To use the library, 

1. Add to your podfile   `pod 'AirplayMuxer'` run Pod install and import the framework by #import <AirplayMuxer/AirplayManager.h>
2. Initialize FeedSDK as you would regurlaly. 
3. Create a new AirplayManager instance, and call registerAirplayDelegate with Feedfm station and settings. 
4. Implement the AirplayDelagate to get notifications of when the airplay starts and stops. The AirplayManager will automatically take over the playback when Airplay starts.
5. Once the Video is finished playing the AirplayManager instance should be discarded and a new one should be created for every video that starts playback. 




 
