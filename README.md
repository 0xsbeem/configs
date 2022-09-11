# Installation

## Pre-requisites

* You must have fish installed at /usr/local/bin/fish (or at least there must be a symlink there). Alternatively you can run the install script with `fish install.fish`, but fish still needs to be installed.
* You must have Mercurial installed. `t`, the task management tool I use, is stored in a Mercurial repository. In current year. Can you believe it?

To install these scripts, run the install.fish script. 

## Neovim post-install

After the neovim config gets installed, you have to go into the init.lua file and comment out the code that configures any plugins (e.g. the code that configures the theme). After that, running neovim will install Packer. Once packer is installed, open neovim and execute `:PackerSync`. After that, go back into the init.lua and uncomment the code you commented out. Everything should now work.

# Task Management

These configs also install a task manager tool called `t`. It establishes aliases for two types of issues: `features` and `bugs`. The install script will install `t` in `~/.local/t` and set up a symlink to it from `/usr/local/bin/t`. 

To use the task management tool, use the provided bash aliases:
`feature <description>`: Creates a "feature" type task
`bug <description>`: Creates a "bug" type task 

Tasks are created in `./.tasks/features` or `./.tasks/bugs` depending on what type of task was created.

To view tasks, type `tlist` and it will read all tasks in `./tasks`. This means that all task management functions are contained to each project.

To mark a task as complete, type `t -f ID`

For more information on `t`, check out the repository: https://github.com/sjl/t
