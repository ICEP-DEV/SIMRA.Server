const express = require('express');
const connection = require("../config/config");
const router = express.Router()

router.use(bodyParser.json());

// Create a new data entry
router.post('/api/data', (req, res) => {
  const { referencePath, userCount, estimatedCount, roundedEstimatedCount } = req.body;

  // Get the current timestamp
  const currentTime = new Date().toISOString().slice(0, 19).replace('T', ' ');

  const data = {
    referencePath,
    userCount,
    estimatedCount,
    roundedEstimatedCount,
    timestamp: currentTime,
  };

  const sql = 'INSERT INTO data SET ?';

  connection.query(sql, data, (err, result) => {
    if (err) {
      console.error('Error saving data to MySQL:', err);
      res.status(500).send('Error saving data');
    } else {
      res.status(201).send('Data saved');
    }
  });
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});

module.exports = router;