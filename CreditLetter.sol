contract CreditLetter {
    // Issuer of the Letter of Credit
    address private issuer;
    
    // Current holder of the Letter of Credit (can be diff from issuer)
    address private holder;
    
    // Acceptor of the Credit
    address private acceptor;
    
    // Issuance timestamp
    uint256 private issuanceTime;
    
    // Interest rate
    uint256 private interestRate;
    
    // Credit
    uint256 private credit;
}
