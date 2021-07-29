//
//  FunForTableView.swift
//  MyCocoapodsLibrary
//
//  Created by surya-zstk231 on 28/07/21.
//

import UIKit
public class FunForTableView {
    var view = UIView()
    var tableView = UITableView()
    var content:[String] = []
    var animation: TableviewAnimation
    static var dataSourceAndDelegate: TableViewDataSourceAndDelegate!
    public init (frame: CGRect, content: [String], animation: TableviewAnimation){
        self.view.frame = frame
        self.content = content
        self.animation = animation
    }
    public func createTableView() -> UIView{
        tableView.frame = CGRect(x: 0, y: 80, width: view.frame.width, height: view.frame.height-80)
        tableView.register(tableViewCell.self, forCellReuseIdentifier: "Cell")
        FunForTableView.dataSourceAndDelegate = TableViewDataSourceAndDelegate(items: content, animation: animation)
        tableView.dataSource = FunForTableView.dataSourceAndDelegate
        tableView.delegate = FunForTableView.dataSourceAndDelegate
        tableView.separatorColor = .white
        tableView.decelerationRate = UIScrollViewDecelerationRateFast
        view.addSubview(tableView)
        return view
    }
    
}

class TableViewDataSourceAndDelegate: NSObject, UITableViewDataSource, UITableViewDelegate{
    var elements: [String]
    var animation:TableviewAnimation
    
    init(items: [String], animation: TableviewAnimation) {
        self.elements = items
        self.animation = animation
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = elements[indexPath.row]
        cell.textLabel?.textColor = .black
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        switch animation {
        case .leftToRight:
            cell.layer.transform = CATransform3DTranslate(CATransform3DIdentity, -500, 10, 0)
            cell.alpha = 0.5
            
            UIView.animate(withDuration: 1.0) {
                cell.layer.transform = CATransform3DIdentity
                cell.alpha = 1.0
            }
        case .hideAndSeek:
            cell.alpha = 0
            UIView.animate(withDuration: 0.75) {
                cell.alpha = 1.0
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        elements.remove(at: indexPath.row)
        tableView.reloadData()
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
    
}

class tableViewCell: UITableViewCell{
    override func layoutSubviews() {
        super.layoutSubviews()
        
        backgroundColor = .red
        self.textLabel?.textAlignment = .center
        self.textLabel?.textColor = .white
        self.layer.cornerRadius = 20
    }
}

public enum TableviewAnimation{
    case leftToRight
    case hideAndSeek
}
