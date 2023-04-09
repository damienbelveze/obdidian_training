import pypandoc

output = pypandoc.convert_file(
    'pseudonymat.md', 'pdf', 
    extra_args=['--bibliography', 'biblio/obsidian3.bib', '--csl', 'csl/ieee.csl']
)
with open('pseudonymat.pdf', 'w') as f:
    f.write(output)