# shellcheck shell=bash
# Sourced only by interactive Bash. No startup/restart side effects.
[[ $- == *i* ]] || return 0
[ ! -f "$HOME/.openaf_completion_bash.sh" ] || source "$HOME/.openaf_completion_bash.sh" >/dev/null 2>&1
for command in helm kubectl docker skopeo k3d; do
  source <("$command" completion bash) 2>/dev/null
done
alias oaf-light-theme='colorFormats.yaml op=set theme=thin-light-bold'
alias oaf-dark-theme='colorFormats.yaml op=set theme=thin-intense-bold'
alias oafptab='oafp in=lines linesvisual=true linesjoin=true out=ctable'
alias help='zcat /etc/d3k.gz'
zcat /etc/d3k.gz
if [ -t 0 ]; then stty sane; fi
