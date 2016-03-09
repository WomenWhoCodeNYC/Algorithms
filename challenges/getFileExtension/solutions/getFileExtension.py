##Level 2
"""Create a function called getFileExtension that returns the extension of a file name.
If the inputed string does not have an extension, return false.
Example: getFileExtension('resume.pdf') should return 'pdf'."""

def getFileExtension(filename):
    Filesplit = filename.rsplit('.',1)
    print Filesplit
    if (len(Filesplit) > 1) :
        return Filesplit[len(Filesplit)-1]
    else:
        return False

#print getFileExtension("my.resume.updated.pdf")
#print getFileExtension("resume")

## submitted by [jungjung917](https://github.com/jungjung917)
