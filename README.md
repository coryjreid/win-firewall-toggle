# Windows Firewall Rule Toggle

This is a simple Batch Script which is meant to toggle the enabled state of a 
rule defined in Windows Firewall. It assumes the rule is titled `GTAV_Block` 
(see next paragraph for why) but a single rule name can be passed to the script 
via an argument defined in a shortcut or via the command line. This Batch file 
was converted to an executable to allow quicker running of the script. It was 
converted using [Bat To Exe Converter](http://www.f2ko.de/en/b2e.php)
 by F2KO Software. Administrative privileges are required to change firewall 
 settings, so the exe requests elevated privileges by default.

This was made to toggle a rule for GTAV so that a solo public lobby can be 
maintained for grinding CEO work without getting griefed. As such, by default 
the script assume you're trying to toggle a rule titled `GTAV_Block`. Info
regarding the creation of this firewall rule was found in the /r/gtaonline 
Reddit. 

https://www.reddit.com/r/gtaonline/comments/4n8094/tip_if_you_are_on_pc_block_these_ports_using_your/

# Usage

Download the compiled `exe` from the release folder of this repo and run the 
executable. 

**or**

Download the `.bat` file, right-click, and run as Administrator.
