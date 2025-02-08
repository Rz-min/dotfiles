if [ -z "$SSH_AUTH_SOCK" ] || ! ps -p $SSH_AGENT_PID > /dev/null 2>&1; then
    agent_sock=$(find /tmp -uid $(id -u) -type s -name agent.\* 2>/dev/null | head -n 1)

    echo "agent_sock: $agent_sock"

    if [ -S "$agent_sock" ]; then
        echo "agent_sock exists"
        export SSH_AUTH_SOCK=$agent_sock
    else
        echo "agent_sock not found, start new agent"
        eval $(ssh-agent -s)
    fi
fi

ssh-add -l