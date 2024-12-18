#!/usr/bin/bash

output_file="summaries.txt"
: > "$output_file" # Clear the output file if it exists

for file in *.txt; do
	    echo "Checking $file" | tee -a "$output_file"
	        echo "=== Summary for $file ===" | tee -a "$output_file"
		    ollama run vanilj/phi-4 "Summarize:" < "$file" | tee -a "$output_file"
		        echo -e "\n" | tee -a "$output_file" # Add a blank line between summaries
		done

