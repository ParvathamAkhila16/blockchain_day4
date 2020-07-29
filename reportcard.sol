pragma solidity >=0.4.17 <0.7.0;

contract reportCard {
    
    string name;
    uint rollno;
    string batch;
    uint m1;
    uint m2;
    uint m3;
    uint m4;
    uint result;
    string status;
    
    function reportCard(string name1, uint rollno1, string batch1, uint newm1, uint newm2, uint newm3, uint newm4 ) public {
        
        name = name1;
        rollno = rollno1;
        batch = batch1;
        m1 = newm1;
        m2 = newm2;
        m3 = newm3;
        m4 = newm4;
        
        result = m1 + m2 + m3 + m4;
        result = result * 100/400;
        
         if( result < 40)
            status = "fail";
            
        else if(result >= 40)
            status = "pass";
    }
    
    function getdetails() public view returns(string, uint, string, uint, uint, uint, uint, uint, string){
        return (name, rollno, batch, m1, m2, m3, m4, result, status);
    }
}
