//
//  EntryTableViewCell.swift
//  Journal
//
//  Created by Jonathan T. Miles on 8/9/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import UIKit

class EntryTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var timestampTextLabel: UILabel!
    @IBOutlet weak var contentsTextLabel: UILabel!
}
