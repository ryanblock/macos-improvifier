# macOS improvifier

> A collection of hidden settings that makes Macs feel (and run) a bit faster

Over the last few decades, the folks at Apple have pioneered an enormous number of friendly, cute, fun, and often elegant details into their software – especially macOS, their most mature operating system.

Unfortunately, a great many of these details confer a diminished experience for more experienced users, who require maximal responsiveness and reduced barriers to operating at the speed of thought.

This shell script includes a curated list of [`defaults write`](https://ss64.com/osx/defaults.html) commands that strip out many of the small animations and delays that make every Mac feel just a wee bit slower. It also adds a number of (hopefully) helpful hidden defaults / options across the Finder, Dock and throughout macOS.


## Running macOS improvifications

1. Pull down this repo (or just download `mac-unsuck.sh`)
2. Ensure the shell script is executable on your filesystem
3. Run the shell script (`$ ./mac-unsuck.sh`)
4. Restart your computer


## What it does

### General speed improvements
- Disable window + popover open / close animations
- Speed up showing / hiding sheets, resizing pref windows, zooming windows, etc."
- Speed up closing QL windows
- Hide the dock faster
- Disable dock animations
- Disable Finder animations
- Speed up Mission Control / Exposé animations

### Finder tweaks
- Disable extension change warning (wtf)
- Enable Finder quitting
- Show full posix path in title bar
- Show Finder path bar
- Show all filename extensions
- Limit finder search scope to current dir
- Disable DS_Store
- Select text from QL (no longer seems to work)

### Misc
- Disable download quarantining
- TextEdit defaults to plaintext, not rich text
- Disable TextEdit ruler
- Enable more sensible power / sleep button settings
- Slow down Time Machine backup interval from hourly to every 4 hours
- Send screenshots to desktop subfolder (~/Desktop/Screenshots)
- Disable screenshot shadow
- Dim hidden apps in the dock
- Repeat a letter upon holding a keypress
- Repeat that letter quickly!
- Disable t.co URLs in TweetBot


## Contributing

Your suggestions are welcome. Please PR this repo!
