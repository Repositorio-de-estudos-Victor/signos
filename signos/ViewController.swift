//
//  ViewController.swift
//  signos
//
//  Created by Victor Rodrigues Novais on 24/04/20.
//  Copyright © 2020 Victoriano. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = []
    var significadoSignos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Configura os signos
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        //Configura os significados
        significadoSignos.append("Pertencente ao elemento fogo, as arianas são animadas, independentes, individualistas, dinâmicas, corajosas e aventureiras. Com uma enorme capacidade de liderança,são muito impacientes e, por sua vez, imediatistas o que atrapalha os resultados em longo prazo. Simbolizam o impulso vital, a ação e depois a razão.")
        significadoSignos.append("Pertencente ao elemento terra, as taurinas são positivas, pacientes, determinadas, noturnas, leais e românticas. Valorizam muito a estabilidade financeira e objetivam a conquista e o acúmulo de bens materiais. Por serem calmas ao extremo, essa paciência toda pode se tornar teimosia um dos maiores defeitos do signo, seguido de gula, materialismo e possessão.")
        significadoSignos.append("Pertencente ao elemento ar, as geminianas são positivas, mutáveis, racionais e bastante voláteis. Sabe aquela história de que entre irmãos gêmeos sempre tem um bom e um ruim? Pois bem, as garotas desse signo são instáveis e tendem a mudar bruscamente sua personalidade ao decorrer do dia como se abrigassem dentro de si essas duas características. Curiosas ao extremo, cansam-se facilmente de um assunto procurando sempre coisas novas. Tagarelas natas têm um dom natural para a área de comunicação.")
        significadoSignos.append("Personalidade: Pertencente ao elemento de fogo, as leoninas são autoritárias, ambiciosas, idealistas, orgulhosas, extrovertidas e têm uma energia daquelas. Líderes natas, são ótimasidealistas e quando as coisas saem do controle costumam exibir um temperamento bastante explosivo. Por sua vaidade ao extremo, chegam a tender para o egocentrismo sendo esse o seu principal defeito.")
        significadoSignos.append("Pertencente ao elemento de terra, as garotas do signo de virgem são dotadas de uma inteligência sem igual. Sensíveis, analíticas, observadoras, versáteis, pé no chão e críticas, as virginianas são estritamente perfeccionistas e por serem muito seletivas têm dificuldade na hora de fazer amigos. São tão detalhistas que podem chegar a se tornar ‘mala’ e não suportam de jeito algum bagunça ou sujeira.")
        significadoSignos.append("Raramente anda sozinho.Gosta de cores claras e de objetos belos,Símbolo: a balança,Planeta regente: Vênus,Casa natural: sétima, relativa às associações,Elemento: ar,Qualidade: cardinal,Regiões do corpo: rins, apêndice,Pedra preciosa: opala,Cores: azul, rosa, cores pastéis,Flor: rosa,Frase-chave: eu equilibro,Palavra-chave: humanidade.Traços da personalidade: cooperativo, romântico, preguiçoso, extravagante, gracioso, simpático, encantador, sociável, facilmente influenciável, indeciso.")
        significadoSignos.append("Olhos penetrantes.Vigor físico,Reservado,Símbolo: o escorpião,Planeta regente: Plutão (Marte, antigo regente),Casa natural: Oitava,Elemento: água,Qualidade: fixa,Regiões do corpo: sistema reprodutor, cólon,Pedra preciosa: topázio,Cores: preto, marrom-escuro,Flor: crisântemo,Frase-chave: eu desejo,Palavra-chave: renovação.Traços da personalidade: reservado, sarcástico, inquieto, heróico, ciumento, vingativo, emotivo, obsessivo, magnético, teimoso, investigativo, determinado")
        significadoSignos.append("Cabelo comprido.Quadris largos,Fala floreada,Símbolo: o arqueiro,Planeta regente: Júpiter,Casa natural: nona, referente à religião, à educação e às viagens,Elemento: fogo,Qualidade: mutável,Regiões do corpo: quadris, coxas, nervo ciático,Pedra preciosa: turquesa,Cores: azul real, púrpura,Flor: narciso,Frase-chave: eu vejo,Palavra-chave: intelectualidade.Traços da personalidade: amigável, aventureiro, tem capacidade de liderança, felizardo, amante da liberdade")
        
        significadoSignos.append("Gosta de relógios.Tem joelhos ossudos,É ambicioso,Símbolo: A cabra,Planeta regente: Saturno,Casa natural: décima, relativa à carreira e ao status,Elemento: terra,Qualidade: cardinal,Regiões do corpo: esqueleto, joelhos, dentes, pele,Pedra preciosa: granada,Cores: preto, azul-marinho, cinza, verde-musgo,Flor: cravo,Frase-chave: eu uso,Palavra-chave: construtividade.Traços da personalidade: frugal, laborioso, confiável, orientado pelo status, reservado, guerreiro, cauteloso, paciente, conservador")
        significadoSignos.append("Pulmões fortes.Aprecia a eletrônica,É orientado para o futuro,Símbolo: o aguadeiro,Planeta regente: Urano (antigo regente, Saturno),Casa natural: décima primeira relativa às amizades e metas,Elemento: ar,Qualidade: fixa,Regiões do corpo: sistema circulatório, tornozelos,Pedra preciosa: ametista,Cores: brilhantes, turquesa,Flor: orquídea,Frase-chave: Eu sei,Palavra-chave: não-convencional.Traços da personalidade: leal, individualista, rebelde, impessoal, orientado para o grupo, inventivo, desligado, lógico, independente, determinado, teimoso")
        significadoSignos.append("Pés pequenos.Prestativo,Compassivo,Símbolo: os peixes,Planeta regente: Netuno (antigo regente, Júpiter),Casa natural: décima segunda, relativa a auto-renovação,Elemento: água,Qualidade: mutável,Regiões do corpo: pés, sistema linfático,Pedra preciosa: água marinha,Cores: verde mar, violeta,Flor: lírio aquático,Frase-chave: Eu acredito,Palavra-chave: compaixão.Traços da personalidade: sensitivo, impressionável, psíquico, irresponsável, visionário, sonhador, imaginativo, gentil, vago, amável, caridoso, irrealista ")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[ indexPath.row ]
        
        return celula
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertController = UIAlertController(title: "Significado", message: significadoSignos[indexPath.row], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertController.addAction(acaoConfirmar)
        
        present(alertController, animated: true, completion: nil)
    }
}

