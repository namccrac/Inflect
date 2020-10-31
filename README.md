# Inflect

This program calculates melt curves, melt temperatures (Tm) and corresponding melt shifts (delta Tm) from LC-MS/MS abundance data 
collected in TPP experiments.

Inputs to this program are described below and are entered by the user in the second chunk of the program.

1). Raw data in Excel format.

One file needs to be names "Condition.xlsx" and contains abundance data from the TPP experiment
where a drug is administered to a cell line or a genetic mutation is used.  The other file needs to be names "Control.xlsx" and contains the 
corresponding abundance data from the control condition where the cells or tissue of interest is treated with vehicle or is the Wild Type
cell line.  The files need to have the following design:

Column A:  Labeled as "Accession".  This column contains the Accession numbers reported from the proteomics search of LC-MS/MS data.

Column B and higher:  These columns contain the abundance data from each corresponding protein in Column A.  Each column will correspond to the
abundance data at each temperature of the TPP experiment.

2).  Directory name

Enter the path for the directory that contains the two files mentioned above.  The path needs to be entered between the qoutation marks:  
directory<-"".  This directory will also be used by the program to deposit results from the analysis.  An example of this path is shown below:
directory<-"/Users/Einstein/TPP Studies/Study1"


3). The temperatures used in the TPP study.  There needs to be a corresponding column in the Excel file described above for each temperature
listed in this section of the code.  Example of the entry is shown below.

Temperature<-c(35.0,45.3,50.1,55.2,60.7,74.9)

4).  The Rsquared cutoff that is to be used to describe a melt curve as acceptable.  One possible value is Rsquared of 0.95.

5).  The standard deviation of the melt shift values.  If the value is listed as 2, it indicates that only melt shifts greater than 2 standard
deviations from the mean melt shift will be listed as significant.

The outputs of this program are as follows:

1).  Results.xlsx file.  
This file lists the calculated melt shifts and related data for each protein regardless of the criteria (Rsquared and standard deviations).

2).  SignificantResults.xlsx
This file lists the calculated melt shifts and related data for each protein that was considered significant by the criteria above.

3).  Curves Folder
This folder contains the melt curves (in pdf format) for each protein regardless of the significance of the curve.

4).  Significant Curves Folder.
This folder contains the melt curves (in pdf format) for significant proteins only.

5).  Normalized Condition and Control result files
These files contain the normalized abundance values for each protein and at each temperature.

6).  Waterfall plot
This plot shows the calculated melt shifts across the proteome in the study.  The melt shifts are plotted in order of value (from highest to lowest).
A pdf version of this plot is created in the Curves folder.
