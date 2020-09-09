import UIKit

class Veiculo{
    
    var cor : String
    var preco : Double
    var passageiros: Int
    
    init(cor: String, preco:Double, passageiros: Int) {
        self.cor = cor
        self.preco = preco
        self.passageiros = passageiros
    }
    
    func calcCombustivel(distancia: Double) -> Double{
        return distancia * Double(passageiros)
    }
}

class Carro: Veiculo{
    var rodaTamanho = Int()
    
    init(cor: String, preco: Double, passageiros: Int, rodaTamanho: Int) {
        self.rodaTamanho = rodaTamanho
        super.init(cor: cor, preco: preco, passageiros: passageiros)
    }
    
    override func calcCombustivel(distancia: Double) -> Double{
        return Double(super.passageiros * rodaTamanho) * distancia
    }
}

class Aviao : Veiculo{

    let piloto : String
    let companhia: String
    
    init(cor: String, preco: Double, passageiros: Int, piloto : String, companhia: String) {
           self.piloto = piloto
           self.companhia = companhia
           super.init(cor: cor, preco: preco, passageiros: passageiros)
       }
    
    override func calcCombustivel(distancia: Double) -> Double{
        return Double(passageiros) * distancia
    }
}

let fusca = Carro(cor: "Roxo", preco: 1000.00, passageiros: 4, rodaTamanho: 20)
print(fusca.calcCombustivel(distancia: 245.0))
let boeing747 = Aviao(cor: "Branco", preco: 100000.00, passageiros: 410, piloto: "Fernando", companhia: "Gol")
print(boeing747.calcCombustivel(distancia: 1528.18))
