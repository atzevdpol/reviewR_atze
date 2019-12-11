# Set up our package

# Load packages
library(devtools)

# Make a new function file
use_r("testFun")

# Initialize functions
# Like building, installing and attaching your package
load_all()

# Now we have acces to our functions
testFun(6)

# Check our package
check()

# Set up metedata DESCRIPTION file:
# manual write in name, ect. in DESCRIPTION
# Create license
use_mit_license("Atze van der Pol")

# Set up function documentation:
# 1. open the function and go to 
# "Code.. Insert roxygen skeleton" in the menu
# 2. Insert minimum values
# 3. Make documentation
document()

# View documentation:
?testFun

# Check again
check()

# Test install:
# i.e. install.packages() for CRAN
# i.e. install_github() for GitHub packages
install()

# initialize:
library(reviewRatze)

testFun(6)

# to install from GitHub
install_github("Scavetta/healthyRrick")
healthyRrick::testFun(60)

# Make a function with package dependencies
use_r("fcount")

# make documentation
document()

# add dependencies to the DESCRIPTION
use_package("forcats")

# check and reinstall:
check()
install()












