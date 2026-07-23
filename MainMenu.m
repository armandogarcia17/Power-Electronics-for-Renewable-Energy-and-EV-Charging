%[text] # Power Electronics for Renewable Energy and EV Charging
%[text] This collection introduces modern power conversion systems used in electric vehicle charging, photovoltaic generation, and wind energy conversion. These topics are central to today's energy industry because electrified transportation, distributed solar generation, grid-connected storage, and converter-dominated power systems all depend on efficient power electronics and reliable digital control.
%[text] The lectures use MATLAB Live Scripts with Simulink and Simscape Electrical models. Each lesson combines a short conceptual narrative with circuit diagrams, interactive parameter changes, simulation results, and short exercises. Open the files from this project root so the relative links to `Scripts`, `Models`, `Images`, and `Utilities` resolve consistently.
%[text:tableOfContents]{"heading":"Contents"}
%%
%[text] ## Lecture Navigation
%[text] Start with the charger lectures if your focus is EV infrastructure, or start with the PV and wind lectures if your focus is renewable generation and grid integration.
%[text:table]
%[text] | Lecture | Link | Primary system | Main concepts |
%[text] | --- | --- | --- | --- |
%[text] | Off-board charger for electric vehicles | [Open lecture](file:.\Scripts\OffBoardCharger.mlx) | High-power external EV charger | AC grid input, DC link, DC-DC conversion, CC/CV battery charging, SOC, PLL, SOGI, inverter and DC bus control |
%[text] | Isolated off-board charger for electric vehicles | [Open lecture](file:.\Scripts\IsolatedOffBoardCharger.mlx) | Isolated high-power EV charger | Isolation stage, transformer-based power transfer, converter comparison, charging current and voltage control |
%[text] | On-board charger for electric vehicles | [Open lecture](file:.\Scripts\OnBoardCharger.mlx) | Vehicle-integrated grid charger | OBC constraints, unity power factor, CC/CV charging, LLC conversion, SOGI-based single-phase control |
%[text] | PMSG wind power system | [Open lecture](file:.\Scripts\PMSGWindPowerSystem.mlx) | Type 4 wind turbine with full power converter | PMSG generator, turbine power and torque, generator speed control, DC bus control, active and reactive power control |
%[text] | Single-phase photovoltaic system | [Open lecture](file:.\Scripts\SinglePhasePVSystem.mlx) | Grid-connected single-phase PV | PV curves, MPPT, boost converter control, pulsating power, second-order harmonics, single-phase inverter control |
%[text] | Three-phase photovoltaic system | [Open lecture](file:.\Scripts\ThreePhasePVSystem.mlx) | Grid-connected three-phase PV | MPPT, three-phase inverter, grid synchronization, active power transfer, duty-cycle generation, switching frequency |
%[text:table]
%%
%[text] ## Required Products
%[text] The model dependency analyzer for this folder reports Simulink, Simscape, and Simscape Electrical for the `.slx` models. MATLAB is also required because the content is delivered as Live Scripts with local helper code. The broad script scan may report additional products from referenced blocks or advanced workflows, but the core lecture path is built around the products below.
%[text:table]
%[text] | Product | Why it is needed |
%[text] | --- | --- |
%[text] | MATLAB | Live Script execution, plotting, image display, helper functions, and interactive calculations |
%[text] | Simulink | Block-diagram simulation for charger, PV, and wind-system models |
%[text] | Simscape | Physical network modeling foundation for electrical and electromechanical systems |
%[text] | Simscape Electrical | Power electronics, electrical machines, batteries, converters, inverters, sensors, and grid-interface blocks |
%[text:table]
%[text] Optional but useful for deeper study: Control System Toolbox for controller analysis and tuning concepts, Simscape Battery for expanded battery-pack and battery-management workflows, Motor Control Blockset for deeper motor and generator control workflows, and Simulink Control Design for linearization and closed-loop controller design.
%%
%[text] ## Product Check
%[text] Run this section to check whether the core products are available in the current MATLAB installation.
  %[control:button:93b4]{"position":[1,2]}
requiredProducts = ["MATLAB","Simulink","Simscape","Simscape Electrical"];
installed = ver;
installedProducts = string({installed.Name});
missingProducts = setdiff(requiredProducts, installedProducts);
if isempty(missingProducts) %[output:group:8453feb7]
    disp("Core products for the lecture models are installed.") %[output:89e6a500]
