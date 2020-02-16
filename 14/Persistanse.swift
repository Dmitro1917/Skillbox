import Foundation
import RealmSwift

class Dog: Object{
    @objc dynamic var name = ""
    @objc dynamic var age = 0
}

class Persistance{
    static let shared = Persistance()
    
    private let realm = try! Realm()
    
    func test(){
//        try! realm.write {
//            let dog = Dog()
//            dog.name = "Пчёла"
//            realm.add(dog)
//
//            let dog1 = Dog()
//            dog1.name = "Космос"
//            realm.add(dog1)
//
//            let dog2 = Dog()
//            dog2.name = "Саня белый"
//            realm.add(dog2)
//        }

//        let allDogs = realm.objects(Dog.self)
//        try! realm.write {
//            for (index, dog) in allDogs.enumerated(){
//                dog.age = index * 2 + 2
//        }
//        }
        for dog in realm.objects(Dog.self){
            print("--\(dog.name): \(dog.age)")
        }
    }
}
