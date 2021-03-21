# SUBLIME-BLIF_SIS

This repository contains the source code of the **blif_sis package** for Sublime Text.
> BLIF is SIS' Berkeley Logic Interchange Format.
> 
> SIS is a tool that optimizes and simulates logic gate and finite state machine networks

<div style="text-align: center; margin: 25px 0px;">
    <img style="border: 1px solid white" alt="Presentation gif" src="https://github.com/mario33881/sublime-blif_sis/blob/main/assets/presentation.gif?raw=true">
</div>

This extension allows you to:
* Start to develop a .blif file from a **template**
    > Currently the included templates are: 
    > * ```sis_fsm```, which is a Finite State Machine template
    > * ```sis_lgate```, which is a Logic Gate template
    >
    > Write the name of the template that you want to 
    > use and then press the enter key to use the template.

* **Autocomplete keywords** (instructions that start with the dot ```.```)

* **Syntax highlight** keywords

<br>

> Disclaimer: 
>
> I'm **not** affiliated with the SIS nor the Sublime Text developers in any way.
>
> The aim of the extension is to add syntax highlighting and autocompletion for the BLIF format, 
> SIS' Berkeley Logic Interchange Format, to Sublime Text.

## README Index
* [Installation](#installation)
* [Features](#features)
    * [Templates](#templates)
    * [Keyword autocompletion](#keyword-autocompletion)
    * [Syntax highlighting](#syntax-highlighting)
* [Development](#development)
* [Release Notes](#release-notes)

## Installation

* (best) Install the [```package control``` package manager](https://packagecontrol.io/installation) for Sublime Text and then install the package:
    1. Click on ```Tools > Command Palette``` from the toolbar in Sublime Text
    2. Write "```Install Package```" and the ```Package Control: Install Package``` option should appear below the textbox: click that option
    3. Search for "```blif```" or "```sis```" or "```blif_sis```".
    4. Click on the ```blif_sis``` package to install it.
    > Be sure that the repository (specified below the name of the package) is ```https://github.com/mario33881/sublime-blif_sis```
    5. Close and re-open Sublime Text for good measure.

* Manually download this repository, then:
    1. Go inside the ```<data_path>/Packages/``` folder (it varies from OS to OS and from the settings chosen during the installation)
    2. Make a folder called "```blif_sis```"
    3. Place inside the directory the content of the repository folder

* You can also build the ```.sublime-package``` file using the ```Makefile``` and the ```make``` command. Then, place the file inside one of these folders:
    
        <executable_path>/Packages/
        <data_path>/Installed Packages/

> If something doesn't work try to execute this on the command palette:
> (a .blif file must be opened before doing this)
>
>     Set Syntax: blif

## Features

### Templates
Templates allow you to develop your .blif file from a basic, common, baseline.
> Write the name of the template that you want to 
> use and then press the enter key to use the template.

> Start typing to replace the default values. Use the tab key to
> switch from the currently selected default value to the next one.

Currently the included templates are: 
* ```sis_fsm```, which is a Finite State Machine template

    <div style="text-align: center; margin: 25px 0px;">
        <img style="border: 1px solid white" alt="FSM template" src="https://github.com/mario33881/sublime-blif_sis/blob/main/assets/templates/fsm_template.gif?raw=true">
    </div>

* ```sis_lgate```, which is a Logic Gate template

    <div style="text-align: center; margin: 25px 0px;">
        <img style="border: 1px solid white" alt="Logic Gate template" src="https://github.com/mario33881/sublime-blif_sis/blob/main/assets/templates/lgate_template.gif?raw=true">
    </div>

### Keyword autocompletion
Keyword autocompletion allows you to **write keywords efficiently by completing a keyword** using the enter key:
* Start writing a keyword, like ```.m```

    <div style="text-align: center; margin: 25px 0px;">
        <img style="border: 1px solid white" alt="Autocompletion, .m" src="https://github.com/mario33881/sublime-blif_sis/blob/main/assets/autocompletion/m.gif?raw=true">
    </div>

* The package suggests you all the possible options for autocompletion,
use the arrow keys to navigate the options and press enter on the desired autocompletion.

    <div style="text-align: center; margin: 25px 0px;">
        <img style="border: 1px solid white" alt="Autocompletion, .model confirmed" src="https://github.com/mario33881/sublime-blif_sis/blob/main/assets/autocompletion/model_confirmed.gif?raw=true">
    </div>

* If default values follow the keyword, start typing to replace the first value and then use the tab key to move to the next default value (if available). 

    You can repeat this operation (tab key and overwriting values)
    for every default value.

    > You can also modify the values by modifing them normally

These are the keywords that you can currently autocomplete using this package:
* ```.model```: Define a sub-cell by specifying the name of its model.
* ```.inputs```: Define the name of the input(s).
* ```.outputs```: Define the name of the output(s).
* ```.names```: Define a link between inputs and an output .
    (on a new line write a truth table with only minterms/maxterms).
* ```.exdc```: Specifies that the following truth tables have don't care(s) as an output.
* ```.start_kiss```: Defines a FSM.
* ```.end_kiss```: Closes the definition of an FSM.
* ```.i```: Specifies the number of inputs of a FSM.
* ```.o```: Specifies the number of outputs of a FSM.
* ```.s```: Specifies the number of states of a FSM.
* ```.p```: Specifies the number of states transitions of a FSM.
* ```.r```: Specifies the name of the reset state of a FSM.
* ```.code```: Define a state encoding.
* ```.subckt```: Initialize an instance of a sub-cell model.
* ```.search```: Searches (imports) sub-cell models defined in another .blif file.
* ```.latch```: Defines a latch.
* ```.end```: Closes the definition of a sub-cell model.

### Syntax highlighting
This package **highlights keywords** that start with the dot ```.``` and ```.subckt``` parameters.

Highlighted keywords:

<div style="text-align: center; margin: 25px 0px;">
    <img style="border: 1px solid white" alt="Syntax Highlighting" src="https://github.com/mario33881/sublime-blif_sis/blob/main/assets/highlighting/highlighting.png?raw=true">
</div>

## Development

To make modifications to this package download the repository and place this folder inside the ```<data_path>/Packages/``` folder and then open the files using a text editor.
> Sublime text automatically reloads the package on changes.

Github Issues/pull requests are welcome!

## Release Notes

### 1.0.2
Fix: some syntax props didn't end with ".blif"

### 1.0.1

Slightly lighter package

### 1.0.0

Initial release

## Author
[Zenaro Stefano (mario33881)](https://github.com/mario33881)