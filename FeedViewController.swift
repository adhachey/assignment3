//
//  FeedViewController.swift
//  assignment3
//
//  Created by Hachey,Alex on 9/5/16.
//  Copyright © 2016 Hachey,Alex. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var FeedScrollView: UIScrollView!
    @IBOutlet weak var trayview: UIView!
    
    @IBOutlet weak var later: UIImageView!
    @IBOutlet weak var archive: UIImageView!
    @IBOutlet weak var message: UIImageView!
    @IBOutlet weak var list: UIImageView!
    @IBOutlet weak var delete: UIImageView!
    @IBOutlet weak var rescheduled: UIImageView!
    @IBOutlet weak var feed: UIImageView!
    @IBOutlet weak var listoverlay: UIImageView!
    
    @IBOutlet weak var mainview: UIView!
    
    var trayOriginalCenter: CGPoint!
    var initiallater: CGPoint!
    var initiallist: CGPoint!
    var initialarchive: CGPoint!
    var initialmessage: CGPoint!
    var initialdelete: CGPoint!
    var initialfeed: CGFloat!
    var initialtray: CGFloat!
    var feedoffset: CGFloat!
    var trayoffset: CGFloat!
    var initialmain: CGPoint!
    var mainoffset: CGFloat!
    
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialfeed = feed.frame.origin.y
        initialtray = trayview.frame.origin.y
        feedoffset = -86
        trayoffset = -79

        FeedScrollView.contentSize = CGSize(width: 320, height: 1000)
        initialmessage = message.center
        rescheduled.alpha = 0
        listoverlay.alpha = 0
        
        initialmain = mainview.center
        mainoffset = 300
        
        
        
        

    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func DidPanMessage(sender: UIPanGestureRecognizer) {
       let translation = sender.translationInView(view)
        
        if sender.state == UIGestureRecognizerState.Began {
            initialmessage = message.center
            initiallist = list.center
            initiallater = later.center
            initialarchive = archive.center
            initialdelete = delete.center
            trayview.backgroundColor = UIColor.grayColor()
            later.alpha = 0
            archive.alpha = 1
            list.alpha = 0
            delete.alpha = 0
            }
        
        
        
    else if sender.state == UIGestureRecognizerState.Changed {
            message.center = CGPoint(x: initialmessage.x + translation.x, y: initialmessage.y)
            later.center = CGPoint(x: initiallater.x + translation.x, y: initiallater
                .y)
            list.center = CGPoint(x: initiallist.x + translation.x, y: initiallist.y)
            archive.center = CGPoint(x: initialarchive.x + translation.x, y: initialarchive.y)
                 delete.center = CGPoint(x: initialdelete.x + translation.x, y: initialdelete.y)
            
            print("\(translation.x)")
            
            
            if translation.x > 200 {
                UIView.animateWithDuration(0.3, animations: {
                    self.trayview.backgroundColor = UIColor.redColor()
                    self.delete.alpha = 1
                    self.archive.alpha = 0
                    
                })}
            
          else if translation.x > 60 {
            UIView.animateWithDuration(0.3, animations: {
                
                self.trayview.backgroundColor = UIColor.greenColor()
                self.archive.alpha = 1
                self.delete.alpha = 0
            })}
            
            else if translation.x < -200 {
                UIView.animateWithDuration(0.3, animations: {
                    self.trayview.backgroundColor = UIColor.brownColor()
                    self.later.alpha = 0
                    self.list.alpha = 1
                })}
            
            else if translation.x < -60 {
                UIView.animateWithDuration(0.3, animations: {
                    self.trayview.backgroundColor = UIColor.yellowColor()
                    self.later.alpha = 1
                    self.list.alpha = 0
                })}
            
        
            }
            
         else if sender.state == UIGestureRecognizerState.Ended {
      
            if translation.x < -200 {
                UIView.animateWithDuration(0.3, animations: {
                    self.listoverlay.alpha = 1
                })
            }
            else if translation.x < -60 {
                 UIView.animateWithDuration(0.3, animations: {
                    self.rescheduled.alpha = 1})
                }
         
            
            UIView.animateWithDuration(0.3, animations: {
         self.message.center = self.initialmessage
        self.archive.center = self.initialarchive
        self.list.center = self.initiallist
        self.later.center = self.initiallater
        self.delete.center = self.initialdelete
        self.trayview.backgroundColor = UIColor.grayColor()
        self.later.alpha = 1
        self.archive.alpha = 1
        self.list.alpha = 0
        self.delete.alpha = 0
      })
            
            }
        }
    
    @IBAction func DidTapList(sender: UITapGestureRecognizer) {
        print("did tap list")
    
    
        message.alpha = 0
        trayview.backgroundColor = UIColor.yellowColor()
        
        UIView.animateWithDuration(0.3, animations: {
            self.listoverlay.alpha = 0
        })
        
        UIView.animateWithDuration(0.6, animations: {
            self.feed.frame.origin.y = self.initialfeed + self.feedoffset
            self.trayview.frame.origin.y = self.initialtray + self.trayoffset
            self.trayview.alpha = 0
        })
        
    }
    
    @IBAction func didTapRescheduled(sender: UITapGestureRecognizer) {
        
        message.alpha = 0
        trayview.backgroundColor = UIColor.yellowColor()
        
         UIView.animateWithDuration(0.3, animations: {
          self.rescheduled.alpha = 0
            })
            
            UIView.animateWithDuration(0.6, animations: {
            self.feed.frame.origin.y = self.initialfeed + self.feedoffset
            self.trayview.frame.origin.y = self.initialtray + self.trayoffset
                self.trayview.alpha = 0
        })
    }
    
    @IBAction func didPanMain(sender: UIScreenEdgePanGestureRecognizer) {
        let translation = sender.translationInView(view)
        
                if sender.state == UIGestureRecognizerState.Began {
                    initialmain = mainview.center
                    
            
        } else if sender.state == UIGestureRecognizerState.Changed {
                    
                      mainview.center = CGPoint(x: initialmain.x + translation.x, y: initialmain.y)
        
        } else if sender.state == UIGestureRecognizerState.Ended {
                    if translation.x > 160 {
                       UIView.animateWithDuration(0.3, animations: { 
                        self.mainview.center = CGPoint(x: self.initialmain.x + self.mainoffset, y: self.initialmain.y)
                       })
                    }
            
        }
        
    }

 
    
    @IBAction func didPanMainBack(sender: UIScreenEdgePanGestureRecognizer) {
        let translation = sender.translationInView(view)
        
        if sender.state == UIGestureRecognizerState.Began {
            initialmain = mainview.center
        }
        else if sender.state == UIGestureRecognizerState.Changed {
        mainview.center = CGPoint(x: initialmain.x + translation.x, y: initialmain.y)
        }
        else if sender.state == UIGestureRecognizerState.Ended {
            if translation.x < -100 {
                UIView.animateWithDuration(0.3, animations: { 
                    self.mainview.center = CGPoint(x: self.initialmain.x - self.mainoffset, y: self.initialmain.y)
                })
                
            }
        }
        
    }
    

       
 
    
    
    
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


