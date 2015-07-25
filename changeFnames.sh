# This Shell Script list all the files' names in current directory first.
# Then makes a cmd: mv fname fname, for every files.
# User change fnames in vim (It could be other editor).
# Finally, run mvfnames_Script, and all fnames will be new names.

ls | sed 's/..*/mv & &/' > mvfnames_Script
vim mvfnames_Script
sh  mvfnames_Script
