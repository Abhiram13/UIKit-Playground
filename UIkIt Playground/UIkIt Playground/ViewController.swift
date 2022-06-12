import UIKit

class ViewController: UIViewController {
   override func viewDidLoad() {
      super.viewDidLoad();
      view.backgroundColor = UIColor.white;
      
      initialLabel();
      button()
   }
   
   private func initialLabel() -> Void {
      let label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 50));
      label.text = "Hello World, THis is inital label";
      label.textColor = UIColor.black;
      
      view.addSubview(label);
   }
   
   private func textField() -> Void {
      let input = UITextField();
      input.placeholder = "Enter some text";
      input.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
      
      view.addSubview(input);
   }
   
   private func button() -> Void {
      let submit = UIButton(type: .system)
      submit.translatesAutoresizingMaskIntoConstraints = false
      submit.setTitle("SUBMIT", for: .normal)
      submit.backgroundColor = UIColor.blue;
      submit.frame = CGRect(x: 100, y: 200, width: 200, height: 100)
      submit.setTitleColor(UIColor.white, for: .normal)
      
      view.addSubview(submit)
   }
}
