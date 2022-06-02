import std.stdio;
import std.string;

import terramatter.core.engine;
import terramatter.game.game;

int main(string[] args) {
    dstring winName = `
### ### ### ### ### ###  ## ### ###
##  ##  ##  ##  #   ##  ### ##   # 
#   # # ### ### ### # # # # #    # 
    `d;

    dstring unixName = `
█▀▀ █▀█ █▀▀ █▀▀ █▀▀ █▀█ ▄▀█ █▀▀ ▀█▀
█▀  █▀▄ ██▄ ██▄ █▄▄ █▀▄ █▀█ █▀   █ 
    `d;

    version(Windows) {
        writef("%s\n", winName);
    } else {
        writef("%s\n", unixName);
    }

    writeln("Creating Engine instance");

    Engine engine = new Engine(800, 600, 60, new Game());
    engine.createWindow("Test");
    
    return engine.start();
}