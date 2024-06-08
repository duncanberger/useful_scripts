# Useful scripts

A repository of useful scripts/code used across multiple projects.

## Descriptions

### *ari.py*
- Calculates the Adjusted Rand Index between clusters schemes.\
- As input takes tab or comma separated files (works on any number of files ≥ 2).\
- Input format: sample_name,cluster_id
Usage:
  ```
  ari.py <file1> <file2> <file3>
  ```
- Outputs: pairwise ARI values in both list and matrix format
### *switch_names.py*
- Switches the names of two files. Usage:
  ```
  switch_names.py --file1 <first_file> --file2 <second_file>
  ```
