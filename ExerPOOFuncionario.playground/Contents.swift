import UIKit


class Funcionario{
    var nome: String
    var salario: Double
    var cpf: String
    
    init(nome: String, salario: Double, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func Bonus()-> Double{
        return salario
    }
}
class Programador : Funcionario {
    var plataformaDeTrabalho: String
    
    init(plataformaDeTrabalho: String,nome: String, salario: Double, cpf: String) {
        self.plataformaDeTrabalho = plataformaDeTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func Bonus() -> Double {
        return (1.2 * super.Bonus()) * 12
    }
}
class Designer : Funcionario {
    var ferramentaDeTrabalho: String
    
    init(ferramentaDeTrabalho: String,nome: String, salario: Double, cpf: String) {
        self.ferramentaDeTrabalho = ferramentaDeTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func Bonus() -> Double {
        return (1.15 * super.Bonus()) * 12
    }
}

let progA = Programador(plataformaDeTrabalho: "IOS", nome: "Taize", salario: 1000, cpf: "000000000000")
print(progA.Bonus())



