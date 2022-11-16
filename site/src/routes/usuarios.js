var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.get("/", function (req, res) {
    usuarioController.testar(req, res);
});

router.get("/listar", function (req, res) {
    usuarioController.listar(req, res);
});

router.get("/carregarConfig/:idConfig", function (req, res) {
    usuarioController.carregarConfig(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.entrar(req, res);
});

router.post("/cadastrarJogo", function (req, res) {
    usuarioController.cadastrarJogoFavorito(req, res);
})

router.post("/gravarConfig", function (req, res) {
    usuarioController.gravarConfig(req, res);
})

module.exports = router;