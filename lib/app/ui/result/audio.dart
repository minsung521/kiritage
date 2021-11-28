import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioPlayerWidget extends StatefulWidget {
  final String url;
  final bool isAsset;
  const AudioPlayerWidget({
    Key? key,
    required this.url,
    this.isAsset = false,
  }) : super(key: key);
  @override
  _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  late AudioPlayer _audioPlayer;
  late AudioCache _audioCache;
  PlayerState _playerState = PlayerState.STOPPED;
  bool get _isPlaying => _playerState == PlayerState.PLAYING;
  bool get _isLocal => !widget.url.contains('https');
  @override
  void initState() {
    _audioPlayer = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
    _audioCache = AudioCache(fixedPlayer: _audioPlayer);

    _audioPlayer.onPlayerError.listen((msg) {
      print('audioPlayer error : $msg');
      setState(() {
        _playerState = PlayerState.STOPPED;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  _playPause() async {
    if (_playerState == PlayerState.PLAYING) {
      final playerResult = await _audioPlayer.pause();
      if (playerResult == 1) {
        setState(() {
          _playerState = PlayerState.PAUSED;
        });
      }
    } else if (_playerState == PlayerState.PAUSED) {
      final playerResult = await _audioPlayer.resume();
      if (playerResult == 1) {
        setState(() {
          _playerState = PlayerState.PLAYING;
        });
      }
    } else {
      if (widget.isAsset) {
        _audioPlayer = await _audioCache.play(widget.url);
        setState(() {
          _playerState = PlayerState.PLAYING;
        });
      } else {
        final playerResult =
            await _audioPlayer.play(widget.url, isLocal: _isLocal);
        if (playerResult == 1) {
          setState(() {
            _playerState = PlayerState.PLAYING;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          _playPause();
        },
        child: Text("재생/멈춤"));
  }
}
