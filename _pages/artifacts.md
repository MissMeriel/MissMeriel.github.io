---
layout: archive
title: "Tools and Artifacts"
permalink: /artifacts/
author_profile: true
---

- [DeepManeuver](https://github.com/MissMeriel/DeepManeuver): This repo contains the tools, paper, and study data for "DeepManeuver: Adversarial Test Generation for Trajectory Manipulation of Autonomous Vehicles". DOI 10.1109/TSE.2023.3301443. An archived copy of this repo and the data for this paper can be found at Zenodo record 8284708 and Zenodo record 8284640, respectively.
- [ROSbot Computer Vision and Actuation Test Platform](https://github.com/MissMeriel/ROSbot_data_collection): This repository contains instructions and source code for using the ROSbot to collect a dataset by driving around using the Husarion ROSbot 2.0. It contains instructions to install, troubleshoot, and initialize the onboard data collection routine for the ROSbot. It also contains training scripts for a DAVE2 steering model and pytorch implmentations of other architectures. 
- [DDEnv](https://github.com/MissMeriel/DDEnv): DNNF is a tool for applying falsification methods such as adversarial attacks to the checking of DNN correctness problems.
Adversarial attacks provide a powerful repertoire of scalable algorithms for property falsification.
DNNF leverages these techniques by employing reductions to automatically transform correctness problems into equivalent sets of adversarial robustness problems, to which these attacks can then be applied.
- [OpenPilot Falsification](https://github.com/MissMeriel/openpilot-falsification): DNNV is a framework for verifying deep neural networks (DNN). 
DNN verification takes in a neural network, and a property over that network, and checks whether the property is true, or false. 
DNNV standardizes the network and property input formats to enable multiple verification tools to run on a single network and property. 
This facilitates both verifier comparison, and artifact re-use.