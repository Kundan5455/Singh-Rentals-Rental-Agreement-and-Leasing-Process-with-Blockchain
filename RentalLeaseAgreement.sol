pragma solidity ^0.5.11;

contract RentalLease {

    
    struct PaidRent {
    uint rentid; 
    uint value; 
    }
     
    PaidRent[] public paidrents;         
    uint public createdTimestamp;          
    uint public rent;                     
    string public house;                    
    address public landlord;              
    address public tenant;               
    enum State {Created, Started, Terminated}  
    State public state;

    
    function RentalAgreement(uint _rent,  string memory _house) public{
        rent = _rent;       
        house = _house;     
        landlord = msg.sender;
        createdTimestamp = block.timestamp; 
    }
    
    modifier required(bool _condition) {
        if (!_condition) assert;
        _;
    }
    
    modifier onlyLandlord() {
        if (msg.sender != landlord) assert;
        _;
    }
    
    modifier onlyTenant() {
        if (msg.sender != tenant) assert;
        _;
    }
    modifier inState(State _state) {
        if (state != _state) assert;
        _;
    }
    
    function getPaidRents() internal view returns (PaidRent[] storage) {
        return paidrents;  
    }

    
    function getHouse() public view returns ( string memory) {
        return house;       
    }
    
    function getLandlord() public view returns (address _addresses) {
        return landlord;    
    }
     
    function getTenant()public view returns (address) {
        return tenant;   
    }
     
    function getRent() public view returns (uint) {
        return rent;   
    } 
    
    function getContractCreated() public view returns (uint) {
        return createdTimestamp;   
    }
    
    function getContractAddress() public view returns (address) {
        return address(this); 
    }
    
    function getState() public view returns (State) {
        return state; 
    }

    
    
    event agreementConfirmed();

    event paidRent();

    event contractTerminated();

    
    function confirmAgreement() public
    inState(State.Created)      
    required(msg.sender != landlord)    
    {
       emit  agreementConfirmed();
        tenant = msg.sender;
        state = State.Started;
    }

     
    function payRent() public payable
    onlyTenant
    inState(State.Started)
    required(msg.value == rent)
    {
       emit  paidRent();
        address(uint160(landlord)).transfer(msg.value);
        paidrents.push(PaidRent({
        rentid : paidrents.length + 1,
        value : msg.value
        }));
    }
     
    function terminateContract() public
    onlyLandlord
    {
        
       emit contractTerminated();
       address(uint160(landlord)).transfer(address(this).balance);
        state = State.Terminated;
    }
}