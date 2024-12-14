var express = require("express");
var router = express.Router();
var quizController = require("../controllers/QuizController");

router.post("/salvar-resultado", function (req, res) {
    quizController.salvarResultado(req, res);
});

module.exports = router;
