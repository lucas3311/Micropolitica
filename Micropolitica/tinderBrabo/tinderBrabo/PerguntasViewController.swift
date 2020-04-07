//
//  PerguntasViewController.swift
//  tinderBrabo
//
//  Created by Jefferson José da Silva on 07/04/20.
//  Copyright © 2020 Jefferson José da Silva. All rights reserved.
//

import UIKit

class PerguntasViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var opc = [1, 2, 3, 4, 5, 6, 7, 8]
    
    var teste = 0
    
    let empatia1: [String] = ["Pergunta feita para qualquer um nos moldes de empatia 1.", "Pergunta para teste de aleatoriedade do tipo de empatia 1.", "Percebo que talvez fique sem ideias para a proxima pergunta de teste de empatia 1.", "Me pergunto quantas perguntas de teste são necessárias para o tipo de empatia 1.", "Apenas outra pergunta referente ao tipo de empatia 1.", "Creio que essa é a última pergunta referente ao tipo de empatia 1.", "Parece que os enganei, pois aqui vai mais uma pergunta referente ao tipo de empatia 1."]
    
    let empatia2: [String] = ["Pergunta feita para qualquer um nos moldes de empatia 2.", "Pergunta para teste de aleatoriedade do tipo de empatia 2.", "Percebo que talvez fique sem ideias para a proxima pergunta de teste de empatia 2.", "Me pergunto quantas perguntas de teste são necessárias para o tipo de empatia 2.", "Apenas outra pergunta referente ao tipo de empatia 2.", "Creio que essa é a última pergunta referente ao tipo de empatia 2.", "Parece que os enganei, pois aqui vai mais uma pergunta referente ao tipo de empatia 2."]
    
    let empatia3: [String] = ["Pergunta feita para qualquer um nos moldes de empatia 3.", "Pergunta para teste de aleatoriedade do tipo de empatia 3.", "Percebo que talvez fique sem ideias para a proxima pergunta de teste de empatia 3.", "Me pergunto quantas perguntas de teste são necessárias para o tipo de empatia 3.", "Apenas outra pergunta referente ao tipo de empatia 3.", "Creio que essa é a última pergunta referente ao tipo de empatia 3.", "Parece que os enganei, pois aqui vai mais uma pergunta referente ao tipo de empatia 3."]
    
    let empatia4: [String] = ["Pergunta feita para qualquer um nos moldes de empatia 4.", "Pergunta para teste de aleatoriedade do tipo de empatia 4.", "Percebo que talvez fique sem ideias para a proxima pergunta de teste de empatia 4.", "Me pergunto quantas perguntas de teste são necessárias para o tipo de empatia 4.", "Apenas outra pergunta referente ao tipo de empatia 4.", "Creio que essa é a última pergunta referente ao tipo de empatia 4.", "Parece que os enganei, pois aqui vai mais uma pergunta referente ao tipo de empatia 4."]
    
    let personalidade1: [String] = ["Pergunta feita para qualquer um nos moldes de personalidade 1.", "Pergunta para teste de aleatoriedade do tipo de personalidade 1.", "Percebo que talvez fique sem ideias para a proxima pergunta de teste de personalidade 1.", "Me pergunto quantas perguntas de teste são necessárias para o tipo de personalidade 1.", "Apenas outra pergunta referente ao tipo de personalidade 1.", "Creio que essa é a última pergunta referente ao tipo de personalidade 1.", "Parece que os enganei, pois aqui vai mais uma pergunta referente ao tipo de personalidade 1."]
    
    let personalidade2: [String] = ["Pergunta feita para qualquer um nos moldes de personalidade 2.", "Pergunta para teste de aleatoriedade do tipo de personalidade 2.", "Percebo que talvez fique sem ideias para a proxima pergunta de teste de personalidade 2.", "Me pergunto quantas perguntas de teste são necessárias para o tipo de personalidade 2.", "Apenas outra pergunta referente ao tipo de personalidade 2.", "Creio que essa é a última pergunta referente ao tipo de personalidade 2.", "Parece que os enganei, pois aqui vai mais uma pergunta referente ao tipo de personalidade 2."]
    
    let personalidade3: [String] = ["Pergunta feita para qualquer um nos moldes de personalidade 3.", "Pergunta para teste de aleatoriedade do tipo de personalidade 3.", "Percebo que talvez fique sem ideias para a proxima pergunta de teste de personalidade 3.", "Me pergunto quantas perguntas de teste são necessárias para o tipo de personalidade 3.", "Apenas outra pergunta referente ao tipo de personalidade 3.", "Creio que essa é a última pergunta referente ao tipo de personalidade 3.", "Parece que os enganei, pois aqui vai mais uma pergunta referente ao tipo de personalidade 3."]
    
    let personalidade4: [String] = ["Pergunta feita para qualquer um nos moldes de personalidade 4.", "Pergunta para teste de aleatoriedade do tipo de personalidade 4.", "Percebo que talvez fique sem ideias para a proxima pergunta de teste de personalidade 4.", "Me pergunto quantas perguntas de teste são necessárias para o tipo de personalidade 4.", "Apenas outra pergunta referente ao tipo de personalidade 4.", "Creio que essa é a última pergunta referente ao tipo de personalidade 4.", "Parece que os enganei, pois aqui vai mais uma pergunta referente ao tipo de personalidade 4."]
    
    @IBOutlet weak var TableViewPerguntas: UITableView!
    
    @IBOutlet weak var BotaoTerminei: UIButton!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    @IBAction func TermineiAcao(_ sender: UIButton) {
        if contador < jogadores.count{
            contador += 1
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "ConfirmaID")
            self.navigationController?.pushViewController(controller, animated: true)
        }
            
        else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "Imagens")
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if opc.count > 0{
            teste = opc.randomElement()!
        }
        else {
            teste = 0
        }
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula") as! PerguntasTableViewCell
        if teste != 0{
            if teste == 1 {
                celula.PerguntaOTL.text = "\(indexPath.row + 1). " + empatia1.randomElement()!
            }
            else if teste == 2 {
                celula.PerguntaOTL.text = "\(indexPath.row + 1). " + empatia2.randomElement()!
            }
            else if teste == 3 {
                celula.PerguntaOTL.text = "\(indexPath.row + 1). " + empatia3.randomElement()!
            }
            else if teste == 4 {
                celula.PerguntaOTL.text = "\(indexPath.row + 1). " + empatia4.randomElement()!
            }
            else if teste == 5 {
                celula.PerguntaOTL.text = "\(indexPath.row + 1). " + personalidade1.randomElement()!
            }
            else if teste == 6 {
                celula.PerguntaOTL.text = "\(indexPath.row + 1). " + personalidade2.randomElement()!
            }
            else if teste == 7 {
                celula.PerguntaOTL.text = "\(indexPath.row + 1). " + personalidade3.randomElement()!
            }
            else if teste == 8 {
                celula.PerguntaOTL.text = "\(indexPath.row + 1). " + personalidade4.randomElement()!
            }
            
            teste = opc.firstIndex(of: teste)!
            opc.remove(at: teste)
                
        }
        
        return celula
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        TableViewPerguntas.tableFooterView = UIView()
        TableViewPerguntas.allowsSelection = false
        self.navigationItem.hidesBackButton = true
        
        BotaoTerminei.layer.borderWidth = 1
        BotaoTerminei.layer.borderColor = UIColor.black.cgColor
        BotaoTerminei.layer.cornerRadius = 5
    }
    

}
