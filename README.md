# Chronometer Adimo Edition ✨
**Version:** 0.21  
**Game:** Turtle WoW  
**Status:** Active development

Chronometer with TWoW additions for clear, reliable timer tracking. Built on Ace2 with CandyBar for smooth, readable bars.

## ⚡ Highlights
- Rogue poisons support with charge bars and weapon poison status
- Talent-based duration scaling where relevant
- Clean, configurable bar presentation

## 🧭 Install
1. Remove the “-master” suffix from the folder name.
2. Place it in `/Interface/AddOns/Chronometer/`.
3. Ensure `Chronometer.toc` is in that folder.

## 🛠 Commands
- **/chron config** — Shows a GUI configuration for Chronometer
- **/chron anchor** — Shows or hides the anchor to which Chronometer's timer bars are attached
- **/chron bar** — CandyBar display options
- **/chron bar scale** — Sets the scale of Chronometer's timer bars
- **/chron bar growth** — If toggled true, Chronometer's bars appear above the anchor and grow upwards. If toggled false, Chronometer's bars appear below the anchor and grow downwards.
- **/chron bar texture** — Sets the texture used for the bars
- **/chron bar reverse** — Toggles reversing the bars (filling up instead of emptying out).
- **/chron bar bgalpha** — Sets the transparency of the bar background.
- **/chron bar bgcolor** — Sets the color of the bar background.
- **/chron bar color** — Sets the default bar color (may be overridden for certain spells).
- **/chron bar height** — Sets the height of the bars.
- **/chron bar text-color** — Sets the color of the bar text.
- **/chron bar text-size** — Sets the size of the bar text.
- **/chron bar width** — Sets the width of the bars.
- **/chron bar text** — Sets the text to be displayed on the bar. Use $s for spell name and $t for the target's name.
- **/chron test** — Runs some test bars so that you can adjust the other options more easily
- **/chron kill** — If toggled true, Chronometer will stop bars when the NPC or player the spell was cast on dies. When there are multiple NPCs with the same name, this becomes very inaccurate, since it has no way of knowing if the one that died was the same one that you cast the spell on initially. If toggled false, deaths will not stop bars.
- **/chron fade** — If toggled true, Chronometer will stop bars when the spell fades from the NPC of player it was cast on. As with the kill option, multiple NPCs with the same name will make this option less accurate.
- **/chron ghost** — Sets the amount of time that ghost bars stay around. This is useful for seeing which spells have recently faded, and allows you to more easily recast the spell using Chronometer's bar-click functions.
- **/chron self** — Toggles bars for spell durations on the player. Some people didn't want to see these, since they already use another add-on like EBB to give them self-buff/de-buff bars.

## 🧾 Change Log
- **v0.21 - Adimo**
  - Update for rogue poisons and classes.
- **v0.20 - Adimo**
  - Rogue poisons support expanded with timers, charge bars, and weapon poison status.
  - Taste for Blood and Rupture talent scaling updates.
  - Direct icon paths for Turtle WoW compatibility.

## 🤝 Contributors
- Seongya
- DrOmida
