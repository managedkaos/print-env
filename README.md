# Environment Printer
The Environment Printer will prints the environment variables and `$GITHUB_EVENT_PATH` to the log when run as an Action.

# Secrets
- N/A

# Environment Variables
- N/A

# Arguments
- N/A

# Examples
Here's an example workflow that uses the Environment Printer action.

```
workflow "debug" {
  on = "push"
  resolves = "print-env"
}

action "print-env" {
  uses = "managedkaos/print-env@master"
}

```