else
    disp("Missing core products:")
    disp(missingProducts')
end %[output:group:8453feb7]
%%
%[text] ## Recommended MathWorks Onramps
%[text] These self-paced courses prepare learners for the tools and concepts used across the lecture sequence.
%[text:table]
%[text] | Preparation area | Recommended course | Link |
%[text] | --- | --- | --- |
%[text] | MATLAB basics and Live Editor workflows | MATLAB Onramp | [Open course](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted) |
%[text] | Block diagrams and simulation | Simulink Onramp | [Open course](https://matlabacademy.mathworks.com/details/simulink-onramp/simulink) |
%[text] | Physical modeling | Simscape Onramp | [Open course](https://matlabacademy.mathworks.com/details/simscape-onramp/simscape) |
%[text] | Electrical circuit modeling | Circuit Simulation Onramp | [Open course](https://matlabacademy.mathworks.com/details/circuit-simulation-onramp/circuits) |
%[text] | Power converter simulation | Power Electronics Simulation Onramp | [Open course](https://matlabacademy.mathworks.com/details/power-electronics-simulation-onramp/powerelectronics) |
%[text] | Three-phase systems, microgrids, and MPPT context | Power Systems Simulation Onramp | [Open course](https://matlabacademy.mathworks.com/details/power-systems-simulation-onramp/orps) |
%[text] | Battery charging and battery-management context | Simscape Battery Onramp | [Open course](https://matlabacademy.mathworks.com/details/simscape-battery-onramp/orsb) |
%[text] | Feedback control and PID tuning | Control Design Onramp with Simulink | [Open course](https://matlabacademy.mathworks.com/details/control-design-onramp-with-simulink/controls) |
%[text] | State-machine logic for extended controller workflows | Stateflow Onramp | [Open course](https://matlabacademy.mathworks.com/details/stateflow-onramp/stateflow) |
%[text] | Machine and inverter control background for the wind lecture | Motor Modeling with Simscape Electrical | [Open course](https://matlabacademy.mathworks.com/details/motor-modeling-with-simscape-electrical/otslmmse) |
%[text:table]
%%
%[text] ## Documentation References
%[text] Use these MathWorks documentation pages when you want to connect the lecture models to product examples, block documentation, and modeling guidance.
%[text] - [Get Started with Simscape Electrical](https://www.mathworks.com/help/sps/getting-started-with-simscape-electrical.html)
%[text] - [Simscape Electrical Documentation](https://www.mathworks.com/help/sps/index.html)
%[text] - [Simscape Electrical Examples](https://www.mathworks.com/help/sps/examples.html)
%[text] - [Essential Electrical Modeling Techniques](https://www.mathworks.com/help/sps/ug/essential-electrical-modeling-techniques.html)
%[text] - [Choose Blocks to Model Power Electronic Converters](https://www.mathworks.com/help/sps/ug/choose-power-electronic-converter-block.html)
%[text] - [Simulating an Electronic, Mechatronic, or Electrical Power System](https://www.mathworks.com/help/sps/ug/simulating-an-electronic-mechatronic-or-electrical-power-system.html)
%[text] - [Renewable Energy Examples](https://www.mathworks.com/help/sps/renewable-energy.html)
%[text] - [What Is 3-Phase Power?](https://www.mathworks.com/videos/series/what-is-3-phase-power.html)
%[text] - [Solar PV System with MPPT Using Boost Converter](https://www.mathworks.com/help/sps/ug/solar-pv-system-maximum-power-point-tracking-using-boost-converter.html)
%[text] - [Three-Phase Grid-Connected Solar Photovoltaic System](https://www.mathworks.com/help/sps/ug/three-phase-grid-connected-in-pv-system.html)
%[text] - [Control Three-Phase Solar Inverter](https://www.mathworks.com/help/sps/ug/control-three-phase-solar-inverter.html)
%[text] - [Solar PV Controller (Three-Phase)](https://www.mathworks.com/help/sps/ref/solarpvcontrollerthreephase.html)
%[text] - [PMSM Block Reference](https://www.mathworks.com/help/sps/ref/pmsm.html) \
%%
%[text] ## Video References
%[text] These videos and video series are useful next steps after the lectures.
%[text] - [Modeling Power Electronics-Based Systems with Simscape Electrical](https://www.mathworks.com/videos/modeling-power-electronics-based-systems-with-simscape-electrical-1777916452947.html)
%[text] - [Developing Solar Inverter Control with Simulink](https://www.mathworks.com/videos/series/developing-solar-inverter-control-with-simulink.html)
%[text] - [Optimizing Solar Array Performance Using MPPT](https://www.mathworks.com/videos/optimizing-solar-array-performance-using-mppt-1657880084126.html)
%[text] - [Power Systems Studies with Simulink and Simscape Electrical](https://www.mathworks.com/videos/power-systems-studies-with-simulink-and-simscape-electrical-1772205136279.html)
%[text] - [Simulate Renewable Energy Systems from Months to Microseconds](https://www.mathworks.com/videos/simulate-renewable-energy-systems-from-months-to-microseconds-1693423552035.html)
%[text] - [Electric Vehicle Modeling: Powertrain, Battery, and Thermal Systems](https://www.mathworks.com/videos/electric-vehicle-modeling-powertrain-battery-and-thermal-systems-1715701434730.html)
%[text] - [Developing Electrical Systems with Simscape Electrical](https://www.mathworks.com/videos/series/developing-electrical-systems-with-simscape-electrical.html)
%[text] - [Introduction to Electrical System Modeling](https://www.mathworks.com/videos/developing-electrical-systems-with-simscape-electrical-introduction-to-electrical-system-modeling-1653461675640.html) \
%%
%[text] ## How to Use This Collection
%[text] Open one lecture at a time, keep code hidden unless you are modifying the lesson, and run simulations only after checking that the required products are available. Many simulations take several minutes because the models include switching power electronics and physical electrical networks.
%[text] When adapting the lectures for a course, keep the entry point, learner scripts, models, images, and utilities in their current top-level folders. That organization makes links predictable and keeps the Live Scripts focused on guided exploration instead of path management.

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"hidecode"}
%---
%[control:button:93b4]
%   data: {"label":"Check Dependencies","run":"Section"}
%---
%[output:89e6a500]
%   data: {"dataType":"text","outputData":{"text":"Core products for the lecture models are installed.\n","truncated":false}}
%---
