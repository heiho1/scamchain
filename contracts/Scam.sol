//SPDX-License-Identifier: Unlicense
pragma solidity >=0.7.0 <=0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

import "hardhat/console.sol";

contract Scam is ERC721("Scam", "SCAM"), ERC721Enumerable {
    function _beforeTokenTransfer(address from, address to, uint256 tokenId) override(ERC721, ERC721Enumerable) internal {
      console.log("_beforeTokenTransfer '%s' to '%s'", from, to);
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721Enumerable) returns (bool) {
        return ERC721.supportsInterface(interfaceId);
    }
}
