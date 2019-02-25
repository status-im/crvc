# Package

version          = "0.1.0"
author           = "Jarrad Hope"
description   = "Cryptoeconomic Release and Version Control"
license           = "MIT"
srcDir              = "src"
binDir             = "bin"
bin                   = @["crvc", "git_remote_crvc"] # TODO best way to change --out to git-remote-crvc?


# Dependencies

requires "nim >= 0.19.0"
