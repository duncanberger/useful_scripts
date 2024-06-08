# Useful scripts

A repository of useful scripts/code used across multiple projects.

## Descriptions
### *asm_stats.py*
- Calculates common assembly statistics for one or more FASTA files.
- **Input:** takes either a single FASTA or a directory of FASTA files.
Usage:
  ```
  asm_stats.py --fasta <FASTA>

  asm_stats.py --fasta_dir <fasta_dir/>
  ```
* **Output**: CSV file containing assembly metrics with columns:
  * sampleid : Based on the first part of the input fasta (delimeter: '.')
  * assembly_length_bp : Assembly length (bp)
  * scaffold_count : Number of scaffolds
  * scaffold_N50_bp : Scaffold N<sub>50</sub> (bp)
  * scaffold_N90_bp : Scaffold N<sub>90</sub> (bp)
  * contig_count : Number of contigs
  * contig_N50_bp : Contig N<sub>50</sub> (bp)
  * contig_N90_bp : Contig N<sub>90</sub> (bp)
  * GC_perc : GC content (%)
  * gaps_count : Number of gaps (min length to define a gap can be changed with --gap parameter)
  * gaps_sum_bp : Total gap length (bp)
  * gaps_perc : Proportion of genome composed of gaps (%)

### *ari.py*
- Calculates the Adjusted Rand Index between clusters schemes.
- **Input:** takes tab or comma separated files (works on any number of files ≥ 2).
- **Input format:** sample_name,cluster_id
Usage:
  ```
  ari.py <file1> <file2> <file3>
  ```
- **Output:** pairwise ARI values in both list and matrix format
### *switch_names.py*
- Switches the names of two files. Usage:
  ```
  switch_names.py --file1 <first_file> --file2 <second_file>
  ```
