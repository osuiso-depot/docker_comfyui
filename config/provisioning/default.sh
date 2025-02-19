#!/bin/bash

# This file will be sourced in init.sh

# https://raw.githubusercontent.com/ai-dock/comfyui/main/config/provisioning/default.sh

# Packages are installed after nodes so we can fix them...

#DEFAULT_WORKFLOW="https://..."

APT_PACKAGES=(
    #"package-1"
    #"package-2"
    "jq"
)

PIP_PACKAGES=(
    #"package-1"
    #"package-2"
)

NODES=(
    "https://github.com/ltdrdata/ComfyUI-Manager"
    "https://github.com/pythongosssss/ComfyUI-Custom-Scripts"
    # "https://github.com/cubiq/ComfyUI_essentials"
    "https://github.com/ltdrdata/ComfyUI-Inspire-Pack"
    "https://github.com/ltdrdata/ComfyUI-Impact-Pack"
    "https://github.com/ltdrdata/ComfyUI-Impact-Subpack"
    "https://github.com/BlenderNeko/ComfyUI_ADV_CLIP_emb"
    "https://github.com/WASasquatch/was-node-suite-comfyui"
    "https://github.com/kijai/ComfyUI-KJNodes"
    "https://github.com/talesofai/comfyui-browser"
    "https://github.com/jags111/efficiency-nodes-comfyui"
    "https://github.com/ssitu/ComfyUI_UltimateSDUpscale"
    "https://github.com/osuiso-depot/comfyui-keshigom_custom"
)

CHECKPOINT_MODELS=(
    # "https://huggingface.co/rimOPS/IllustriousBased/resolve/main/vxpILXL_v12.safetensors"
    "https://huggingface.co/rimOPS/IllustriousBased/resolve/main/vxpILXL_v17.safetensors"
    # "https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors"
    # "https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors"
    # Silene | Illustrious XL 1.0
    # "https://civitai.com/api/download/models/1415266"
)

UNET_MODELS=(

)

LORA_MODELS=(
    # Roxanne
    "https://civitai.com/api/download/models/1055954"
    ## hachimiya-meguru
    "https://civitai.com/api/download/models/1065346"
    # Areola size slider(goofy)
    "https://civitai.com/api/download/models/1284363"
    # Glossy Skin
    "https://civitai.com/api/download/models/1218639"
    # cartoony-anime
    "https://civitai.com/api/download/models/1118776"
    # 逆バニー
    "https://civitai.com/api/download/models/995354"
)

VAE_MODELS=(
)

ESRGAN_MODELS=(
    "https://huggingface.co/rimOPS/upscaler/resolve/main/RealESRGAN_x4plus_anime_6B.pth"
    "https://huggingface.co/rimOPS/upscaler/resolve/main/4x_NMKD-YandereNeoXL_200k.pth"
)

CONTROLNET_MODELS=(
    # "https://huggingface.co/xinsir/controlnet-tile-sdxl-1.0/resolve/main/diffusion_pytorch_model.safetensors"
    # "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_canny_mid.safetensors"
    # "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_depth_mid.safetensors?download"
    # "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/t2i-adapter_diffusers_xl_openpose.safetensors"
    # "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_depth-fp16.safetensors"
    # "https://huggingface.co/kohya-ss/ControlNet-diff-modules/resolve/main/diff_control_sd15_depth_fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_hed-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_mlsd-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_normal-fp16.safetensors"
    # "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_scribble-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_seg-fp16.safetensors"
    # "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_color-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_depth-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_keypose-fp16.safetensors"
    # "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_sketch-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_style-fp16.safetensors"
)

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function base_config(){
    cd "${WORKSPACE}/ComfyUI/"
    # wget -q "https://raw.githubusercontent.com/osuiso-depot/docker_comfyui/refs/heads/main/config/provisioning/config.json"
    # wget -q "https://raw.githubusercontent.com/osuiso-depot/docker_comfyui/refs/heads/main/config/provisioning/ui-config.json"
    wget -q "https://raw.githubusercontent.com/osuiso-depot/docker-stable-diffusion-webui-forge/refs/heads/main/config/provisioning/styles.csv"
    # wget -q "https://raw.githubusercontent.com/osuiso-depot/docker_comfyui/refs/heads/main/config/provisioning/styles_integrated.csv"
}
function set_workflow(){
    workflow_url="https://raw.githubusercontent.com/osuiso-depot/docker_comfyui/refs/heads/main/config/workflows/SDXL_workflow.json"
    target_dir="${WORKSPACE}/ComfyUI/user/default//workflows"
    mkdir -p "$target_dir"
    wget -q -O "${target_dir}/workflow.json" "$workflow_url"
    if [ $? -ne 0 ]; then
        echo "Failed to download workflow"
    else
        echo "Successfully downloaded workflow to ${target_dir}/workflow.json"
    fi
}

