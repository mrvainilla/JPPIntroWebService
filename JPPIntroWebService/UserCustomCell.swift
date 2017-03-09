//
//  UserCustomCell.swift
//  JPPIntroWebService
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 empre. All rights reserved.
//

import UIKit

class UserCustomCell: UITableViewCell {

    //MARK: - IBOutltes
    @IBOutlet weak var myIdLb: UILabel!
    @IBOutlet weak var myNombreLb: UILabel!
    @IBOutlet weak var myUsernameLb: UILabel!
    @IBOutlet weak var myEmailLb: UILabel!
    @IBOutlet weak var myCalleLb: UILabel!
    @IBOutlet weak var myNumeroLb: UILabel!
    @IBOutlet weak var myCiudadLb: UILabel!
    @IBOutlet weak var myCpLb: UILabel!
    @IBOutlet weak var myLatLb: UILabel!
    @IBOutlet weak var myLongLb: UILabel!
    @IBOutlet weak var myMovilLb: UILabel!
    @IBOutlet weak var myWebsiteLb: UILabel!
    @IBOutlet weak var myNombreEmpLb: UILabel!
    @IBOutlet weak var mypromocionalLb: UILabel!
    @IBOutlet weak var myBsLb: UILabel!
    @IBOutlet weak var myMapaBt: UIButton!
    @IBOutlet weak var myUrlBt: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
