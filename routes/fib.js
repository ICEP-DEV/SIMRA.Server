const express = require('express');
const connection = require("../config/config");
const router = express.Router();

router.get('/indicators', (req, res) => {
    var indicators = [
        { indicator: "Coliforms", ratio: 1 },
        { indicator: "E. coli", ratio: 0.66 },
        { indicator: "Enterococcus", ratio: 0.01 },
        { indicator: "Clostridium", ratio: 0.8 },
        { indicator: "other", ratio: 0 }
    ]

    res.send({ message: "List of Indicators", success: true, indicators })
})

router.get('/reference_pathogens', (req, res) => {
    var reference_pathogens = [
        // {pathogen:"Cryptosridium Parvum", best_fit_model:"exponential", parameter:[{radius:0.059}]},
        { pathogen: "E.coli 0157:H7", best_fit_model: "beta-poisson", parameter: [{ alpha: 0.4, beta: 45.9 }] },
        { pathogen: "Campylobacter jejuni", best_fit_model: "beta-poisson", parameter: [{ alpha: 0.145, beta: 7.85 }] },
        { pathogen: "Salmonella typhi", best_fit_model: "beta-poisson", parameter: [{ alpha: 0.21, beta: 49.78 }] },
        { pathogen: "S.Flexneri", best_fit_model: "beta-poisson", parameter: [{ alpha: 0.265, beta: 1480 }] },
        { pathogen: "Vibrio Cholera", best_fit_model: "beta-poisson", parameter: [{ alpha: 0.169, beta: 2305 }] },
        { pathogen: "Giardia lambia", best_fit_model: "exponential", parameter: [{ constant: 0.0199, n50: null }] },
        { pathogen: "Entamoeba coli", best_fit_model: "beta-poisson", parameter: [{ alpha: 0.101, n50: 341 }] }
    ]

    res.send({ message: "List of Indicators", success: true, reference_pathogens })
})

router.get('/maker_genes', (req, res) => {
    var makers = [
        // {pathogen:"Cryptosridium Parvum", best_fit_model:"exponential", parameter:[{radius:0.059}]},
        { maker: 'Cow', ratio: 0.66 },
        { maker: "Human", ratio: 1 },
        { maker: "Dog", ratio: 0.01 },
        { maker: "Pig", ratio: 0.8 },
        { maker: "Chicken", ratio: 0.01 },
        { maker: "other", ratio: 0 },
    ]

    res.send({ message: "List of maker genes", success: true, makers })
})


module.exports = router