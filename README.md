# RNA Seq Workflow

This workflow will guide users through steps and some common software tools used for RNA Sequencing analysis (though there are many others that also can work well), using mostly simple bash and R scripts. Note, this workflow is geared toward analsis of PE reads aligned to a reference, but can be amended for other data types, etc.

**The main steps of this workflow are:**  

- [Initial quality assesments][11] and [file concatenation][7]
- Evaluation of data quality with [FastQC][3] 
- Adapter trimming with [scythe][1] and low-quality trimming with [sickle][2]
- Alignment to a reference [genome][6], [transcriptome][4], or de novo assembly*
- [Processing alignments and creating a table of raw counts] [5]
- [Differential expression analysis][8]
- [Annotation][9]

Follow the links above for instructions and code for each step of the workflow.  

**The workflow above use reference alignments, but good resources for de novo assembly and alignment include:*
- [Salmon][12]
- [MakeMyTranscriptome][10] (Tessa Pierce, SIO)

[1]: https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/scythe.Rmd
[2]: https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/sickle.Rmd
[3]: https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/fastqc.Rmd
[4]: https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/BWA.Rmd
[5]: https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/processing_alignments.Rmd
[6]:https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/tophat.Rmd
[7]:https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/Concatenation.Rmd
[8]:https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/DE.Rmd
[9]:https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/Annotation.Rmd
[10]:https://github.com/bluegenes/MakeMyTranscriptome
[11]:https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/Initial_dataqualityassess.Rmd
[12]:https://github.com/SIO-BUG/BUG-Resources/blob/master/tutorials/salmon.rst
