figlet 'Forcehost' -f small
sleep 2.5
npm install .
echo What is the file name?
read file
node $file