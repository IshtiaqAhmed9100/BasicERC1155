// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BasicERC1155 is ERC1155, Ownable {

    uint256 public  A = 0; 
    uint256 public  B = 1; 
    uint256 public  C = 2; 

    constructor() Ownable(msg.sender) ERC1155("ipfs demo") { 
        _mint(msg.sender, A, 1, ""); 
        _mint(msg.sender, B, 2, ""); 
        _mint(msg.sender, C, 3, ""); 
    } 

    function mint(address account, uint256 id, uint256 amount, bytes memory data) public onlyOwner { 
        _mint(account, id, amount, data);
    }

    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data) public onlyOwner { 
        _mintBatch(to, ids, amounts, data);
    } 
}