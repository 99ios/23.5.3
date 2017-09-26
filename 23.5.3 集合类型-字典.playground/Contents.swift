//: A UIKit based Playground for presenting user interface
  
import UIKit

//初始化
var intStringDic = [Int:String]()
intStringDic = [:]
var fruits = ["Apple":"苹果","Juice":"橘子","Bananas":"香蕉"]

//插入和删除
intStringDic[10] = "Ten"
fruits["Orange"] = "橙色的"
fruits["Orange"] = "橙子"
fruits["Orange"] = nil

//使用函数进行更新和删除
if let oldValue = fruits.updateValue("APP", forKey: "Apple") {
    print("更新前的值是： \(oldValue).")
}
if let removedValue = fruits.removeValue(forKey: "Orange") {
    print("删除前的值是： \(removedValue).")
} else {
    print("fruits字典里面没有Orange这个键值")
}

//循环遍历
for (itemKey, itemValue) in fruits {
    print("\(itemKey): \(itemValue)")
}

//字典类型的keys和values属性返回字典的键值的无序集合，可以转为数组
let keys = [String](fruits.keys)
let values = [String](fruits.values)
