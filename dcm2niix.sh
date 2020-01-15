##dicom to nifti conversion script
#!/bin/bash

subjDir
dicomDir=
subjID=
bidsDir=

#dicom to nifti for structural images
dcm2niix \
-o ${subjDir}/anat/ \
-x n \
-z n \
${dicomDir}

#dicom to nifti for dwi images

dcm2niix \
-o ${subjDir}/dwi \ #output directory
-f ${subjID}_dwi \ #output file name
-z y \ #compress as zip
${dicomDir} #input directory

#install tree
brew install tree

#tree structure of bids dir
tree $bidsDir/EDSD > ~/compute
