#!/bin/bash
#Generate an ee-dataset file from the book

OUT_FN=../../datasets/darwin-origin.eloader

mkdir -p chapters
cat oos.txt | ruby -n -e '$_ =~ /^Chapter\s+([XVI]+)\./i; $f = File.open("chapters/#{$1}", "w") if $1; $f.puts $_ if $f'

cp ldr_header $OUT_FN

find chapters | egrep '[IVX]+' | xargs -n1 ruby -rJSON -e 'ch = ARGV[0].split("/")[1]; txt = File.open(ARGV[0]).read; puts({"_id" => ch, "numeral" => ch, "title" => txt.lines.first.split(/\./, 2)[1].chomp, "text" => txt}.to_json)' >> $OUT_FN
rm -r chapters/*
