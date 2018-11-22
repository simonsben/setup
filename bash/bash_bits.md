# Bits of bash code

## Check if user is root (i.e. if running with sudo)
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

**NOTE:** Taken from https://stackoverflow.com/questions/18215973/how-to-check-if-running-as-root-in-a-bash-script

## Print file to console
cat <FILE_NAME>

## Load text into file
echo "TEXT HERE" > <FILE_NAME>

## Append text to file
echo "TEXT HERE" >> <FILE_NAME>

## Add/append with formatting
printf "TEXT HERE\n" >[>] <FILE_NAME>

## Continue lines with \
echo "Hello\
there!"
**NOTE:** Prints as: Hello there!

## Refer to home directory
${HOME}