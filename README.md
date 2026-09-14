# MetaVLM: Search-Based Metamorphic Testing of Vision-Language Models in Autonomous Underwater Robotic Software
Official implementation accompanying our paper on evolutionary metamorphic testing of Vision-Language Models (VLMs) for underwater perception.

## Overview

This repository implements an automated metamorphic testing framework that combines:

- NSGA-II (multi-objective evolutionary search)
- Random Search (baseline)
- Six image-based Metamorphic Relations (MRs)
- Two Vision-Language Models (VLMs)

The framework automatically searches for minimal image transformations that induce perception failures while maximizing VLM predictions.

## Supported Vision-Language Models

- BLIP
- CLIP

## Metamorphic Relations

The framework currently supports six image transformations:

1. Rotation
2. Scaling
3. Histogram Equalization
4. Downsampling
5. Shearing
6. Translation

## Repository Structure

```
input_images/       Input images
codes/              Source code
batch_scripts/      Batch scripts to run the source code on the cluster
output/             Example outputs
```

## Installation

### 1. Clone repository

```bash
git clone https://github.com/<username>/<repository>.git
cd <repository>
```

### 2. Create environment

For BLIP

```bash
conda env create -f blip_environment.yml
conda activate blip
```

For CLIP

```bash
conda env create -f clip_environment.yml
conda activate clip
```

### 3. Install Jupyter kernel (optional)

```bash
python -m ipykernel install --user --name blip --display-name "Python (BLIP)"
```

## Running Experiments

We conducted all experiments on the eX3 GPU cluster. Both the NSGA-II and Random Search algorithms were executed 10 independent times for each of the 30 input images, with each run consisting of 100 generations. The experimental pipeline was automated using batch scripts that executed the corresponding Python programs.

Run NSGA-II

```bash
python batch_scripts/run_nsga.sbatch
```

Run Random Search

```bash
python batch_scripts/run_random.sbatch
```

Run statistical analysis

```bash
python codes/RQ1_2_3VLMTest.ipynb
```

## Outputs

The framework generates:

- Pareto fronts
- Transformed images
- Generation-wise logs
- Run-level metrics
- Hypervolume (HV)
- Statistical significance tests
- Publication-ready tables

## Citation

If you use this repository, please cite:

```bibtex
@inproceedings{yourpaper2026,
  title={Evolutionary Metamorphic Testing of Vision-Language Models for Underwater Perception},
  author={Your Name and Co-authors},
  booktitle={Proceedings of ...},
  year={2026}
}
```

## License

MIT License
