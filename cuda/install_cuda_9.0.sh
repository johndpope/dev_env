# CUDA Toolkit Archive
#   https://developer.nvidia.com/cuda-toolkit-archive

# Instructions at superuser:
#   https://askubuntu.com/questions/211716/add-environment-variable-to-bashrc-through-script?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa

# download cuda 9.0 main installer
wget -c https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_384.81_linux-run -O cuda_runfile.run

# install
chmod +x cuda_runfile.run
./cuda_runfile.run --silent --toolkit --toolkitpath=~/cuda_9.0


# rm installer
rm cuda_runfile.run

# add path to ~/.bashrc
echo 'export LD_LIBRARY_PATH=~/cuda_9.0/lib64:/users/grad/xjiang/cuda_9.0/extras/CUPTI/lib64' >> ~/.bashrc

# to activate
# source ~/.bashrc
