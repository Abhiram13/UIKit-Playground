import UIKit
import SwiftUI

class ViewController: UIViewController {
    let label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 100));
    override func viewDidLoad() {
        super.viewDidLoad();
        Label();
        TextField();
    }
    
    private func Label() {
        label.text = "Hello World";
        label.textColor = UIColor.green;
        self.view.addSubview(label);
    }
    
    private func TextField() {
        let text = UITextField(frame: CGRect(x: 100, y: 200, width: 200, height: 50));
        text.borderStyle = .roundedRect;
        text.placeholder = "Enter Something";
        text.delegate = self;
        self.view.addSubview(text);
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        self.label.text = textField.text;
    }
}


struct ViewController_Previews: PreviewProvider {
    static var previews: some View {
        return ContentView()
    }
    
    struct ContentView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> ViewController {
            return ViewController()
        }
        
        func updateUIViewController(_ uiViewController: ViewController, context: Context) {
            //
        }
    }
}
