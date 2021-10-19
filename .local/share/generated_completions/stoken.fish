# stoken
# Autogenerated from man page /usr/share/man/man1/stoken.1.gz
complete -c stoken -l new-password -d 'choose a longer, hard-to-guess passphrase for this purpose'
complete -c stoken -l rcfile -d 'Use an alternate . stokenrc configuration file'
complete -c stoken -l password -s p -d 'Use a password supplied from the command line, instead of prompting the user'
complete -c stoken -l pin -s n -d 'Use a PIN supplied from the command line, instead of prompting the user'
complete -c stoken -l devid -d 'Use a device ID supplied from the command line to decrypt the token'
complete -c stoken -l keep-password -d 'If the token in the '
complete -c stoken -l new-pin -d 'Supply a new PIN from the command line for the setpin operation'
complete -c stoken -l new-devid -d 'Used with the export or issue command to encrypt the new token with a specifi…'
complete -c stoken -l blocks -l iphone -l android -l v3 -d 'Used with the export command to select the output format'
complete -c stoken -l sdtid -l xml -d 'These options are synonyms'
complete -c stoken -l qr -d 'Encode the token as a QR code and write it to file. png'
complete -c stoken -l show-qr -d 'Encode the token as a QR code and immediately display it on the screen'
complete -c stoken -l template -d 'Used with the export or issue commands to override fields in the XML output'
complete -c stoken -l use-time -o offset -d 'Instead of generating a tokencode based on the current time of day, force a s…'
complete -c stoken -l next -d 'Generate the next tokencode instead of the current tokencode'
complete -c stoken -l stdin -s s -d 'When generating a tokencode that requires either a password or PIN, read the …'
complete -c stoken -l force -s f -d 'Override token expiration date checks (for tokencode) or token overwrite chec…'
complete -c stoken -l batch -s b -d 'Abort with an error exit code if any user input is required'
complete -c stoken -l file -d 'Read a ctf string, an Android/iPhone URI, or an XML sdtid token from file ins…'
complete -c stoken -l token -d 'Use a token from the command line instead of the . stokenrc file'
complete -c stoken -l random -d 'Generate a random token on the fly.   Used for testing or demonstrations only'
complete -c stoken -l help -s h -d 'Display basic usage information'
complete -c stoken -l version -s v -d 'Display version information.  SECURITY CONSIDERATIONS'

