public class novaConta {
    
    public static Account newAccount() {
        Account contaTest = new Account();
        contaTest.Name = 'Conta Teste';
        contaTest.Phone = '1321321321';
        insert contaTest;
        return contaTest; 
    }
    
    public static Account attCampos() {
        
        Account att = [SELECT ID FROM Account Where Name = 'Conta Teste' LIMIT 1];
        att.Phone = '19997494747';
        update att;
        return att;
        
    }
    
    public static Contact newContact() {
        Account contaTest = [SELECT Id FROM Account WHERE Name = 'Conta