function extensions_config() {
    # まず、$WORKSPACE 内に tmp フォルダを作成
    mkdir -p "${WORKSPACE}/tmp"
    if [ $? -ne 0 ]; then
        echo "Failed to create tmp directory"
    fi

    # tmp フォルダに移動
    cd "${WORKSPACE}/tmp"
    if [ $? -ne 0 ]; then
        echo "Failed to change directory to tmp"
    fi

    # リポジトリをクローン
    git clone "https://${GITHUB_TOKEN}@github.com/osuiso-depot/MySDWEBUI_config_private.git"
    if [ $? -ne 0 ]; then
        echo "Failed to clone repository"
    fi

    # クローンしたリポジトリがある場所に移動
    cd "${WORKSPACE}/tmp/MySDWEBUI_config_private"
    if [ $? -ne 0 ]; then
        echo "Failed to change directory to cloned repository"
    fi

    # custom_wildcards フォルダを目的のディレクトリにコピー
    target_dir="${WORKSPACE}/ComfyUI/custom_nodes/ComfyUI-Impact-Pack/custom_wildcards"

    if [ -d "$target_dir" ]; then
        rm -rf "$target_dir"
        if [ $? -ne 0 ]; then
            echo "Failed to remove existing custom_wildcards directory"
        fi
    fi

    # wildcards フォルダをcustom_wildcardsとしてコピーする
    cp -r "wildcards" "${WORKSPACE}/ComfyUI/custom_nodes/ComfyUI-Impact-Pack/custom_wildcards"
    if [ $? -ne 0 ]; then
        echo "Failed to copy wildcards directory"
    else
        echo "Successfully copied wildcards directory"
    fi


    # Lora-block-weight プリセットを目的のディレクトリにコピーし、上書きする
    # cp "lbwpresets.txt" "${WORKSPACE}/ComfyUI/custom_nodes/ComfyUI-Inspire-Pack/resources/lbw-preset.custom.txt"
    cp "lbwpresets.txt" "${WORKSPACE}/ComfyUI/custom_nodes/ComfyUI-Inspire-Pack/resources/lbw-preset.txt"
    if [ $? -ne 0 ]; then
        echo "Failed to copy and rename lbwpresets.txt"
    else
        echo "Successfully copied and renamed lbwpresets.txt to lbw-preset.custom.txt"
    fi

    # WAS-NODE config.jsonを更新、指定の項目を上書きする
    CONFIG_FILE="${WORKSPACE}/ComfyUI/custom_nodes/was-node-suite-comfyui/was_suite_config.json"

    # jqがインストールされているか確認
    if ! command -v jq &> /dev/null; then
        echo "Error: jq is not installed. Please install jq and try again."
    fi

    # 設定ファイルが存在するか確認
    if [ ! -f "$CONFIG_FILE" ]; then
        echo "Error: Configuration file '$CONFIG_FILE' not found."
    fi

    # JSONファイルの書き換え
    jq --arg ws "$WORKSPACE" '
        .webui_styles = ($ws + "/ComfyUI/styles.csv") |
        .wildcards_path = ($ws + "/ComfyUI/custom_nodes/ComfyUI-Impact-Pack/custom_wildcards")
    ' "$CONFIG_FILE" > "tmp.$$" && mv "tmp.$$" "$CONFIG_FILE"

    # jqの処理結果を確認
    if [ $? -eq 0 ]; then
        echo "Configuration file has been updated successfully."
    else
        echo "Error: Failed to update the configuration file."
    fi


    cd "${WORKSPACE}/ComfyUI/"
}

