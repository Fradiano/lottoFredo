//
//  ViewController.swift
//  lotto
//
//  Created by Fradiano Hasani on 04.11.22.
//

import UIKit

enum LottoZahlen{
    case lottoEins, lottoZwei, lottoDrei, lottoVier, lottoFünf, lottoSechs
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var ausgabeEins: UIButton!
    
    @IBOutlet weak var ausgabeZwei: UIButton!
    
    @IBOutlet weak var ausgabeDrei: UIButton!
    
    @IBOutlet weak var ausgabeVier: UIButton!
    
    @IBOutlet weak var ausgabeFünf: UIButton!
    
    @IBOutlet weak var ausgabeSechs: UIButton!
    
    
    func lottoNummbers() {
        
        var lottoArray = Array(1...49)
        var gewinnerZahlen = [Int]()
        var alleButtons = [ausgabeEins, ausgabeZwei, ausgabeDrei, ausgabeVier, ausgabeFünf, ausgabeSechs]
        
        while(gewinnerZahlen.count < 6){
            var randomLotto = lottoArray.randomElement()!
            var index = lottoArray.firstIndex(of: randomLotto)!
            lottoArray.remove(at: index)
            gewinnerZahlen.append(randomLotto)
            gewinnerZahlen.sort()
            }
            
        for i in 0...5{
            alleButtons[i]?.setTitle(String(gewinnerZahlen[i]), for: .normal)
        
        }
            
    }
    
    @IBAction func showNumbers(_ sender: Any) {
        lottoNummbers()
        }

    }

