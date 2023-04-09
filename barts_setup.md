---
# YAML metadata
title: "Setup for St Bartholomew's YouTube casting"
author: "Matthew Brett"
date: "26 February 2023"
linkcolor: blue
urlcolor: blue
---

## Background

We have four computer-like things:

* An [iPad Pro (12.9 inch) (4th
  generation)](https://support.apple.com/kb/SP815) with a keyboard (IPAD).
* A [Early 2015 vintage MacBook
  Pro](https://support.apple.com/kb/SP715?locale=en_GB) (MACBOOK).  It has
  2 mini-DVI / Thunderbolt ports and two USB-A USB-3 ports.
* An iPhone 12 (IPHONE 12).
* An iPhone 8 (IPHONE 8).

Call these four — the COMPUTERISHES.

![IPAD](images/ipad_pro.jpg)

![MACBOOK](images/macbook_pro.jpg)

![IPHONE 12](images/iphone_12.jpg)

![IPHONE 8](images/iphone_8.jpg)

The church has WiFi via a Mesh network carried by several Eero Wifi nodes
- call these NODEs.

![NODE](images/eero_node.jpg)

We run the YouTube casting in the following way:

* The IPAD runs [Switcher Studio](https://www.switcherstudio.com/).  This is an
  application from which you can accept and *switch* between video input from
  various sources, to create a live stream.
* The IPAD sends this stream output to YouTube Studio, running from the Safari
  browser on the MACBOOK.  YouTube then transmits this as a live stream to the
  internet via a NODE.
* The IPAD also saves the stream to its local disk storage, for later use.

We use the MACBOOK to display lyrics for songs, liturgy and slides to the
following physical devices in the church:

* A projector, projecting to a screen in front of the pulpit, for the
  congregation.
* A small monitor, pointing towards the chancel, for the clergy to see what the
  rest of us are seeing on the projector screen.

We use the [Proclaim application](https://faithlife.com/products/proclaim) to
control the outputs to the projector and the clergy monitor.

We also use Switcher to pass these outputs to Switcher Studio on the IPAD, via
the network.

Call this output — the PROCLAIM OUTPUT.

The Switcher Studio application runs on the IPAD. It receives the following
inputs:

* Sound input from an external USB sound card — in fact a [Focusrite Scarlett
  2i2](https://focusrite.com/en/usb-audio-interface/scarlett/scarlett-2i2).
  Call this USB SOUND.
* Video camera input via the network from the IPHONE 12.
* Video camera input via the network from the IPHONE 8.
* Video screen input via the network from the MACBOOK PROCLAIM OUTPUT.

![USB SOUND](images/usb_sound.jpg)

In order for Switcher Studio (on the IPAD) to get the video inputs, each of the
IPHONE 12, IPHONE 8 and the MACBOOK run the Switcher Cast application.

For the two IPHONES, we use Switcher Cast to transmit the *camera* video
output.

For the MACBOOK, we use Switcher Cast to transit the PROCLAIM OUTPUT.

### Two options for networking

There are two options for networking in this setup:

1. Fully wireless — WIFI
2. Partly wired  — WIRED

#### WIFI

All COMPUTERISHES join the StBartholomewPrivate Wifi network, carried by the
NODEs.

All network traffic between COMPUTERISHES therefore goes through the nearest Wifi NODE.

This is a _lot_ of network traffic carried on Wifi via the NODE, because we
have:

1. HD camera IPHONE 12 via Switcher Cast to IPAD.
2. HD camera IPHONE 8 via Switcher Cast to IPAD.
3. High resolution PROCLAIM OUTPUT from MACBOOK via Switcher Cast to IPAD.
4. Output video stream from IPAD to MACBOOK
5. YouTube stream from MACBOOK to internet.

As a result, when running this way, you will see many dropped packets and some
freezing on the IPAD Switcher Studio interface, and considerable delay between
the PROCLAIM OUTPUT and the IPAD Switcher Studio view of that output.

It's not clear whether this results in freezing in the YouTube stream.

#### WIRED

Nearly all traffic between the COMPUTERISHES and to the NODE goes via a wired
Ethernet connection, greatly reducing the WiFi traffic to that from the NODE to
internet via the Mesh network.

Our current setup is this:

* The IPAD and the MACBOOK connect directly to the NODE via Ethernet.
* The IPHONE 8 gets its wired network from the MACBOOK via USB using Internet
  Sharing.
* The IPHONE 12 connects via WiFi to the NODE.

With that setup, all camera, video and internet traffic for the IPAD, MACBOOK
and IPHONE 8 goes via wired connections.  In practice the IPHONE 12 connection
via Wifi is stable in this situation, especially so, because you have taken away
most of the Wifi network load with the wired connections. You should see no
dropped packets or freezing on the IPAD Switcher Studio interface.

In what follows, we distinguish steps for the two options: WIFI, and WIRED.

## Setup procedure

* Get small black tripod and church sound cable with 3.5mm jack from behind and
  to the right of the pulpit (right when facing towards the chancel).
* Plug extension cord into socket at the aisle end of the front pew.
* Turn on the socket, confirm the extension block has power lights on.

### Extra network setup if WIRED network

If a Eero NODE is not already plugged in to the power extension block under the
front pew, go find one, unplug it, and plug it into to our power extension
block.  Wait for the light on the NODE to stop flashing, at which point it is
connected to the Mesh network.

### Projector

* Put projector on table.
* It should be directly in front of the screen, because the projector has no
  horizontal keystone settings.  You'll find this means the projector should be
  about half way between the aisle edge of the pew and the pillar.
* Plug VGA cable into projector.
* Plug power cable into projector.
* Connect power cable plug to extension power.
* Turn on projector to let it warm up.

![Projector placement](images/projector_placement.jpg)

### Clergy monitor

* Put on table next to projector screen.  Adjust angle so someone can read it
  from the top of the steps in the chancel.
* Plug power into extension block.

![Clergy monitor](images/clergy_monitor.jpg)

### IPHONE 12

* Turn on phone.  Log in with PIN in blue book.
* Plug lightning to USB-A cable from phone into USB-A power on power extension
  block.
* _Turn on the phone WiFi_.  Connect to StBartholomewPrivate.

### For IPHONE 8

* Turn on phone.  Log in with PIN in blue book.
* If WIFI:
    * _Turn on the phone WiFi_.  Connect to StBartholomewPrivate.
    * Plug lightning to USB-A cable from phone into USB-A power on power
      extension block.
* If WIRED:
    * _Turn off the phone WiFi_.
    * In due course, plug lightning to USB-A cable from phone into USB-A on
      MACBOOK USB-A hub (see below).

### MACBOOK

* Turn on MACBOOK, log in as St Bartholomew's, password in blue book.
* Plug power adapter into extension block, connect other end of power cable
  (magsafe) to MACBOOK.
* If WIFI:
    * Turn on WiFi.
    * Connect WiFi to StBartholomewsPrivate
* If WIRED:
    * Turn off Wifi.
    * Plug in USB-A to 3 x USB-A / Ethernet hub (USB-A HUB).
    * Connect USB-A HUB to the NODE with an Ethernet cable.
    * Go to System Preferences -> Sharing.  Internet sharing options should be
      set to "Share your internet connection from:" — USB 10/100/1000 — "To
      computers using:" — iPhone USB.  Enable internet sharing.
    * Plug lightning to USB-A cable for IPHONE 8 into the USB-A HUB.

![USB-A HUB](images/usb_a_hub.jpg)

* Plug both mini-DVI to VGA adapters into mini-DVI / Thunderbolt ports.
* Plug clergy monitor VGA cable into rear VGA adapter.
* Plug projector VGA cable into front VGA adapter.
* We have set up the configured displays to be:
    1.  The laptop retina display.
    2.  The projector and clergy monitors as one combined external display.
* Start Proclaim.   Go to File -> Open and open the session for the service
  (there should be one prepared).
* In Proclaim, select a slide with text, and click "On Air".  Check you see the
  output on the projector, and on the clergy monitor.

### USB SOUND

* Connect 3.5mm church sound headphone jack to left input.
* Plug USB-C to USB-A cable into USB-C socket at the back of the box.

### IPAD

* Turn on IPAD.
* PIN to log in is in small blue book.
* Connect USB-C hub (USB-C HUB).

![UBS-C HUB](images/usb_c_hub.jpg)

* Plug USB-C power adapter into extension block.  Plug USB-C to USB-C cable
  into power adapter and into USB-C HUB.
* Connect external USB SOUND to USB-C HUB via USB-C to USB-A cable.
* If WIFI:
    * Go to System Preferences, _turn on WiFi_.
* If WIRED:
    * Go to System Preferences on IPAD, _turn off WiFi_.
    * Plug USB-A to Ethernet adapter into USB-C HUB.
    * Plug Ethernet cable into Ethernet adapter.
    * Plug other end of the Ethernet cable into the NODE.
* Start Switcher Studio application.  You should not need to log in, but if you
  do have to log in, see username and password in the blue book.
* Go to Switcher Studio sound settings by selecting sound icon from panel at
  bottom right.  Configure USB sound to Mono Left Channel.  Confirm that sound
  monitor bar at top of screen shows sound for left and right channels.
* Connect Bluetooth headphones.  Monitor sound level.  Adjust level with left
  hand input level volume control on USB sound box.

### To reset WIRED network

*If the wired network is not working*, unplug the Ethernet cables to the NODE.
Wait a few seconds.  Plug them back in again. This should reset the IP
addresses for the MACBOOK and the IPAD.

If the USB network connection for the IPHONE 8 is not working, try turning off
Internet sharing on the MACBOOK, and turning it back on again.

### Video and camera setup

*If you are using the WIRED network and any of the Switcher Cast connections
below do not work, consider resetting the wired network, as above.*

* Make sure Switcher Studio application is running on the IPAD.
* Select video inputs from icons at bottom of Switcher Studio screen.
* Disable IPAD camera as video input.
* Run the Switcher Cast application on the MACBOOK.
* Go back to the IPAD and select Display 2 from MACBOOK as video input.  You
  should see the PROCLAIM OUTPUT.
* Run the Switcher Cast application on IPHONE 12.  Share camera.  Go to IPAD
  Switcher Studio interface, and select the iPhone camera that appears.  Move
  IPHONE 12 around to confirm you can see the camera output in the Switcher
  Studio interface.
* Move silver tripod to aisle end of pew.  Mount IPHONE 12, and adjust for good
  view of the chancel, with the left hand view just taking in the lectern, so
  we can see the readings if necessary from this camera.
* Run the Switcher Cast application on IPHONE 8.  Share camera.  Go to IPAD
  Switcher Studio interface, and select the iPhone camera that appears.  Move
  IPHONE 8 around to confirm you can see the camera output in the Switcher
  Studio interface.
* Pull out legs and extend central column of the small black tripod, put in
  front of front pew next to the equipment table.  Mount IPHONE 8.  Adjust so
  the camera has a good view of the musicians and the lectern.

### Stream setup

* Go to IPAD.  Make sure the main (IPHONE 12) camera is the current view.  Add
  the Welcome panel to the current view, ready to start the stream.
* Open Safari on MACBOOK
* Open YouTube studio in Safari.
* Select scheduled live stream session for service.  There should be one
  available.
* Start the live stream 15 minutes before the service.
* Go to IPAD, Switcher Studio.  Click on red button at top left, to start
  recording and live stream.
* Go back to the MACBOOK YouTube interface. When the stream becomes available,
  click Go Live.

### Adjust projector

* Make sure the projector is straight in front of the screen.
* You will need a small book, such as the Book of Common Prayer, to rest the
  front projector leg on.
* Adjust the front projector leg and the right rear projector leg to get the
  image straight on the screen.  Adjust zoom to taste, and focus.
* If you have the projector straight in front of the screen you should not need
  to adjust the vertical keystone.  It seems to be about right when more or
  less in the centre of its range.  You may need to move the projector left and
  right a bit to get the keystone right. If that doesn't correct the keystone,
  you can try rotating the screen.

### Full list of connections for reference

* MACBOOK:
    * Magsafe power.
    * mini-DVI to VGA to clergy monitor.
    * mini-DVI to VGA to projector.
    * If WIRED:
        * USB-A to USB-A HUB.
        * Ethernet from USB-A HUB to NODE.
* IPAD:
    * USB-C HUB:
        * USB-A to USB external sound
        * USB-C to USB-C power adapter
        * If WIRED:
            * USB-A Ethernet adaptor
            * Ethernet cable from adaptor to NODE.
* IPHONE 8:
    * If WIFI:
        * Lightning to USB-A power on extension block.
    * If WIRED:
        * Lightning to USB-A on MACBOOK USB-A HUB.
* IPHONE 12:
    * Lightning to USB-A power on extension block.

### Check text in Proclaim

* Get service sheet and hymn book.
* Go through Proclaim slides checking words from listed hymns and printed
  choruses.
* Check with clergy about missing verses, and with musicians about any
  not-printed repeats to chorus verses.

### Service starts

* On IPAD, Switcher Studio — turn off welcome panel.
* Enjoy the ride.

### Service ends

* When clergy have gone out of shot, after a little while, turn on Thank You
  panel.
* When organ voluntary has finished, switch to end video.  Turn off USB sound.
* Turn off projector.
* When end video done, turn off stream with red button to top left of Switcher
  Studio interface on IPAD.
* Go to YouTube interface on Safari, on the MACBOOK, and turn off live stream.
