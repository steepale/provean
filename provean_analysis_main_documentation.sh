#===============================================================================
#
#         FILE: /Users/Alec/Documents/Bioinformatics/MDV_Project/provean/provean_analysis_main_documentation.sh
#
#        USAGE: Simply a documentation script, analysis inside
#
#  DESCRIPTION:  This script serves as a step by step documentation script and development script for the analysis of validated variants for Provean analysis
# REQUIREMENTS:  None
#        NOTES:  ---
#       AUTHOR:  Alec Steep, steepale@msu.edu
#  AFFILIATION:  Michigan State University (MSU), East Lansing, MI, United States
#				         USDA ARS Avian Disease and Oncology Lab (ADOL), East Lansing, MI, United States
#				         Technical University of Munich (TUM), Weihenstephan, Germany
#      VERSION:  1.0
#      CREATED:  2018.02.08
#     REVISION:  
#===============================================================================

# Permanent PROJECT DIRECTORY (Macbook Pro)
# Users/Alec/Documents/Bioinformatics/MDV_Project/provean

mkdir /Users/Alec/Documents/Bioinformatics/MDV_Project/provean
cd /Users/Alec/Documents/Bioinformatics/MDV_Project/provean

# Mak directories
mkdir -p ./{data,scripts,analysis}

# Perform Provean analysis on all Ikaros validated variants
# Ikaros Variants: 
#/Users/Alec/Documents/Bioinformatics/MDV_Project/illumina_validation/data/ikaros_mutations_target_seq_vardict_custom.txt
# Provean website: http://provean.jcvi.org/seq_submit.php

# Input one of these two IKZF1 protein sequences in Provean at a time and include all variants (via provean website)

# Protein sequences in Fasta

vi ./data/IKAROS_protein_isoforms.fa

>tr|F1NT33|F1NT33_CHICK DNA-binding protein Ikaros OS=Gallus gallus GN=IKZF1 PE=4 SV=2
METDEAQDMSQVSGKESPPISDVPDDADEPMPVPEDLSTTTGGQQSVKNERVLAGNIKIE
TQSDEENGRACEMNGEECAEDLRMLDASGDKMNGSHNGPGSKAMSGVGGIRLPNGKLKCD
ICGIICIGPNVLMVHKRSHTGERPFQCNQCGASFTQKGNLLRHIKLHSGEKPFKCHLCNY
ACRRRDALTGHLRTHSVGKPHKCGYCGRSYKQRSSLEEHKERCHNYLQTMSISSNLYSGE
KCLSDLPYDATTNYEKENEIMQTHVIDQAINNAISYLGAESLRPLVQTPPVGSEVVPVIS
PMYQLHKPLGDNQTRSNHTAQDSAVENLLLLSKAKSVSSERDASPSNSCQDSTDTESNNE
ERSGLIYLTNHIGPHARNGISVKEESRQFDVLRAGTDNSQDAFKVISSNGEQVRVYKCEH
CRVLFLDHVMYTIHMGCHGFRDPFECNMCGYHSQDRYEFSSHITRGEHRFHMS
>IKZF1-202_Translation PREDICTED: DNA-binding protein Ikaros (NM_205088.1) [Gallus gallus]
METDEAQDMSQVSGKESPPISDVPDDADEPMPVPEDLSTTTGGQQSVKNERVLAGNIKIE
TQSDEENGRACEMNGEECAEDLRMLDASGDKMNGSHNGPGSKAMSGVGGIRLPNGKLKCD
ICGIICIGPNVLMVHNRSHTGERPFQCNQCGASFTQKGNLLRHIKLHSGEKPFKCHLCNY
ACRRRDALTGHLRTHSVGKPHKCGYCGRSYKQRSSLEEHKERCHNYLQTMSISSNLYSVI
KEETNQSEMAEDLCKIGSERSLVLDRLASNVAKRKSSMPQKFVGEKCLSDLPYDATTNYE
KENEIMQTHVIDQAINNAISYLGAESLRPLVQTPPVGSEVVPVISPMYQLHKPLGDNQTR
SNHTAQDSAVENLLLLSKAKSVSSERDASPSNSCQDSTDTESNNEERSGLIYLTNHIGPH
ARNGISVKEESRQFDVLRAGTDNSQDAFKVISSNGEQVRVYKCEHCRVLFLDHVMYTIHM
GCHGFRDPFECNMCGYHSQDRYEFSSHITRGEHRFHMS

# Generate a variants file
vi ./data/Ikaros_variants_provean_format.txt

# Variants in proper format for Provean:
R162C
R162L
H163Y
H167_S168dup
H167Y
H167Q
C175Y
H176dup
C178S
C178_R185delinsW
Y180dup
R184C
R184H
D186F
D186G

# Store results
vi ./data/IKZF1-201_provean_scores.txt

# Results from >tr|F1NT33|F1NT33_CHICK DNA-binding protein Ikaros OS=Gallus gallus GN=IKZF1 PE=4 SV=2
# number of clusters:	30
# number of supporting sequences used:	342
# Considered Deleterious if less than -2.5
#VARIANT	PROVEAN_SCORE	PREDICTION
R162C	-6.945	Deleterious
R162L	-6.098	Deleterious
H163Y	-5.237	Deleterious
H167_S168dup	-9.668	Deleterious
H167Y	-5.205	Deleterious
H167Q	-6.817	Deleterious
C175Y	-9.652	Deleterious
H176dup	-8.770	Deleterious
C178S	-8.767	Deleterious
C178_R185delinsW	-56.780	Deleterious
Y180dup	-8.854	Deleterious
R184C	-7.028	Deleterious
R184H	-4.390	Deleterious
D186F	-7.913	Deleterious
D186G	-6.128	Deleterious


# Store scores
vi ./data/IKZF1-202_provean_scores.txt

# Results from >IKZF1-202_Translation PREDICTED: DNA-binding protein Ikaros (NM_205088.1) [Gallus gallus]
# number of clusters:	30
# number of supporting sequences used:	331
# Considered Deleterious if less than -2.5
#VARIANT	PROVEAN_SCORE	PREDICTION
R162C	-7.039	Deleterious
R162L	-6.170	Deleterious
H163Y	-5.269	Deleterious
H167_S168dup	-9.830	Deleterious
H167Y	-5.305	Deleterious
H167Q	-7.032	Deleterious
C175Y	-9.897	Deleterious
H176dup	-9.043	Deleterious
C178S	-8.992	Deleterious
C178_R185delinsW	-58.150	Deleterious
Y180dup	-9.060	Deleterious
R184C	-7.206	Deleterious
R184H	-4.501	Deleterious
D186F	-8.118	Deleterious
D186G	-6.316	Deleterious


