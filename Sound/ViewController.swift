//
//  ViewController.swift
//  Sound
//
//  Created by 佐伯凜乃介 on 2022/04/29.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    //ドラムを表示する変数だよ
    @IBOutlet var drumButton: UIButton!
    @IBOutlet var pianoButton: UIButton!
    @IBOutlet var guitarButton: UIButton!
    @IBOutlet var cynballButton: UIButton!
    //ドラムの音流すよ〜
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name:"drumSound")!.data)
    
    let pianoSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name:"pianoSound")!.data)
    
    let guitarSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name:"guitarSound")!.data)
    
    let cynballSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name:"cynballSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //ドラム押されたらこれ動くよ
    @IBAction func tapdrum(){
        //ドラムが鳴ってる時に画像を変える
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        //再生を巻き戻すよ
        drumSoundPlayer.currentTime = 0
        //再生するよ
        drumSoundPlayer.play()
        
    }
    @IBAction func tapDowndrum(){
        //ドラムが鳴ってる時に画像を変える
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }

    @IBAction func tappiano(){
        //ドラムが鳴ってる時に画像を変える
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        //再生を巻き戻すよ
        pianoSoundPlayer.currentTime = 0
        //再生するよ
        pianoSoundPlayer.play()
        
    }
    @IBAction func tapDownpiano(){
        //ドラムが鳴ってる時に画像を変える
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    @IBAction func tapguitar(){
        //ドラムが鳴ってる時に画像を変える
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        //再生を巻き戻すよ
        guitarSoundPlayer.currentTime = 0
        //再生するよ
        guitarSoundPlayer.play()
        
    }
    @IBAction func tapDownguitar(){
        //ドラムが鳴ってる時に画像を変える
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }

@IBAction func tapcynball(){
    //ドラムが鳴ってる時に画像を変える
    cynballButton.setImage(UIImage(named: "cymbalPlayingImage"), for: .normal)
    //再生を巻き戻すよ
    cynballSoundPlayer.currentTime = 0
    //再生するよ
    cynballSoundPlayer.play()
    
}
@IBAction func tapDowncynball(){
    //ドラムが鳴ってる時に画像を変える
    cynballButton.setImage(UIImage(named: "cymbalImage"), for: .normal)
}
}