function provisioning_start() {
    if [[ ! -d /opt/environments/python ]]; then
        export MAMBA_BASE=true
    fi
    source /opt/ai-dock/etc/environment.sh
    source /opt/ai-dock/bin/venv-set.sh comfyui

    provisioning_print_header
    provisioning_get_apt_packages
    provisioning_get_nodes
    provisioning_get_pip_packages
    base_config
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/ckpt" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/unet" \
        "${UNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/controlnet" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/vae" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/esrgan" \
        "${ESRGAN_MODELS[@]}"

    extensions_config
    set_workflow

    provisioning_print_end
}

function pip_install() {
    if [[ -z $MAMBA_BASE ]]; then
            "$COMFYUI_VENV_PIP" install --no-cache-dir "$@"
        else
            micromamba run -n comfyui pip install --no-cache-dir "$@"
        fi
}

function provisioning_get_apt_packages() {
    if [[ -n $APT_PACKAGES ]]; then
            sudo $APT_INSTALL ${APT_PACKAGES[@]}
    fi
}

function provisioning_get_pip_packages() {
    if [[ -n $PIP_PACKAGES ]]; then
            pip_install ${PIP_PACKAGES[@]}
    fi
}

function provisioning_get_nodes() {
    for repo in "${NODES[@]}"; do
        dir="${repo##*/}"
        path="/opt/ComfyUI/custom_nodes/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating node: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                   pip_install -r "$requirements"
                fi
            fi
        else
            printf "Downloading node: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
            if [[ -e $requirements ]]; then
                pip_install -r "${requirements}"
            fi
        fi
    done
}

function provisioning_get_default_workflow() {
    if [[ -n $DEFAULT_WORKFLOW ]]; then
        workflow_json=$(curl -s "$DEFAULT_WORKFLOW")
        if [[ -n $workflow_json ]]; then
            echo "export const defaultGraph = $workflow_json;" > /opt/ComfyUI/web/scripts/defaultGraph.js
        fi
    fi
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi

    dir="$1"
    mkdir -p "$dir"
    shift
    arr=("$@")
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

function provisioning_has_valid_hf_token() {
    [[ -n "$HF_TOKEN" ]] || return 1
    url="https://huggingface.co/api/whoami-v2"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $HF_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

function provisioning_has_valid_civitai_token() {
    [[ -n "$CIVITAI_TOKEN" ]] || return 1
    url="https://civitai.com/api/v1/models?hidden=1&limit=1"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $CIVITAI_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

# Download from $1 URL to $2 file path
function provisioning_download() {
    # 認証トークンを選択
    if [[ $1 =~ ^https://([a-zA-Z0-9_-]+\.)?huggingface\.co(/|$|\?) ]]; then
        auth_token="$HF_TOKEN"
        if [[ -n $auth_token ]]; then
            echo "Downloading with token..."
            wget --header="Authorization: Bearer $auth_token" --content-disposition --show-progress -q -P "$2" "$1"
        else
            echo "Downloading without token..."
            wget --content-disposition --show-progress -q -P "$2" "$1"
        fi
    elif [[ $1 =~ ^https://([a-zA-Z0-9_-]+\.)?civitai\.com(/|/api/download/models/|$|\?) ]]; then
        auth_token="$CIVITAI_TOKEN"
        if [[ -n $auth_token ]]; then
            echo "Downloading with token..."
            wget "$1?token=$auth_token" --content-disposition --show-progress -q -P "$2"
        else
            echo "Downloading without token..."
            wget "$1" --content-disposition --show-progress -q -P "$2"
        fi
    fi

}

provisioning_start
