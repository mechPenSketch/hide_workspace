# Hide Workspace

These plugins help hide the workspaces you don't need, especially 2D.

## Getting Started

### Requirement
* Godot Engine 3.x

### Considerations Before Using
Firstly, you don't need this asset if you intend to always hide 3D and/or AssetLib in your projects. For more information on hiding your workspace(s), go [here](https://docs.godotengine.org/en/stable/classes/class_editorfeatureprofile.html).

That said, 2D workspace cannot be hidden in Godot 3.x. With this asset, you can go to Project Settings > Plugins and check "Hide 2D" to hide it in your project.

This asset is also convenient for those working on both 2D and 3D games. Everytime you switch over to a different game, you have to Editor > Manage Editor Features to make the appropriate profile current. But with this asset, you can just check the workspaces you don't need on one project, and it won't carry over to the next that requires said workspaces.

This asset is also ideal for those who are working on different projects under different roles. This would require different sets of workspaces to be hidden.

### Installation
Download and extract the .zip file.

After downloading, open Godot Engine Project Manager. Click Import, go to the extracted folder, and select "project.godot".

## Usage
This asset contains four plugins: "Hide 2D", "Hide 3D", "Hide AssetLib" and "Hide Script". To use them, go to Project Settings > Plugins and check one of them or more. The appropriate workspace will then be hidden.

To use this on your project, copy the entire `addons` folder to your project folder.

### Caution
* Plugin "Hide 2D" should always be included in your project as the rest are extended from it.
* If you are collaboring with others in different roles, add "project.godot" to your `.gitignore` file or your plugins' status will clash with your teammates'. Be aware of other changes to the Project's Setting, though.

## Author
* mechPenSketch
