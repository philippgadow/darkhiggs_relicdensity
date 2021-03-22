## Relic density calculations for dark Higgs model

To calculate the relic density with MadDM for the dark Higgs model,
please follow the following steps.

```
git clone git@github.com:philippgadow/darkhiggs_relicdensity.git
cd darkhiggs_relicdensity
source install.sh
```

Then you are ready to run a scan.
Please consider the file [`scripts/scan_mchi_200GeV.cmd`](https://github.com/philippgadow/darkhiggs_relicdensity/blob/master/scripts/scan_mchi_200GeV.cmd) beforehand to learn which points will be scanned.
You can run with the following script.

```
source run.sh
```

The output is a text file with information about the individual runs.
The most interesting values will be the input parameters for the signal points and the computed relic density `Omegah^2`.


### Resources:

- MadDM paper (OpenAccess): [MadDM v.1.0: Computation of dark matter relic abundance using MadGraph 5](https://www.sciencedirect.com/science/article/pii/S2212686414000107)
- [Slides about MadDM](https://indico.cern.ch/event/459037/contributions/1959997/attachments/1203278/1752282/MadDM.pdf)
- [ATLAS CDM gitlab project](https://gitlab.cern.ch/atlas-phys-gen-common-dark-matter/tools/relicdensity)

