import os, strformat, strutils, rdstdin

const
  gitEnv = "GIT_DIR"
  protocol = "crvc"

proc setup(gitEnv: string, protocol: string): (string, string, string) =
  # Checks the Environment and returns the git Working directory, the protocol, the remote and url

  if paramCount() < 2:
    raise newException(ValueError, fmt"Usage: {getAppFilename()} <remote-name> <url>")

  let
    remote = paramStr(1) # <remote-name>
    url = paramStr(2) # <url>
    gitDir = getEnv(gitEnv)

  # Check if GIT_DIR Environment Variable is set
  if gitDir.isNilOrWhitespace:
    raise newException(OSError, fmt"{gitEnv} is not set")

  # Check if the .git directory exists
  if not existsDir(gitDir):
    raise newException(OSError, fmt"{gitDir} does not appear to be a git repository")

  # Create our Working Directory if it doesn't exist
  let path = joinPath(gitDir, remote)
  if not existsDir(path):
    createDir(path)
  # TODO process url and pass to processStdio parseUrl?
  return (path, remote, url)

proc processStdio (env: tuple): void = 
  # Supports the Git Remote Helper stdio protocol
  # https://git-scm.com/docs/git-remote-helpers
  let (path, remote, url) = env

  while true:
    var
      response: string
      line: string = readLine(stdin) # TODO something better here ? https://nim-lang.org/docs/streams.html
    # echo line

    # Git sends the remote helper a list of commands on standard input, one per line. 
    # The first command is always the capabilities command, in response to which the remote helper must print a list of the capabilities it supports followed by a blank line.
    case line:
      of "capabilities":
        response = "capabilities response"
      of "list":
        response = "list response"
      of "export":
        response = "export response"
      else:
        raise newException(IOError, fmt"Unrecognised command: {line}")
    write(stdout, response)


proc bail() {.noconv.} =
  quit()

when isMainModule:
  setControlCHook(bail)

  try:
    processStdio(setup(gitEnv, protocol))
  except:
    echo getCurrentExceptionMsg()
  finally:
    quit()