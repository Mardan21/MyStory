//
//  ViewController.swift
//  MyStory
//
//  Created by Mardan Mahmut on 3/1/23.
//

import UIKit

class LuffyViewController: UIViewController {
    
    let luffyReceiveHat = Luffy(name: "Beginning of My Pirate Journey", image: UIImage(named: "luffy-receive-hat")!, context: "My pirate journey began when I met Red-Haired Shanks. Shanks protected me from a monster sea-king, losing one of his arms in the process. He passed on his straw hat to me and made me vow to return the hat to him when I became a great pirate, inspiring me to become as great as him.")
    let luffyAceDeath = Luffy(name: "Greatest Obstacle in My Life", image: UIImage(named: "luffy-ace-death")!, context: "The greatest obstacle I had to overcome in my life was the death of my brother Ace. Captured by the marines, I stormed their headquarers to save him from his scheduled execution. Having been successful in saving him from the execution, he ended up jumping in front of one of the Navy Admirals fist of magma to save my life, dying in the process.")
    let luffyGearFourth = Luffy(name: "2 Year Power-Up", image: UIImage(named: "luffy-gear-fourth")!, context: "After the death of my brother Ace, my crewmates and I disappeared for two years to train in the hopes that I will be strong enough to protect everyone dear to me. In doing so I achieved this form that I call 'Gear Fourth: Bounce-Man'.")

    var luffyPages: [Luffy] = []
    
//    @IBOutlet weak var profileUIImage: UIImageView!
    
    @IBOutlet weak var profileUIImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        profileUIImage.image = UIImage(named: "luffy-profile-pic")

        luffyPages = [luffyReceiveHat, luffyAceDeath, luffyGearFourth]

        print("The One Piece is REALLL!")
        for luffyPage in luffyPages {
            print(luffyPage.name)
        }
    }
    
//    @IBAction func didTapLabel(_ sender: UITapGestureRecognizer) {
//        if let tappedView = sender.view {
//            performSegue(withIdentifier: "detailSegue", sender: tappedView)
//        }
//    }
    @IBAction func didTapLabel(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailSegue",
           let tappedView = sender as? UIView,
           let detailViewController = segue.destination as? DetailViewController {
            if tappedView.tag == 0 {
                detailViewController.luffy = luffyPages[0]
            } else if tappedView.tag == 1 {
                detailViewController.luffy = luffyPages[1]
            } else if tappedView.tag == 2 {
                detailViewController.luffy = luffyPages[2]
            } else {
                print("no Luffy was tapped, please check your selection.")
            }
        }
    }

}

