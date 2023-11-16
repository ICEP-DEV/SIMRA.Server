const express = require('express');
const router = express.Router();
const connection = require('../config/config');

// Get events by province
router.get('/events_by_province/:provinceId', async (req, res) => {
    try {
        const { provinceId } = req.params;
        const sql = 'SELECT * FROM events WHERE province_id = ?';
        const events = await queryDatabase(sql, [provinceId]);
        res.send({ success: true, events });
    } catch (error) {
        console.error(error);
        res.status(500).send({ success: false, error: 'Internal Server Error' });
    }
});

// Get events by municipality
router.get('/events_by_municipality/:municipalityId', async (req, res) => {
    try {
        const { municipalityId } = req.params;
        const sql = 'SELECT * FROM events WHERE muni_id = ?';
        const eventsMuni = await queryDatabase(sql, [municipalityId]);
        res.send({ success: true, eventsMuni });
    } catch (error) {
        console.error(error);
        res.status(500).send({ success: false, error: 'Internal Server Error' });
    }
});




// API endpoint to subscribe a user to newsletters
app.post('/api/users', (req, res) => {
    const { email, city, subscribed } = req.body;
  
    db.query('INSERT INTO users (email, city, subscribed) VALUES (?, ?, ?)', [email, city, subscribed], (err) => {
      if (err) {
        res.status(500).send(err);
      } else {
        res.status(201).send('User subscribed successfully.');
      }
    });
  });
  
  // API endpoint to send events users in a specific city
  app.post('/api/events/:province', (req, res) => {
    const province = req.params.province;
    const munici_id = req.params.munici_id;
  
    db.query('SELECT * FROM users WHERE Province = ? AND muni_id = ?', [province, munici_id], (err, results) => {
      if (err) {
        console.error('Error:', err);
        res.status(500).send('Internal Server Error.');
      } else if (results.length === 0) {
        res.status(404).send('No users in the specified Province.');
      } else {
        const events = {
          title: req.body.title,
          content: req.body.content,
          publicationDate: new Date(),
        };
  
        res.status(200).send(`Newsletter sent to ${results.length} users in ${province}.`);
      }
    });
  });

// Helper function to query the database
async function queryDatabase(sql, params) {
    return new Promise((resolve, reject) => {
        connection.query(sql, params, (err, results) => {
            if (err) {
                reject(err);
            } else {
                resolve(results);
            }
        });
    });
}

module.exports = router;
