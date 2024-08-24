#!/bin/bash

# This file will be sourced in init.sh

# https://raw.githubusercontent.com/ai-dock/comfyui/main/config/provisioning/default.sh

# Packages are installed after nodes so we can fix them...

DEFAULT_WORKFLOW="https://raw.githubusercontent.com/ai-dock/comfyui/main/config/workflows/flux-comfyui-example.json"

APT_PACKAGES=(
  "ffmpeg"
  "git"
    #"package-1"
    #"package-2"
)

PIP_PACKAGES=(
    #"package-1"
    #"package-2"
)

NODES=(
"https://github.com/11cafe/comfyui-workspace-manager"
"https://github.com/BadCafeCode/execution-inversion-demo-comfyui"
"https://github.com/crystian/ComfyUI-Crystools"
"https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved"
"https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite"
"https://github.com/WASasquatch/was-node-suite-comfyui"
"https://github.com/chrisgoringe/cg-use-everywhere"
"https://github.com/city96/ComfyUI-GGUF"
"https://github.com/cubiq/ComfyUI_IPAdapter_plus"
"https://github.com/cubiq/ComfyUI_essentials"
"https://github.com/dmarx/ComfyUI-Keyframed"
"https://github.com/hayden-fr/ComfyUI-Image-Browsing"
"https://github.com/Fannovel16/comfyui_controlnet_aux"
"https://github.com/jags111/efficiency-nodes-comfyui"
"https://github.com/liusida/ComfyUI-Login"
"https://github.com/ltdrdata/ComfyUI-Impact-Pack"
"https://github.com/ltdrdata/ComfyUI-Inspire-Pack"
"https://github.com/ltdrdata/ComfyUI-Manager"
"https://github.com/pythongosssss/ComfyUI-Custom-Scripts"
"https://github.com/rnbwdsh/ComfyUI-LatentWalk.git"
"https://github.com/twri/sdxl_prompt_styler"
"https://github.com/XLabs-AI/x-flux-comfyui"
# disabled: python eval node
# "https://github.com/WASasquatch/ASTERR"
)

CHECKPOINT_MODELS=(
"https://huggingface.co/stabilityai/stable-diffusion-3-medium/resolve/main/sd3_medium_incl_clips_t5xxlfp16.safetensors"
"https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors"
"https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors"
"https://huggingface.co/guoyww/animatediff/resolve/main/mm_sdxl_v10_beta.ckpt"
)

CLIP_MODELS=(
"https://huggingface.co/lodestones/stable-diffusion-3-medium/resolve/4a708bd3d18c10253247f8660cd4ffae6cd63bf1/stable-diffusion-3-medium/text_encoders/clip_g.safetensors"
"https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors"
"https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors"
)

UNET_MODELS=(
"https://huggingface.co/city96/FLUX.1-dev-gguf/resolve/main/flux1-dev-Q5_0.gguf"
"https://huggingface.co/city96/FLUX.1-schnell-gguf/resolve/main/flux1-schnell-Q5_0.gguf"
)

VAE_MODELS=(
"https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/ae.safetensors"
)

VAE_APPROX_MODELS=(
"https://raw.githubusercontent.com/madebyollin/taesd/main/taesdxl_decoder.pth"
"https://raw.githubusercontent.com/madebyollin/taesd/main/taesdxl_encoder.pth"
"https://raw.githubusercontent.com/madebyollin/taesd/main/taesd3_decoder.pth"
"https://raw.githubusercontent.com/madebyollin/taesd/main/taesd3_encoder.pth"
"https://raw.githubusercontent.com/madebyollin/taesd/raw/main/taef1_decoder.pth"
"https://raw.githubusercontent.com/madebyollin/taesd/raw/main/taef1_encoder.pth"
)

