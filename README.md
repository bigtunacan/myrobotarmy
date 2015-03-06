Overview
=========

These are just a few introductory examples of using the [Artoo
framework](http://artoo.io/).

All of the current examples are intended to work with a Sphero. 
To use these you will first need to bluetooth pair the Sphero to your
Mac/Linux/PC and then use the [gort](http://gort.io/) utility to scan
for the serial adapter that is created. (I have only tested this on
Mac).

key_driven.rb connects to a Sphero and allows the user to drive it with
the keyboard.

random.rb is a basic implementation of a random walk and will change
direction and color when it collides with something.

api.rb sets up a Sphero connection/device and then starts an artoo web server. 
That's all it does! But from there you can control the Sphero using the REST
API making standard HTTP GET/POST requests.  I have included a couple of
curl examples to illustrate how this works.

WebSockets are also supported by Artoo, but I have not tried them out
yet.

