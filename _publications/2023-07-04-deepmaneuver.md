---
collection: publications
downloads:
  paper: https://ieeexplore.ieee.org/abstract/document/10213222
  poster: /files/posters/DeepManeuver-Poster-spring23-CRA.pdf
  repo: https://github.com/MissMeriel/DeepManeuver
  video: https://www.youtube.com/watch?v=eLaEFqttFmM
type: inproceedings
identifier: "vonstein-et-al:tse:2022"
author: [Meriel von Stein, David Shriver, Sebastian Elbaum]
title: "DeepManeuver: Adversarial Test Generation for Trajectory Manipulation of Autonomous Vehicles"
year: 2023
conference: IEEE Transactions on Software Engineering Journal
abstract: "Adversarial test generation techniques aim to produce input perturbations that cause a DNN to compute incorrect outputs. For autonomous vehicles driven by a DNN, however, the effect of such perturbations are attenuated by other parts of the system and are less effective as vehicle state evolves. In this work we argue that for adversarial testing perturbations to be effective on autonomous vehicles, they must account for the subtle interplay between the DNN and vehicle states. Building on that insight, we develop DeepManeuver, an automated framework that interleaves adversarial test generation with vehicle trajectory physics simulation.  Thus, as the vehicle moves along a trajectory, DeepManeuver enables the refinement of candidate perturbations to: (1) account for changes in the state of the vehicle that may affect how the perturbation is perceived by the system; (2) retain the effect of the perturbation on previous states so that the current state is still reachable and past trajectory is preserved; and (3) result in multi-target maneuvers that require fulfillment of vehicle state sequences (e.g. reaching locations in a road to navigate a tight turn). Our assessment reveals that DeepManeuver can generate perturbations to force maneuvers more effectively and consistently than state-of-the-art techniques by 20.7 percentage points on average. We also show DeepManeuver's effectiveness at disrupting vehicle behavior to achieve multi-target maneuvers with a minimum 52% rate of success."
timestamp: Tues, 04 July 2023 16:53:23 -0500
date: 2023-07-04
teaser: /publications/superdeepbillboard.png
---