LORA_MODELS=(
# sdxl loras
"https://huggingface.co/shiroppo/sd_xl_turbo_lora/resolve/main/sd_xl_turbo_lora_v1-64dim.safetensors"
"https://huggingface.co/ByteDance/Hyper-SD/resolve/main/Hyper-SDXL-2steps-lora.safetensors"
"https://huggingface.co/ByteDance/Hyper-SD/blob/main/Hyper-SDXL-4steps-lora.safetensors"
"https://huggingface.co/ByteDance/Hyper-SD/resolve/main/Hyper-SDXL-8steps-lora.safetensors"
"https://huggingface.co/ByteDance/SDXL-Lightning/resolve/main/sdxl_lightning_8step_lora.safetensors"
"https://huggingface.co/ByteDance/SDXL-Lightning/resolve/main/sdxl_lightning_4step_lora.safetensors"
"https://huggingface.co/ByteDance/SDXL-Lightning/resolve/main/sdxl_lightning_2step_lora.safetensors"

# sdxl Pixel Art XL, 3D rendering style, xl_more_art-full
"https://civitai.com/api/download/models/135931?type=Model&format=SafeTensor"
"https://civitai.com/api/download/models/703107?type=Model&format=SafeTensor"
"https://civitai.com/api/download/models/152309?type=Model&format=SafeTensor"

"https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sdxl_lora.safetensors"
"https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sdxl_lora.safetensors"

# flux loras
"https://huggingface.co/XLabs-AI/flux-lora-collection/resolve/main/art_lora_comfy_converted.safetensors"
"https://huggingface.co/XLabs-AI/flux-lora-collection/resolve/main/realism_lora_comfy_converted.safetensors"
"https://huggingface.co/XLabs-AI/flux-lora-collection/resolve/main/mjv6_lora_comfy_converted.safetensors"
"https://huggingface.co/XLabs-AI/flux-lora-collection/resolve/main/disney_lora_comfy_converted.safetensors"
)

ESRGAN_MODELS=(
"https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
"https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
"https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-depth-controlnet_v2.safetensors"
"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-canny-controlnet_v2.safetensors"
"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-hed-controlnet.safetensors"
)

# for rename, add :::new_name
CLIP_VISION_MODELS=(
"https://huggingface.co/h94/IP-Adapter/resolve/main/models/image_encoder/model.safetensors:::CLIP-ViT-H-14-laion2B-s32B-b79K.safetensors"
"https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/image_encoder/model.safetensors:::CLIP-ViT-bigG-14-laion2B-39B-b160k.safetensors"
"https://huggingface.co/openai/clip-vit-large-patch14/resolve/main/model.safetensors:::CLIP-ViT-Large-14.safetensors"
"https://huggingface.co/laion/CLIP-ViT-L-14-laion2B-s32B-b82K/resolve/main/open_clip_pytorch_model.safetensors:::CLIP-ViT-L-14-laion2B-s32B-b82K.safetensors"
)

IPADAPTER_MODELS=(
"https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl.safetensors"
"https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl_vit-h.safetensors"
"https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter-plus-face_sdxl_vit-h.safetensors"
"https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter-plus_sdxl_vit-h.safetensors"

"https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sdxl.bin"
"https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sdxl.bin"
"https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-portrait_sdxl.bin"
"https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-portrait_sdxl_unnorm.bin"
)

OTHERS=(
"https://huggingface.co/XLabs-AI/flux-ip-adapter/resolve/main/flux-ip-adapter.safetensors:::xlabs/ipadapters/flux-ip-adapter.safetensors"
)

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    if [[ ! -d /opt/environments/python ]]; then 
        export MAMBA_BASE=true
    fi
    source /opt/ai-dock/etc/environment.sh
    source /opt/ai-dock/bin/venv-set.sh comfyui

    provisioning_print_header
    provisioning_get_apt_packages
    provisioning_get_default_workflow
    provisioning_get_nodes
    provisioning_get_pip_packages
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
        "${WORKSPACE}/storage/stable_diffusion/models/clip" \
        "${CLIP_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/esrgan" \
        "${ESRGAN_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/ipadapter" \
        "${IPADAPTER_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/clip_vision" \
        "${CLIP_VISION_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/vae_approx" \
        "${VAE_APPROX_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/other" \
        "${OTHERS[@]}"
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
    local url="$1" # Use local variable for storing the URL
    local file_path="$2" # Use local variable for storing the file path

    if [[ -n $HF_TOKEN && $url =~ ^https://([a-zA-Z0-9_-]+\.)?huggingface\.co(/|$|\?) ]]; then
        auth_token="$HF_TOKEN" # Use a local variable for storing the authentication token
    elif [[ -n $CIVITAI_TOKEN && $url =~ ^https://([a-zA-Z0-9_-]+\.)?civitai\.com(/|$|\?) ]]; then
        auth_token="$CIVITAI_TOKEN" # Use a local variable for storing the authentication token
    fi

    if [[ $url == *":::"* ]]; then
        file_path="${file_path}/$(echo "$url" | awk -F':::' '{print $2}')" # Append the second part to $2 and cut $1 to everything before :::
        url="$(echo "$url" | awk -F':::' '{print $1}')" # Cut $1 to everything before :::
    fi

    if [[ -n $auth_token ]]; then
        wget --header="Authorization: Bearer $auth_token" -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -O "$file_path" "$url" & # Use the new variables for storing the URL and file path
    else
        wget -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -O "$file_path" "$url" & # Use the new variables for storing the URL and file path
    fi
}

provisioning_start
