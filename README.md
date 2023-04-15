# LammpsCedric

Repository containing the output from the given LAMMPS scripts and the relevant data extracted from the log files.
Data extraction from the log files was done using the pizza.py package and visualization (using the dump files) was done using VMD.
The used representation in VMD is VDW + DynamicBonds (cut-off distance = 1.8 and 3.0 for graphene and the Si sheet respectively). This allows us to visualize the breaking of bonds and thus tearing of the sheet or melting and so on.

The LAMMPS_scripts directory contains the lammps scripts used as a starting point to obtain the results discussed in the paper.

# Remarks on Lammps settings

Real units were used, meaning the default time step is 1 fs. This was good enough for the potential profile and the stress-strain curves at 300 K.
At higher temperatures however (as encountered in the melting simulations where temperature goes up to 5000 K and even for stretching at 500 K) led to 'atom lost errors'. 
This issue resolved by using a smaller time step; here 0.1 fs was used. The same error still occurs for the melting of the silicene sheet (at 3797.1767 K). This can be ignored as melting as already occured by then (and is actually the cause of this error).
Also, for the sake of consistency, the stress-strain curve at 300 K was recalculated with a timestep of 0.1 fs.

# VMD Settings

Representation: VDW + DynamicBonds

Graphene: sphere scale = 0.3, distance cut-off = 1.8 & bond radius = 0.1
Silicene: sphere scale = 0.3, distance cut-off = 3.0 & bond radius = 0.1



# Tasks

1. Use 'graphene.m' to create a small graphene sheet (only a single rectangular cell with 4 atoms is enough). Study briefly the format of the output file. You can read about the data format in the manual (see command 'read_data').
2. Study the input script 'profile.lmp'. Consult the manual if commands are not clear. Use this script to plot the energy in function of the distance between the carbon atoms. What is the interatomic distance for a relaxed graphene sheet? (Tip: start with an interatomic distance of 1A).
3. Use 'graphene.m' to create a large relaxed graphene sheet with at least 200 atoms. Use 'tensiletest.lmp' to obtain the stress/strain curve. Determine the Young's modulus and the breaking stress/strain. Stretch in x and y direction. Which effect has the temperature on the breaking stress/strain? Check how computational parameters influence the simulation.
4. Study the buckling of graphene under compression. This can be done with 'tensiletest.lmp'. Check how computational parameters influence the simulation.
5. Use 'melting.lmp' to determine the melting temperature of graphene. Check how computational parameters influence the simulation.
6. Redo task 3,4 and 5 for silicene. Use the reaxFF parameters of Si in 'ffield.reax.CHONSSi.2' and the silicene sheet defined in 'silicene.dat'. Make a comparison of the results for graphene and silicene.

