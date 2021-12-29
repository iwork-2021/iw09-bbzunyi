//
//  ViewController.swift
//  ARtank
//
//  Created by bb on 2021/12/29.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    var tankAnchor: TinyToyTank._TinyToyTank?
    var isActionPlaying: Bool = false
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tankAnchor = try! TinyToyTank.load_TinyToyTank()
        tankAnchor!.turret?.setParent(tankAnchor!.tank, preservingWorldTransform: true)
        tankAnchor?.actions.actionComplete.onAction = { _ in
          self.isActionPlaying = false
        }
        arView.scene.anchors.append(tankAnchor!)
    }
    
    @IBAction func TurretRightPressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        }else {
            self.isActionPlaying = true
        }
        tankAnchor!.notifications.turretRight.post()

    }
    
    @IBAction func TurretLeftPressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        }else {
            self.isActionPlaying = true
        }
        tankAnchor!.notifications.turretLeft.post()
    }
    
    
    @IBAction func TankRightPressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        }else {
            self.isActionPlaying = true
        }
        tankAnchor!.notifications.tankRight.post()
    }
    
    @IBAction func TankForwardPressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        }else {
            self.isActionPlaying = true
        }
        tankAnchor!.notifications.tankForward.post()
    }
    
    @IBAction func TankLeftPressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        }else {
            self.isActionPlaying = true
        }
        tankAnchor!.notifications.tankLeft.post()
    }
    
    @IBAction func CannonFirePressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        }else {
            self.isActionPlaying = true
        }
        tankAnchor!.notifications.cannonFire.post()
    }
    
}
