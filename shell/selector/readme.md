
# selector

Program to present TAB selectable options as a text UI.

## Features

Options can be passed as arguments. A option can be selected by `TAB` and
confirmed by `ENTER`. The configured command is then executed with the
`{{value}}` placeholder replaced with the selected value.


## Example use cases

selector works nicely with a `tmux` session in a pane to toggle execution
modes for a program. selector would then execute a `tmux send-keys` command
to change the running proces.
