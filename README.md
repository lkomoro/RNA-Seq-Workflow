# RNA Seq Workflow

This workflow will guide users through the steps and software tools used for RNA Sequencing analysis. The main steps of this workflow are:

- Initial quality assesments and [file concatenation][7]
- Evaluation of data quality with [FastQC][3] 
- Adapter trimming with [scythe][1] and low-quality trimming with [sickle][2]
- Alignment to a reference [genome][6], [transcriptome][4], or de novo assembly
- [Processing alignments and creating a table of raw counts] [5]
- [Differential expression analysis][8]
- Annotation

Follow the links above for instructions and code for each step of the workflow.

[1]: https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/scythe.Rmd
[2]: https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/sickle.Rmd
[3]: https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/fastqc.Rmd
[4]: https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/BWA.Rmd
[5]: https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/processing_alignments.Rmd
[6]:https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/tophat.Rmd
[7]:https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/NGS.sample.org.nested.for.loop_GITcopy.R
[8]:https://github.com/lkomoro/RNA-Seq-Workflow/blob/master/DE.Rmd
