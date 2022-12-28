import UIKit
import SwiftUI

//public func systemColor(is dark: Bool) -> UIColor {
//
//}

public func Titlelabel() -> UILabel {
    let label: UILabel = UILabel();
    label.text = "1$ = 80 INR";
    label.textColor = .red;
    label.font = UIFont.systemFont(ofSize: 20, weight: .bold);
    label.translatesAutoresizingMaskIntoConstraints = false;
    
    return label;
}

public func MainView() -> UIView {
    let view = UIView();
    let constraints: [NSLayoutConstraint] = [
        view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
        view.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height)
    ];
        
    view.translatesAutoresizingMaskIntoConstraints = false;
    
    NSLayoutConstraint.activate(constraints);
    return view;
}

public func TextField() -> UITextField {
    let text = UITextField(frame: CGRect(x: 100, y: 200, width: 200, height: 50));
    text.borderStyle = .roundedRect;
    text.placeholder = "Enter Something";
    text.translatesAutoresizingMaskIntoConstraints = false;
    
    return text;
}

class ViewController: UIViewController {
    let label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 100));
    let mainView: UIView = MainView();
    let titleLabel: UILabel = Titlelabel();
    let textField: UITextField = TextField();
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.view.addSubview(mainView);
        mainViewConstraints();
    }
    
    private func mainViewConstraints() -> Void {
        mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true;
        mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true;
        mainView.addSubview(titleLabel);
        mainView.addSubview(textField);
        
        textField.delegate = self;
        
        titleLabel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20).isActive = true;
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
