# Pinball Score Camwheels

## Overview

The score camwheels in some vintage pins may crack or otherwise become too worn to work properly due to their age and use. While there [are workarounds][pinrepair motor] to correct certain types of damage nobody is offering replacement cams at the time of writing. This repository aims to provide 3D models of these cams so anyone with access to a 3D printer can repair their machines.

:exclamation: Disclaimer: While I have done my best to determine the correct dimensions from videos, pictures, and prior works (see [Special Thanks](#special-thanks), I do not currently own any cams to compare against. As a result, I strongly recommend printing these models in a cheap material first to ensure they work. If you do print a model and find it's not working right, please do not hesitate to [let me know][report an issue] so the file can be corrected.

Missing a model you need? Something not working right? If so, just [report an issue] and and I'll be happy to take a look.

## Special Thanks

I'd like to thank [Deverezieaux] at the Vintage Arcade Preservation Society (VAPS) and at Pinside and [cerebral3d] ([ArtStation][cerebral3d artstation] & [Twitch][cerebral3d twitch]) for sharing their own 3D modeled cam with me to reference and providing pictures of their setup and guidance. Without their help it would have taken much longer to produce useable cams.

I'd also like to thank the [Internet Pinball Database][ipdb] for providing high quality photos and scans of some camwheels and their technical drawings.

## Download

STLs for all models are available on [Printables].

## Compatibility

Use the chart below to determine which cams are required for your game and check if the models have been verified to work correctly.

| Manufacturer | Game        | Models                                                      | Compatibility Verified |
|:-------------|:------------|:------------------------------------------------------------|:----------------------:|
| Chicago Coin | Hee Haw     | [190-548-X]<br/>[190-518-X]<br/>[190-517-X]                 | No                     |
| Chicago Coin | Dolphin     | [190-548-X]<br/>[190-518-X]<br/>[190-517-X]                 | No                     |
| Chicago Coin | Hi-Flyer    | [190-548-X]<br/>[190-518-X]<br/>[190-517-X]                 | No                     |
| Chicago Coin | Gin         | [190-548-X]<br/>[190-518-X]<br/>[190-517-X]                 | No                     |
| Chicago Coin | Super Star  | [190-548-X]<br/>[190-518-X]<br/>[190-517-X]                 | No                     |
| Chicago Coin | Top Ten     | [190-620-X]<br/>[190-548-X]<br/>[190-518-X]<br/>[190-517-X] | No                     |
| Chicago Coin | Red Baron   | [190-620-X]<br/>[190-548-X]<br/>[190-518-X]<br/>[190-517-X] | No                     |
| Chicago Coin | Hollywood   | [190-620-X]<br/>[190-548-X]<br/>[190-518-X]<br/>[190-517-X] | No                     |
| Chicago Coin | Cinema      | [190-620-X]<br/>[190-548-X]<br/>[190-518-X]<br/>[190-517-X] | No                     |
| Chicago Coin | Sound Stage | [190-548-X]<br/>[190-518-X]<br/>[190-517-X]                 | No                     |
| Chicago Coin | Juke Box    | [190-548-X]<br/>[190-518-X]<br/>[190-517-X]                 | No                     |

:memo: The 190-517-X model in this repo is based on a known working model provided by [Deverezieaux] and [cerebral3d]; however, the model in this repo does have some minor changes and has not been directly tested. The remaining models are based on a combination of the 517's general dimensions in addition to score motor diagrams uploaded to [IPDB].

## Need something custom?

These camwheels are fully parametric so you can change them however you like or even create new models. I've provided a template file and model viewer to help you get started:
1. First, download [OpenSCAD] 2021.01 or newer. This is the 3D design software used to create these models.
1. Next, you'll need to download a copy of this project. If you aren't familiar with git/GitHub, I recommend downloading the project as a zip:
   1. Click the green **Code** button on the main page of this repository.
   1. Select **Download ZIP**.
   1. Unzip the contents somewhere on your computer.
1. Launch OpenSCAD and open the included **model_viewer.scad** file.
1. Once open, select **Window** from the menu bar and choose **Customizer**. You should see several configuraion options appear on the right side.
1. In the customizer panel, locate the **part** drop-down and select **Custom**.
1. Now in your favorite text editor, open the included **custom_model_template.scad**.
1. The file will provide guidance on how to change a camwheel's parameters. If you save any changes to the file while OpenSCAD is open it will automatically update to reflect your changes.
1. When you're ready to print your model, first locate the **detail** drop-down in the customizer panel and change it to **Medium** or **High**. Depending on your computer's specs, OpenSCAD may freeze for several minutes while it processes the changes.
1. Once OpenSCAD is responsive again, you'll need to render the model by pressing **F6** or by selecting **Design** from the main menu and choosing **Render**. Depending on your computer's specs, OpenSCAD may freeze for several minutes while it processes the changes.
1. Once the render is complete, you can directly export an STL of the camwheel by either pressing **F7** or selecting **File**, hovering over **Export**, and choosing **Export as STL...**.

[deverezieaux]: https://pinside.com/pinball/community/pinsiders/deverezieaux
[cerebral3d]: mailto:cerebral3d@gmail.com
[cerebral3d artstation]: https://www.artstation.com/pat_kesterson
[cerebral3d twitch]: https://www.twitch.tv/cerebral3d
[report an issue]: https://github.com/charlesetd/pinball-score-camwheels/issues/new/choose
[pinrepair motor]: http://www.pinrepair.com/em/index3.htm#motor
[ipdb]: https://www.ipdb.org/search.pl
[openscad]: https://openscad.org/downloads.html
[190-620-X]: https://www.printables.com/model/301803-pinball-score-camwheels/files
[190-548-X]: https://www.printables.com/model/301803-pinball-score-camwheels/files
[190-518-X]: https://www.printables.com/model/301803-pinball-score-camwheels/files
[190-517-X]: https://www.printables.com/model/301803-pinball-score-camwheels/files
[printables]: https://www.printables.com/model/301803-pinball-score-camwheels/files
