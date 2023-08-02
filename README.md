LiveSplit.RedFactionArmageddon
=====================

LiveSplit.RedFaction is a [LiveSplit](http://livesplit.org/) ASL for Red Faction Armageddon (Steam) publicbeta branch.

Features
--------
  * Keeps track of Game Time to get rid of loading times.
  * Auto start/stop the timer.
  * Splits when you finish certain splits for Any% and Path To War DLC runs
  
Requirements
-------
* LiveSplit 1.6+
* Red Faction Armageddon (Steam version only - GOG build is different from either Steam build and this does NOT work with GOG version) publicbeta branch

Potential Issues
-------
If running publicbeta in fullscreen mode, LiveSplit sometimes crashes. I do not know whether this is exclusive to my install, or if there is some issue with LiveSplit hooking into the publicbeta build which causes this.
If this issue occurs, you can try running in Windowed mode, which works for me.

Install
-------
Download the ASL to your preferred location on your computer.
Open your LiveSplit and create a split file choosing "Red Faction: Armageddon". You will be notified that there is an autosplitter available.
As this autosplitter does not work on the RF:A publicbeta on Steam, do not activate, or "Deactivate" if already activated.

In your LiveSplit, go to Edit Layout... and add  "Control --> Scriptable AutoSplitter". 
Click "Browse" and point the scriptable autosplitter to whereever you saved the ASL.
Save your layout.

Configure
---------
If you want real time you can leave the splits running as "Real Time". If you want this to remove load times, right-click your LiveSplit instance and choose "Compare Against --> Game Time"

#### Auto Split
The default settings are to automatically start and end the splits (the first and last splits).

Change Log
----------
https://github.com/eckozero/LiveSplit.RedFactionArmageddon/releases

Credits
-------
  * [EckoZero](http://twitch.tv/eckozero1987)
