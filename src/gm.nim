import run_exe
import std/strformat


proc init_prompt(core_mod: string) =
  run exe fmt"sh {core_mod}"
  

init_prompt("core.sh")
