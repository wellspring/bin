#!/bin/sh
# Usage: tvremote.ls <dir>
#   e.g. tvremote.ls plugin://plugin.video.youtube/
#   e.g. tvremote.ls /storage/videos/     -- NOTE: you should add the source on kodi first!
tvremote.send Files.GetDirectory directory="$1" | jq -r '.result.files[] | (if .filetype == "directory" then "\\x1b[36m" else "\\x1b[37m" end)+" > "+.label+"|"+.file' | sed 's/\\x1b/\x1b/g' | /usr/bin/column -ts '|'
