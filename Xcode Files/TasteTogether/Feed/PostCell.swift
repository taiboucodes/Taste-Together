//
//  PostCell.swift
//
//  Created by Omar Madjitov on 04/01/23.
//

import UIKit
import Alamofire
import AlamofireImage

class PostCell: UITableViewCell {

    @IBOutlet private weak var usernameLabel: UILabel!
    @IBOutlet private weak var postImageView: UIImageView!
    @IBOutlet private weak var captionLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!

    //New
    @IBOutlet weak var ingredientsLabel: UILabel!
    
    
    // Blur view to blur out "hidden" posts
    @IBOutlet private weak var blurView: UIVisualEffectView!

    private var imageDataRequest: DataRequest?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Add tap gesture recognizer to ingredientsLabel
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        ingredientsLabel.isUserInteractionEnabled = true
        ingredientsLabel.addGestureRecognizer(tapGesture)
        ingredientsLabel.numberOfLines = 3 // Set the initial number of lines to show
    }

    @objc private func handleTap(_ gestureRecognizer: UITapGestureRecognizer) {
        // Toggle the number of lines to show when the label is tapped
        if ingredientsLabel.numberOfLines == 0 {
            ingredientsLabel.numberOfLines = 0
        } else {
            ingredientsLabel.numberOfLines = 0
        }
        // Call layoutIfNeeded() to update the layout of the cell
        contentView.layoutIfNeeded()
    }
    
    func configure(with post: Post) {
        // A lot of the following returns optional values so we'll unwrap them all together in one big `if let`
        // Get the current user.
        if let currentUser = User.current,

            // Get the date the user last shared a post (cast to Date).
           let lastPostedDate = currentUser.lastPostedDate,

            // Get the date the given post was created.
           let postCreatedDate = post.createdAt,

            // Get the difference in hours between when the given post was created and the current user last posted.
           let diffHours = Calendar.current.dateComponents([.hour], from: postCreatedDate, to: lastPostedDate).hour {

            // Hide the blur view if the given post was created within 24 hours of the current user's last post. (before or after)
            blurView.isHidden = abs(diffHours) < 24
        } else {

            // Default to blur if we can't get or compute the date's above for some reason.
            blurView.isHidden = false
        }
        
        // Username
        if let user = post.user {
            usernameLabel.text = user.username
        }

        // Image
        if let imageFile = post.imageFile,
           let imageUrl = imageFile.url {

            // Use AlamofireImage helper to fetch remote image from URL
            imageDataRequest = AF.request(imageUrl).responseImage { [weak self] response in
                switch response.result {
                case .success(let image):
                    // Set image view image with fetched image
                    self?.postImageView.image = image
                case .failure(let error):
                    print("❌ Error fetching image: \(error.localizedDescription)")
                    break
                }
            }
        }

        // Caption
        captionLabel.text = post.caption
        
        // Ingredients
        ingredientsLabel.text = post.ingredients

        // Date
        if let date = post.createdAt {
            dateLabel.text = DateFormatter.postFormatter.string(from: date)
        }



    }

    override func prepareForReuse() {
        super.prepareForReuse()
        // TODO: Pt 1 - Cancel image data request

        // Reset image view image.
        postImageView.image = nil

        // Cancel image request.
        imageDataRequest?.cancel()
    }
    

}
