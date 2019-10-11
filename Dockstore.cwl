cwlVersion: v1.0
class: Workflow

inputs:
  input_file: File

outputs:
  output_file:
    type: File
    outputSource: md5sum/output_file

steps:
  md5sum:
    run: dockstore-tool-md5sum.cwl
    in:
      input_file: input_file
    out: [output_file]

doc: |
  Only output alignments with number of CIGAR bases consuming query sequence ≥ INT [0]

