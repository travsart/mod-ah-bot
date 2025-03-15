## Description

A fork of the auction house bot for AzerothCore.  This fork gives a much more blizzlike experience in the offerings on the auction house.  Most notable differences:
 - Things like Glyphs show up
 - Auction item stack sizes are customizable and more 'realistic'
 - The buyer bot's buying amounts and behavior was changed substantially
 - A separate set of exclusion item IDs was added to have crafted items listed, to encourage gathing professions.
	- Empty the list to have crafted goods appear in the AH, or use other IDs you want to keep separate
 - Moved database configuration completely to config

New: Added MarketPrice and MarketResetThreshold where prices will fluctuate with the market

## Installation

```
1. Simply place the module under the `modules` directory of your AzerothCore source. 
2. Re-run cmake and launch a clean build of AzerothCore.
```

## Usage

Edit the module configuration and add a character GUID ID to the "AuctionHouseBot.GUIDs" variable, which is sourced from your character table in the character database.  These names will be visable in the auction house, so pick good names.  Find the configuration as named mod_ahbot.conf.dist / mod_ahbot.conf

Notes:
- These accounts do not need any security level and can be a player accounts.
- The characters used by the ahbot are not meant to be used ingame. If you use it to browse the auction house, you might have issues like "Searching for items..." displaying forever.
- Important!  By default, most player crafted items (except glyphs, bolts, maybe a few other things) are disabled from showing up in the auction house in order to encourage player crafting on lower pop servers.  If you want different behavior, alter the config variable "AuctionHouseBot.DisabledCraftedItemIDs" by deleting IDs you wish to show up.  Note that fish are also disabled to encourage fishing, and that's also managed by disabled lists.
- It takes a few hours for the auction house to fully populate, as only 75 items gets added by default every 'tick'.  You can change this in the config with the AuctionHouseBot.ItemsPerCycle variable.

## Credits

- NathanHandley: Created this rewrite of the one that was ported to AzerothCore
- Ayase: ported the bot to AzerothCore
- Other contributors (check the contributors list)
