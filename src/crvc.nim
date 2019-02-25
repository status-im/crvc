import os

when isMainModule:
  # TODO read getCurrentDir() .crvc
  # if not exists, read getomeDir, .config .crvc
  # check if env already set

  os.putEnv("CRVC_KEY", "")
  os.putEnv("CRVC_SIGNER", "")
  os.putEnv("CRVC_MODE", "")
  os.putEnv("CRVC_BUILDCMD", "")
  os.putEnv("CRVC_BINOUT", "")

  echo "one day I will set environment variables for git-remote-crvc, act as a passthrough for git and general convenience"