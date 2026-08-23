#region config
config_sala();
nomes = [
	"Direita",
	"Esquerda",
	"Cima",
	"Baixo",
	"Buraco Negro",
	"Buraco Branco"

];

Qnt = [
	global.canhaod,
	global.canhaoe,
	global.canhaoc,
	global.canhaob,
	global.buracoNegro,
	global.buracoBranco
];

sprites = [
    sCanhao_direita,
	sCanhao_esquerda,
	sCanhao_cima,
	sCanhao_baixo,
	sBuraconegro,
	sBuracobranco
];

objetos = [
    oCanhao_direita,
	oCanhao_esquerda,
	oCanhao_Cima,
	oCanhao_Baixo,
	oBuraco_negro,
	oBuraco_Branco
];


global.torreSelecionada = -1;
#endregion


pagina = 0;
itens_por_pagina = 4;