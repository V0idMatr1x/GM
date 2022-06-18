# Galaxy Manager (GM)
- Galaxy Manager (GM) is an opinionated, universal Workspace manager for devs who work smarter!

## Automate's the creation of project starters & configuration, so we can just focus on the code.


- Priorities
  - Keep It Light (No Bloat!). 
  - Keep It Simple.
  - Save Time (Rapid Development!).
  - Get Out Of My Way!
  - One Project Manager To Rule Them All! 
## Usage
- Compile the binary by running `nim c -r gm.nim -d:release` in `gm/src`
- By default Galaxy Manager will look for a `~/Dev` directory within your `$HOME` folder.
- After your Workspace has been generated, it will walk itself `$HOME`.
- This means that you don't have to add it to `$PATH`
- You can simply create a bash/zsh alias to call the binary from the `/src` of the repo.
  - Configuration: In your `~/.zshrc` `alias galaxy="$HOME/GM/src/ && ./gm && $HOME"`

### The Workspace API
A Workspace simply refer's to an individual development environent.
Workspaces are invoked via the prompt that is displayed after `gm` has been executed.
To view current available Spaces type `space` when you are promted to choose a Workspace.

- Currently Available Workspaces:
  - `rl` (Create Rust Lib) 
  - `rb` (Create Rust Bin)
  - `nim` (Create Nim Project)
  - `py` (Create Python Environment (venv pre-configured))
  - `vw` (Vanilla Web (html, css, js (package.json is generated at runtime))
- Coming Soon:
  - `cra` (Create React App (cleanup + webpack pre-configured))
  - `yew` (Create a Yew Project + Minimal Setup) 
  - `C++` (Create a minimal C++ environment (makefile, header, main))
  - `risv`(Automated Risc-V dev config with qemu and target install) 

#### Supported OS:
- ✔ MacOS #Tested
- ✔ Linux #Tested

#### Depends On:
- Runexe `nimble install runexe`
  - Optional Dependencies:
    - Cargo
    - Python (+ virtualenv)
    - Node + NPM
