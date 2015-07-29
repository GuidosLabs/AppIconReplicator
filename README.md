# AppIconReplicator
This script takes an icon and replicates it at the various sizes required for an Apple App Store app.

Start Terminal, and change to a directory with your original icon (which should be in the png format). The icon should have the highest resolution possible, because icons created from a larger resolution image suffer no loss when being converted to a smaller size; but the script will up-convert to larger sizes if necessary.

Assuming the script is also in the folder with your icon, run it with this terminal command:
    bash appIconReplicator.sh myIcon.png

The script will duplicate and resize your original icon into the various sizes necessary for submission to the Apple App Store. Import these icons into your images.xcassets folder (or wherever else they're required) within your project and assign them to the appropriate slots for your app.

If Apple changes the required icon sizes for the apps, it should be relatively easy to modify the array in the arraySizes line just above the for loop in the code to include the new sizes.


Best of luck.

-- David Guidos
