#!/usr/bin/env osascript
# Returns the current playing song in iTunes for OSX

if application "iTunes" is running then
  tell application "iTunes"
    if player state is playing then
      set track_name to name of current track
      set artist_name to artist of current track
      #     set album_name to album of current track
      set trim_length to 40
      set now_playing to "♫ " & artist_name & " - " & track_name
      if length of now_playing is less than trim_length then
        set now_playing_trim to now_playing
      else
        set now_playing_trim to characters 1 thru trim_length of now_playing as string
      end if
    end if
  end tell
end if
