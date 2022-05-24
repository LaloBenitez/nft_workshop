// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract miniTaller is ERC721 {
  uint counter;

  constructor() ERC721("miniTaller", "MNTN") {
    counter = 0;
  }

  function __mintNFT() public {
    counter++;
    _safeMint(msg.sender, counter);
  }

  function __getBalanceTotalNFTS() public view returns (uint) {
    return counter;
  }

  function __getBalanceOf() public view returns (uint) {
    return balanceOf(msg.sender);
  }

  function __getOwner(uint id) public view returns (address) {
    return ownerOf(id);
  }

  function __transferTo(address to, uint id) public {
    _transfer(msg.sender, to, id);
  }

  function __getContractAddress() public view returns (address) {
    return address(this);
  }
  
}
