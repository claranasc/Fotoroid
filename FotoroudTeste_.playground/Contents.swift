import UIKit

class ViewController: UIViewController {

extension ViewController: UIImagePickerControllerDelegate {

func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    
    if let selectedImage = UIImage.from(info: info) {
        // I am happy :)
    } else {
        // I am sad :(
    }
    dismiss(animated: true, completion: nil)
    }
    }
    }



