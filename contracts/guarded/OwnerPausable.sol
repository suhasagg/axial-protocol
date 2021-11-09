// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";

/**
 * @title OwnerPausable
 * @dev An ownable contract allows the owner to pause and unpause the
 * contract without a delay.
 * @dev Only methods using the provided modifiers will be paused.
 */
contract OwnerPausable is Ownable, Pausable {
    /**
     * @dev Pause the contract. Revert if already paused.
     */
    function pause() external onlyOwner {
        Pausable._pause();
    }

    /**
     * @dev Unpause the contract. Revert if already unpaused.
     */
    function unpause() external onlyOwner {
        Pausable._unpause();
    }
}