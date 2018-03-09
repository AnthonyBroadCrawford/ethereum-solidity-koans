pragma solidity ^0.4.17;

contract Events {

  //current total donations
  uint public _totalDonations;

  //event for anyone to be informed when a donation is received
  event DonationReceived(address bidder, uint donation);

  function Donate(address bidder, uint donation) public {
    _totalDonations += donation;

    //broadcast the donation for any listeners
    DonationReceived(bidder, donation);
  }
}
