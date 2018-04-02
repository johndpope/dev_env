### Instructions to setup tensorflow-gpu 1.6.0 environment using conda

#### Step 1: Install conda (miniConda)
run [`install_conda.sh`](../sys/install_conda.sh)
`source ~/.bashrc`  # add conda to path

#### Step 2: Create environment
```
chmod +x create_env.sh
./create_env.sh
```

#### Step 3: to activate the environment
`source activate ~/conda_env/tensorflow-gpu`

#### Step 4: to de-activate the environment
`source deactivate`


