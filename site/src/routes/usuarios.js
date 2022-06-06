var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.get("/", function (req, res) {
    usuarioController.testar(req, res);
});

router.get("/listar", function (req, res) {
    usuarioController.listar(req, res);
}); 

router.get("/contarusuarioscadastrados", function (req, res) {
    usuarioController.contarusuarioscadastrados(req, res);
}); 

router.get("/contarmapasdousuario", function (req, res) {
    usuarioController.contarmapasdousuario(req, res);
}); 

router.get("/recuperardadosnivel", function (req, res) {
    usuarioController.recuperardadosnivel(req, res);
}); 

router.get("/recuperardadosnivelbasico", function (req, res) {
    usuarioController.recuperardadosbasico(req, res);
}); 

router.get("/recuperardadosnivelintermediario", function (req, res) {
    usuarioController.recuperardadosnivelintermediario(req, res);
}); 

router.get("/recuperardadosnivelavancado", function (req, res) {
    usuarioController.recuperardadosnivelavancado(req, res);
}); 

router.get("/recuperardadoslingua", function (req, res) {
    usuarioController.recuperardadoslingua(req, res);
}); 

router.get("/recuperardadoslinguaportugues", function (req, res) {
    usuarioController.recuperardadoslinguaportugues(req, res);
}); 

router.get("/recuperardadoslinguaingles", function (req, res) {
    usuarioController.recuperardadoslinguaingles(req, res);
}); 

router.get("/recuperardadoslinguaespanhol", function (req, res) {
    usuarioController.recuperardadoslinguaespanhol(req, res);
}); 


//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.post("/cadastrar_sessao", function (req, res) {
    usuarioController.cadastrar_sessao(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.entrar(req, res);
});

module.exports = router;