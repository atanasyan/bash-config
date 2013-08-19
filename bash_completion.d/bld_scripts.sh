_clang_cfg() 
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    
    opts=" \
    debug \
    release \
    wignore"

    COMPREPLY=($(compgen -W "${opts}" -- ${cur}))  
    return 0
}

_clang_bld() 
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    
    opts=" \
    verbose \
    install \
    clang \
    check"

    COMPREPLY=($(compgen -W "${opts}" -- ${cur}))  
    return 0
}

_mc_llvm() 
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    
    opts=" \
    debug \
    release"

    COMPREPLY=($(compgen -W "${opts}" -- ${cur}))  
    return 0
}

complete -F _clang_cfg clang-cfg.sh
complete -F _clang_bld clang-bld.sh
complete -F _clang_cfg lld-cfg.sh
complete -F _clang_bld lld-bld.sh
complete -F _mc_llvm   mc-llvm.sh
complete -F _mc_llvm   mc-cfg.sh
complete -F _clang_bld mc-bld.sh
