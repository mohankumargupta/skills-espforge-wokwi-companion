set fallback := true

deepseek_pro := "nvidia/deepseek-ai/deepseek-v4-pro"
deepseek_flash := "nvidia/deepseek-ai/deepseek-v4-flash"
glm := "nvidia/z-ai/glm-5.2"
minimax_m3 := "nvidia/minimaxai/minimax-m3"
minimax_m27 := "nvidia/minimaxai/minimax-m2.7"

prompt0 device:  ( _execute "prompt0"  device minimax_m3   )
prompt1 device:  ( _execute "prompt1"  device glm          )
prompt2a device: ( _execute "prompt2a" device glm          )

_execute prompt device model:
    ./runprompt.sh {{ prompt }}.txt {{ device }} {{ model }}

