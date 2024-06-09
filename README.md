# Useful scripts

A repository of useful scripts/code used across multiple projects.

## *asm_stats.py*
- Calculates common assembly statistics for one or more FASTA files.
- **Input:** takes either a single FASTA or a directory of FASTA files.

Usage:
  ```
  asm_stats.py --fasta <FASTA>

  asm_stats.py --fasta_dir <fasta_dir/>
  ```

Parameters:
```
  -f FILE, --file FILE            Input FASTA file
  --fasta_dir FASTA_DIR           Directory containing FASTA files
  --fasta FASTA                   Single FASTA file
  --gap GAP                       Minimum gap length to be considered a scaffold (optional) [2]
  --output OUTPUT                 Output file prefix (optional) ['sample']
  --version                       Show program's version number and exit
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

## *ari.py*
- Calculates the Adjusted Rand Index between clusters schemes.
- **Input:** takes tab or comma separated files (works on any number of files ≥ 2).
- **Input format:** sample_name,cluster_id 

Usage:
  ```
  ari.py <file1> <file2> <file3>
  ```
- **Output:** pairwise ARI values in both list and matrix format
## *fa_select.py*
- Calculates the Adjusted Rand Index between clusters schemes.
- **Input:** FASTA file

Usage:
  ```
  fa_select.py -f <FASTA>
  ```
Parameters:
  ```
  -f FILE, --file FILE            Input FASTA file
  -s, --sort                      Sort by header name
  -l LENGTH, --length LENGTH      Keep only contigs longer than the specified length
  -p PREFIX, --prefix PREFIX      Append prefix to each contig header
  -i INCLUDE, --include INCLUDE   File with list of contig headers to include
  -e EXCLUDE, --exclude EXCLUDE   File with list of contig headers to exclude
  -o OUTPUT, --output OUTPUT      Output file name
  -v, --version                   Show program's version number and exit
  ```
- **Output:** FASTA file

## *switch_names.py*
- Switches the names of two files.
  
Usage:
  ```
  switch_names.py --file1 <first_file> --file2 <second_file>
  ```
## *unique_values.py*
- For a specified column, returns one representative row containing each unique value in the dataframe. Similiar to 'uniq' on a single column but returns the whole row. 
- **Input:** takes a tab separated file with a header (relevant column must be specified with the --col parameter) and --mode determines whether the first row in a dataframe containing the value is retained or a row is randomly selected.

Usage:
  ```
  unique_values.py --input <input file> --col <column name> --mode <first|random>
  ```
















