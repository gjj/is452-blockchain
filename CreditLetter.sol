contract CreditLetter {
    // Issuer of the Letter of Credit
    address private issuer;

    // Current holder of the Letter of Credit (can be transferrable)
    address private holder;

    // Acceptor of the Credit
    address private acceptor;

    // Issuance timestamp
    uint256 private issuanceTime;

    // Interest rate
    uint256 private interestRate;

    // Credit
    uint256 private credit;

    bool private statusApproved = false;
    bool private statusPaid = false;

    // Flags for status
    uint256 private STATUS_APPROVED_ID = 0;
    uint256 private STATUS_PAID_ID = 1;
    event StatusChanged(uint256 id, bool latestStatus, uint256 timestamp);

    // Change in holder
    address[] private holderChangeHistory;
    uint256[] private holderChangeTimestamps;
    event HolderChanged(address from, address to, uint256 timestamp);

    // Related to change of credit
    event CreditChanged(uint256 original, uint256 amount, uint256 timestamp);
}
