---
layout: archive
title: "Tools and Artifacts"
permalink: /artifacts/
author_profile: true
---

- [DeepManeuver](https://github.com/MissMeriel/DeepManeuver): This repo contains the tools, paper, and study data for "DeepManeuver: Adversarial Test Generation for Trajectory Manipulation of Autonomous Vehicles". DOI 10.1109/TSE.2023.3301443. An archived copy of this repo and the data for this paper can be found at Zenodo record 8284708 and Zenodo record 8284640, respectively.
- [ROSbot Computer Vision and Actuation Test Platform](https://github.com/MissMeriel/ROSbot_data_collection): This repository contains instructions and source code for using the ROSbot to collect a dataset by driving around using the Husarion ROSbot 2.0. It contains instructions to install, troubleshoot, and initialize the onboard data collection routine for the ROSbot. It also contains training scripts for a DAVE2 steering model and pytorch implmentations of other architectures. 
- [DDEnv](https://github.com/MissMeriel/DDEnv): This repo contains the first automated approach for reducing the environment in which a robot failed and identifying 1-minimal sets of environment elements associated with such failures. The technique is novel in the spatio-temporal partition strategies it employs, and in how it manages the potential robot behaviors occurring under identical environments. Our study of a ground robot on three failure scenarios finds that environment reductions of over 95% are achievable within a 2-hour window.
- [OpenPilot Falsification](https://github.com/MissMeriel/openpilot-falsification): DNNV is a framework for verifying deep neural networks (DNN). 
DNN verification takes in a neural network, and a property over that network, and checks whether the property is true, or false. 
DNNV standardizes the network and property input formats to enable multiple verification tools to run on a single network and property. 
This facilitates both verifier comparison, and artifact re-use.