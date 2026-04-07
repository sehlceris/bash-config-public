# Modular Bash Configuration

This repository contains a modular Bash configuration setup. It organizes your `bash` configurations into separate files for aliases, environment variables, functions, etc. These files will be automatically sourced every time a new shell is started.

## Installation

### Clone the Repository

Clone this repository directly into the `~/.bash-config` directory.

```bash
git clone https://github.com/sehlceris/bash-config-public.git ~/.bash-config
```

### Run the Installation Script

```shell
cd ~/.bash-config
chmod +x install.sh
./install.sh
```

### Remove the Git Remote

I suggest you immediately remove the Git remote to avoid accidentally committing your private config. Put it in your own repo!

```shell
rm -rf ~/.bash-config/.git 
```

## Secrets

All files named `secret*` or `.secret*` will not be committed into the repository.
