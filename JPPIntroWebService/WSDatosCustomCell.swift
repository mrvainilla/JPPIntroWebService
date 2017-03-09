//
//  WSDatosCustomCell.swift
//  JPPIntroWebService
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 empre. All rights reserved.
//

import UIKit

class WSDatosCustomCell: UITableViewCell {
    
    //MARK: - IBOutlets
    @IBOutlet weak var myIdUsuarioLb: UILabel!
    @IBOutlet weak var myNumeroUsuarioLb: UILabel!
    @IBOutlet weak var myTituloLb: UILabel!
    @IBOutlet weak var myCuerpoLb: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
