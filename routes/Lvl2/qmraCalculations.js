const calculateExponentialForCryptosporidium = (r, count) => {
    // Implement the exponential calculation for Cryptosporidium parvum
   
    const calculatedResult = 1 - Math.pow(2.71828, -r * count);
    return calculatedResult;
  };

  const calculateExponentialForGiardia = (k, count) => {
    // Implement the exponential calculation for Giardia lambia 
    const calculatedResult = 1 - Math.pow(2.71828, -k * count);
    return calculatedResult;
  };

  const calculateBetaPoisson = (alpha, beta, count) => {
    // Perform the Beta-Poisson calculation here  
    const calculatedResult = 1 - (1 + (count / beta)) - alpha;
    return calculatedResult;
  };

  const calculateEntamoebaColi  = (alpha, nFifty, count) => {
    // Perform the Entamoeba Coli calculation here
    const calculatedResult = 1- (1 + (count / nFifty) * (Math.pow(2, (1 / a)) - 1));
    return calculatedResult;
  };

  const calculateProbabiltyInfection  = (probInfect, numofExposure) => {
    // Perform the calculation for Pi here
    const calculatedResult = 1 - Math.pow((1 - probInfect), -numofExposure);
    if (calculatedResult<=0)
    {
        //No feacal contamination
    } else if (calculatedResult>=1){
        //action plan
    }
    return calculatedResult;
  };