//
//  GameViewController.swift
//  MyGames
//
//  Created by Kato on 27/07/23.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbConsole: UILabel!
    @IBOutlet weak var lbReleaseDate: UILabel!
    @IBOutlet weak var ivCover: UIImageView!
    @IBOutlet var starButton: [UIButton]!
    
    var game: Game!
    
    let fullStarImage = UIImage(named: "fullStar")
    let emptyStarImage = UIImage(named: "emptyStar")
    
    override func viewDidLoad() {
        super.viewDidLoad()  
    }
    
    @IBAction func starButtonTapped(_ sender: UIButton) {
        print("Rated \(sender.tag) stars.")
        
        for button in starButton {
            if button.tag <= sender.tag {
                button.setBackgroundImage(UIImage.init(named: "star-selected"), for: .normal)
            } else {
                button.setBackgroundImage(UIImage.init(named: "star-not-selected"), for: .normal)
            }
        }
    }
        
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        lbTitle.text = game.title
        lbConsole.text = game.console?.name
        if let releaseDate = game.releaseDate {
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            formatter.locale = Locale(identifier: "pt-BR")
            lbReleaseDate.text = "Lançamento: " + formatter.string(from: releaseDate)
        }
        if let image = game.cover as? UIImage {
            ivCover.image = image
        } else {
            ivCover.image = UIImage(named: "noCoverFull")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! EditViewController
        vc.game = game
    }
}
