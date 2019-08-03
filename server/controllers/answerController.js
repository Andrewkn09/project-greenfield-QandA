const model = require('../models/answerModel.js');

module.exports = {
  getAnswers: (req, res) => {
    console.time();
    const { question_id, page = 1, count = 5 } = req.params;

    model
      .getAnswers(question_id, count)
      .then(result => {
        let data = {
          question: question_id,
          page: page - 1,
          count: count,
          results: result,
        };

        console.timeEnd();
        res.send(data);
      })
      .catch(err => {
        console.log(err);
        res.sendStatus(500);
      });
  },
};