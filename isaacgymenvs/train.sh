
export LD_LIBRARY_PATH=/home/yzhang/dl-tools/miniconda3/envs/rlgpu/lib

export CUDA_DEVICE_ORDER=PCI_BUS_ID
export CUDA_VISIBLE_DEVICES=0

# Train Mode

# multi-agent
python train.py task=TrifingerMasa train=TrifingerPPOMasa headless=True num_envs=16384 max_iterations=20000 experiment=TrifingerMasa

# single-agent
# python train.py task=Trifinger train=TrifingerPPO headless=True num_envs=16384 max_iterations=20000 experiment=TrifingerSym # 16384 20000


# Play Mode
# python train.py test=True task=Trifinger headless=False num_envs=1 checkpoint=runs/Trifinger/nn/Trifinger.pth capture_video=True capture_video_len=7500 capture_video_freq=1 train.params.config.player.games_num=10 
# games_num: running episodes in testing phase
# max_steps=750, total_steps=max_steps*games_num=7500
# capture_video_len: video steps, may overpass max_steps, but less than total_steps
# capture_video_freq: render frequency in testing phase
