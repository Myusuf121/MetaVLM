# VLMTest: Evolutionary Metamorphic Testing of Vision-Language Models

Official implementation accompanying our paper on evolutionary metamorphic testing of Vision-Language Models (VLMs) for underwater perception.

## Overview

This repository implements an automated metamorphic testing framework that combines:

- NSGA-II (multi-objective evolutionary search)
- Random Search (baseline)
- Multiple image-based Metamorphic Relations (MRs)
- Vision-Language Models (VLMs)

The framework automatically searches for image transformations that induce perception failures while minimizing image distortion.

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
conda env create -f configs/blip_environment.yml
conda activate blip
```

For CLIP

```bash
conda env create -f configs/clip_environment.yml
conda activate clip
```

### 3. Install Jupyter kernel (optional)

```bash
python -m ipykernel install --user --name blip --display-name "Python (BLIP)"
```

## Running Experiments

Run NSGA-II

```bash
python src/nsga/main.py
```

Run Random Search

```bash
python src/random_search/main.py
```

Run statistical analysis

```bash
python analysis/rq1_analysis.py
python analysis/rq2_analysis.py
```

## Outputs

The framework generates:

- Pareto fronts
- Transformed images
- Generation-wise logs
- Run-level metrics
- Hypervolume (HV)
- Inverted Generational Distance (IGD)
- Statistical significance tests
- Publication-ready figures and tables

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
