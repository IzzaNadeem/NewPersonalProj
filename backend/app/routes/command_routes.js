var ObjectID = require('mongodb').ObjectID;

module.exports = function(app, db) {

 app.get('/commands/:id', (req, res) => {
     const id = req.params.id;
     const details = { '_id': new ObjectID(id) };
    db.collection('commands').findOne(details, (err, item) => {
      if (err) {
        res.send({'error':'An error has occurred'});
      } else {
        res.send(item);
      }
    });
  });


  app.post('/commands', (req, res) => {
    const command = { body: req.body.body, title: req.body.title };
    db.collection('commands').insertOne(command, (err, result) => {
      if (err) { 
        res.send({ 'error': 'An error has occurred' }); 
      } else {
        res.send(result.ops[0]);
      }
    });
  });

  app.delete('/commands/:id', (req, res) => {
    const id = req.params.id;
    const details = { '_id': new ObjectID(id) };
    db.collection('commands').remove(details, (err, item) => {
      if (err) {
        res.send({'error':'An error has occurred'});
      } else {
        res.send('Command ' + id + ' deleted!');
      } 
    });
  });

   app.put('/commands/:id', (req, res) => {
    const id = req.params.id;
    const details = { '_id': new ObjectID(id) };
    const command = { body: req.body.body, title: req.body.title };
    db.collection('commands').update(details, command, (err, result) => {
      if (err) {
          res.send({'error':'An error has occurred'});
      } else {
          res.send(command);
      } 
    });
  });
};
