import model DarkHiggs2MDM
define darkmatter n1
generate relic_density
output out_relicdensity_darkhiggs_all


# scan points of signal grid
launch
set MZP scan:[x for x in range(500,3100,100)]
set MDM scan:[x for x in range(10,200,10)]
set MHs scan:[x for x in range(50,160,10)]
set whs AUTO
set wzp AUTO
set pdlabel lhapdf
set lhaid 263000

