<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This mixed signal circuit is a mixer. It can up or down convert a signal.
The digital control part can generate internal LO signal with different frequencies, but also can pass an external Lo signal to the analog mixer.

## How to test

Send analog signal to the input ports and measure the output ports. Also apply external LO or use internal LO source.

## External hardware

Since the user have to bias the in_n and in_p ports with 900-950mV and apply a differential signal in the range of 20mV peak-to-peak I would say a custom interface PCB is needed to use the mixer. TO DO later.