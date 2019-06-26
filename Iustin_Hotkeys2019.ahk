#Include Spotify.ahk
global VolumePercentage
global ShuffleMode
global RepeatMode := 0
spoofy := new Spotify
VolumePercentage := spoofy.Player.GetCurrentPlaybackInfo().Device.Volume
return


F1::
spoofy.Player.LastTrack() ;

F2::
spoofy.Player.NextTrack() ;

F3::
ShuffleMode := !ShuffleMode
spoofy.Player.SetShuffle(ShuffleMode) ; Swap the shuffle mode of the player
return 

F4::
RepeatMode := RepeatMode + (RepeatMode = 0 ? 1 : (RepeatMode = 1 ? 1 : (RepeatMode = 2 ? 1 : -2)))
spoofy.Player.SetRepeatMode(RepeatMode) ; Cycle through the three repeat modes (1-2, 2-3, 3-1)
return 

F11::
spoofy.Player.SaveCurrentlyPlaying() ;

F12::
spoofy.Player.UnSaveCurrentlyPlaying() ;

;Windows Snipping tool
^+s::Run %windir%\system32\SnippingTool.exe

;Launch Windows Explorer
F10::Run Explorer.exe
