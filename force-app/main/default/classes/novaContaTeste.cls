@isTest
public class novaContaTeste {

    @isTest
    public static void chamaMetodo(){
        
        // Criar a conta
        Account contaCriada = novaConta.newAccount();
        
        // Atualizar os campos da conta
        Account contaAtualizada = novaConta.attCampos();
        
        // Criar o contato
        Contact contatoCriado = novaConta.newContact();
        
        // Verificar se a conta foi criada
        Account contaTest = [SELECT Name, Phone FROM Account WHERE Id = :contaCriada.Id];
        System.assertEquals('Conta Teste', contaTest.Name);
        System.assertEquals('19997494747', contaTest.Phone);
        
        // Verificar se o contato foi criado
        Contact contatoTest = [SELECT LastName, AccountId FROM Contact WHERE Id = :contatoCriado.Id];
        System.assertEquals('Parise', contatoTest.LastName);
        System.assertEquals(contaCriada.Id, contatoTest.AccountId);
    }
}
