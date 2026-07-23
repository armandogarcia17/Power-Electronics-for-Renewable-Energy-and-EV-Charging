<img width="2271" height="789" alt="Cover image" src="https://github.com/user-attachments/assets/98cfaa52-5534-41d1-8468-c6b176fa8250" />

<br>

[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=armandogarcia17/Power-Electronics-for-Renewable-Energy-and-EV-Charging&project=https://github.com/armandogarcia17/Power-Electronics-for-Renewable-Energy-and-EV-Charging/blob/master/EV_and_Renewable_Energy_Technologies.prj)

# Power Electronics for Renewable Energy and EV Charging

This repository contains MATLAB Live Script lectures for modern power conversion systems used in electric vehicle charging, photovoltaic generation, and wind energy conversion. These topics are central to today's energy industry because electrified transportation, distributed solar generation, grid-connected storage, and converter-dominated power systems all depend on efficient power electronics and reliable digital control.

The lectures use MATLAB Live Scripts with Simulink and Simscape Electrical models. Each lesson combines conceptual explanation, circuit diagrams, interactive parameter changes, simulation results, and short exercises.

## Contents

- [Lecture Navigation](#lecture-navigation)
- [Suggested Order](#suggested-order)
- [Required Products](#required-products)
- [Recommended MathWorks Onramps](#recommended-mathworks-onramps)
- [Documentation References](#documentation-references)
- [Video References](#video-references)
- [How to Use This Repository](#how-to-use-this-repository)

## Lecture Navigation

Start with the charger lectures if your focus is EV infrastructure, or start with the PV and wind lectures if your focus is renewable generation and grid integration.

| Lecture | Link | Primary system | Main concepts |
| --- | --- | --- | --- |
| Off-board charger for electric vehicles | [Open lecture](Scripts/OffBoardCharger.mlx) | High-power external EV charger | AC grid input, DC link, DC-DC conversion, CC/CV battery charging, SOC, PLL, SOGI, inverter and DC bus control |
| Isolated off-board charger for electric vehicles | [Open lecture](Scripts/IsolatedOffBoardCharger.mlx) | Isolated high-power EV charger | Isolation stage, transformer-based power transfer, converter comparison, charging current and voltage control |
| On-board charger for electric vehicles | [Open lecture](Scripts/OnBoardCharger.mlx) | Vehicle-integrated grid charger | OBC constraints, unity power factor, CC/CV charging, LLC conversion, SOGI-based single-phase control |
| PMSG wind power system | [Open lecture](Scripts/PMSGWindPowerSystem.mlx) | Type 4 wind turbine with full power converter | PMSG generator, turbine power and torque, generator speed control, DC bus control, active and reactive power control |
| Single-phase photovoltaic system | [Open lecture](Scripts/SinglePhasePVSystem.mlx) | Grid-connected single-phase PV | PV curves, MPPT, boost converter control, pulsating power, second-order harmonics, single-phase inverter control |
| Three-phase photovoltaic system | [Open lecture](Scripts/ThreePhasePVSystem.mlx) | Grid-connected three-phase PV | MPPT, three-phase inverter, grid synchronization, active power transfer, duty-cycle generation, switching frequency |

## Required Products

The Simulink models in this repository require the following core MathWorks products.

| Product | Why it is needed |
| --- | --- |
| MATLAB | Live Script execution, plotting, image display, helper functions, and interactive calculations |
| Simulink | Block-diagram simulation for charger, PV, and wind-system models |
| Simscape | Physical network modeling foundation for electrical and electromechanical systems |
| Simscape Electrical | Power electronics, electrical machines, batteries, converters, inverters, sensors, and grid-interface blocks |

Optional but useful for deeper study:

- Control System Toolbox for controller analysis and tuning concepts.
- Simscape Battery for expanded battery-pack and battery-management workflows.
- Motor Control Blockset for deeper motor and generator control workflows.
- Simulink Control Design for linearization and closed-loop controller design.

## Recommended MathWorks Onramps

These self-paced courses prepare learners for the tools and concepts used across the lecture sequence.

| Preparation area | Recommended course | Link |
| --- | --- | --- |
| MATLAB basics and Live Editor workflows | MATLAB Onramp | [Open course](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted) |
| Block diagrams and simulation | Simulink Onramp | [Open course](https://matlabacademy.mathworks.com/details/simulink-onramp/simulink) |
| Physical modeling | Simscape Onramp | [Open course](https://matlabacademy.mathworks.com/details/simscape-onramp/simscape) |
| Electrical circuit modeling | Circuit Simulation Onramp | [Open course](https://matlabacademy.mathworks.com/details/circuit-simulation-onramp/circuits) |
| Power converter simulation | Power Electronics Simulation Onramp | [Open course](https://matlabacademy.mathworks.com/details/power-electronics-simulation-onramp/powerelectronics) |
| Three-phase systems, microgrids, and MPPT context | Power Systems Simulation Onramp | [Open course](https://matlabacademy.mathworks.com/details/power-systems-simulation-onramp/orps) |
| Battery charging and battery-management context | Simscape Battery Onramp | [Open course](https://matlabacademy.mathworks.com/details/simscape-battery-onramp/orsb) |
| Feedback control and PID tuning | Control Design Onramp with Simulink | [Open course](https://matlabacademy.mathworks.com/details/control-design-onramp-with-simulink/controls) |
| State-machine logic for extended controller workflows | Stateflow Onramp | [Open course](https://matlabacademy.mathworks.com/details/stateflow-onramp/stateflow) |
| Machine and inverter control background for the wind lecture | Motor Modeling with Simscape Electrical | [Open course](https://matlabacademy.mathworks.com/details/motor-modeling-with-simscape-electrical/otslmmse) |

## Documentation References

Use these MathWorks documentation pages when you want to connect the lecture models to product examples, block documentation, and modeling guidance.

- [Get Started with Simscape Electrical](https://www.mathworks.com/help/sps/getting-started-with-simscape-electrical.html)
- [Simscape Electrical Documentation](https://www.mathworks.com/help/sps/index.html)
- [Simscape Electrical Examples](https://www.mathworks.com/help/sps/examples.html)
- [Essential Electrical Modeling Techniques](https://www.mathworks.com/help/sps/ug/essential-electrical-modeling-techniques.html)
- [Choose Blocks to Model Power Electronic Converters](https://www.mathworks.com/help/sps/ug/choose-power-electronic-converter-block.html)
- [Simulating an Electronic, Mechatronic, or Electrical Power System](https://www.mathworks.com/help/sps/ug/simulating-an-electronic-mechatronic-or-electrical-power-system.html)
- [Renewable Energy Examples](https://www.mathworks.com/help/sps/renewable-energy.html)
- [Solar PV System with MPPT Using Boost Converter](https://www.mathworks.com/help/sps/ug/solar-pv-system-maximum-power-point-tracking-using-boost-converter.html)
- [Three-Phase Grid-Connected Solar Photovoltaic System](https://www.mathworks.com/help/sps/ug/three-phase-grid-connected-in-pv-system.html)
- [Control Three-Phase Solar Inverter](https://www.mathworks.com/help/sps/ug/control-three-phase-solar-inverter.html)
- [Solar PV Controller (Three-Phase)](https://www.mathworks.com/help/sps/ref/solarpvcontrollerthreephase.html)
- [PMSM Block Reference](https://www.mathworks.com/help/sps/ref/pmsm.html)

## Video References

These videos and video series are useful next steps after the lectures.

- [Modeling Power Electronics-Based Systems with Simscape Electrical](https://www.mathworks.com/videos/modeling-power-electronics-based-systems-with-simscape-electrical-1777916452947.html)
- [Developing Solar Inverter Control with Simulink](https://www.mathworks.com/videos/series/developing-solar-inverter-control-with-simulink.html)
- [Optimizing Solar Array Performance Using MPPT](https://www.mathworks.com/videos/optimizing-solar-array-performance-using-mppt-1657880084126.html)
- [Power Systems Studies with Simulink and Simscape Electrical](https://www.mathworks.com/videos/power-systems-studies-with-simulink-and-simscape-electrical-1772205136279.html)
- [Simulate Renewable Energy Systems from Months to Microseconds](https://www.mathworks.com/videos/simulate-renewable-energy-systems-from-months-to-microseconds-1693423552035.html)
- [Electric Vehicle Modeling: Powertrain, Battery, and Thermal Systems](https://www.mathworks.com/videos/electric-vehicle-modeling-powertrain-battery-and-thermal-systems-1715701434730.html)
- [Developing Electrical Systems with Simscape Electrical](https://www.mathworks.com/videos/series/developing-electrical-systems-with-simscape-electrical.html)
- [Introduction to Electrical System Modeling](https://www.mathworks.com/videos/developing-electrical-systems-with-simscape-electrical-introduction-to-electrical-system-modeling-1653461675640.html)

## How to Use This Repository

Open the repository in MATLAB from the project root so relative paths to `Scripts`, `Models`, `Images`, and `Utilities` resolve consistently. The recommended entry point inside MATLAB is [`MainMenu.m`](MainMenu.m), which opens as a Live Script in the Live Editor.

Open one lecture at a time, keep code hidden unless you are modifying the lesson, and run simulations only after confirming that the required products are installed. Many simulations take several minutes because the models include switching power electronics and physical electrical networks.

When adapting the lectures for a course, keep the entry point, learner scripts, models, images, and utilities in their current top-level folders. That organization makes links predictable and keeps the Live Scripts focused on guided exploration instead of path management.
